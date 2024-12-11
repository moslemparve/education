<?php

namespace App\Http\Controllers;

use App\Models\Message;
// use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\File;

use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\RedirectResponse;


class MessageController extends Controller
{
    public function index()
    {
        return Inertia::render('Messages/Index', [
            'filters' => Request::all('search'),
            'messages' => Message::filter(Request::only('search'))
                ->paginate(10),
        ]);
    }
    public function create(): Response
    {
        return Inertia::render('Messages/Create');
    }

    public function store()
    {
        $validatedData = Request::validate([
            'from' => ['required'],
            'designation' => ['required'],
            'detail' => ['required'],
            'photo' => ['required', 'image', 'max:2048'],
        ]);

        if (Request::hasFile('photo')) {
            $image = Request::file('photo');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/messages');


            $image->move($imagePath, $imageName);

            $validatedData['photo'] = 'uploads/images/messages/' . $imageName;
        }

        Message::create($validatedData);

        return Redirect::route('admin.messages.index')->with('success', 'Message created successfully.');
    }

    public function edit(Message $message): Response
    {
        // dd($message);
        return Inertia::render('Messages/Edit', [
            'message' => [
                'id' => $message->id,
                'from' => $message->from,
                'designation' => $message->designation,
                'detail' => $message->detail,
                'image_show' => $message->photo,
            ],
        ]);
    }

    public function update(Message $message): RedirectResponse
    {
        // dd(Request::all());
        $validatedData = Request::validate([
            'from' => ['required'],
            'designation' => ['required'],
            'detail' => ['required'],
            'photo' => ['nullable', 'image', 'mimes:jpg,png,jpeg'],
        ]);
        $validatedData['photo'] = $message->photo;
        // dd(454);
        if (Request::hasFile('photo')) {
            if (!empty($message->photo) && File::exists($message->photo)) {
                File::delete($message->photo);
            }
            $image = Request::file('photo');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/messages');


            $image->move($imagePath, $imageName);

            $validatedData['photo'] = 'uploads/images/messages/' . $imageName;
        }

        $message->update($validatedData);

        return Redirect::back()->with('success', 'Message updated.');
    }
    public function destroy(Message $message): RedirectResponse
    {
        if (!empty($message->photo)) {
            File::delete($message->photo);
        }
        $message->delete();

        return Redirect::route('admin.messages.index')->with('success', 'Message deleted successfully.');

    }
}
