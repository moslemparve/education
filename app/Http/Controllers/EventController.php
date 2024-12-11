<?php

namespace App\Http\Controllers;

use App\Models\Event;
// use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\File;

use Illuminate\Support\Facades\Request;
use Illuminate\Http\RedirectResponse;

class EventController extends Controller
{
    public function index(){
        return Inertia::render('Events/Index', [
            'filters' => Request::all('search'),
            'events' => Event::filter(Request::only('search'))
                ->paginate(10),
        ]);
    }
    public function create(): Response
    {
        return Inertia::render('Events/Create');
    }

    public function store(){
      
        $validatedData = Request::validate([
                'title' => ['required'],
                'description' => ['required'],
                'location' => ['required'],
                'date' => ['required'],
                'time' => ['required',],
                 'image' => ['required', 'image', 'max:2048'],
        ]);

        if (Request::hasFile('image')) {
            $image = Request::file('image');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/events');


            $image->move($imagePath, $imageName);

            $validatedData['image'] = 'uploads/images/events/' . $imageName;
        }

        Event::create($validatedData);

        return Redirect::route('admin.events.index')->with('success', 'Events created successfully.');
    }
    public function edit(Event $event): Response
    {
        return Inertia::render('Events/Edit', [
            'event' => [
                'id' => $event->id,
                'title' => $event->title,
                'description' => $event->description,
                'location' => $event->location,
                'date' => $event->date,
                'time' => $event->time,
                'image_show' => $event->image,
                
            ],
        ]);
    }

    public function update(Event $event): RedirectResponse
    {
        $validatedData = Request::validate([
            'title' => ['required'],
            'description' => ['required'],
            'location' => ['required'],
            'date' => ['required'],
            'time' => ['required',],
            'image' => ['nullable', 'image', 'mimes:jpg,png,jpeg'],
        ]);
        $validatedData['image'] = $event->image;
        if (Request::hasFile('image')) {

            if (!empty($event->image) && File::exists($event->image)) {
                File::delete($event->image);
            }
            $image = Request::file('image');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/events');


            $image->move($imagePath, $imageName);

            $validatedData['image'] = 'uploads/images/events/' . $imageName;
        }

        $event->update($validatedData);

        return Redirect::back()->with('success', 'Event updated.');
    }

    public function destroy(Event $event): RedirectResponse
    {
        $event->delete();

        return Redirect::route('admin.events.index')->with('success', 'Events deleted successfully.');

    }
}
