<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
use App\Models\Career;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Http\RedirectResponse;

class CareerController extends Controller
{
    public function index(){
        return Inertia::render('Career/Index', [
            'filters' => Request::all('search'),
            'careers' => Career::filter(Request::only('search'))
                ->paginate(10),
        ]);
    }

    public function create(): Response
    {
        return Inertia::render('Career/Create');
    }

    public function store(){
        Career::create(
            Request::validate([
            'title' => ['required'],
            'description' => ['required'],
            'position' => ['required'],
            'requirements' => ['required'],
            'location' => ['required',], 
            'duration' => ['required'],
            'status'  => ['nullable'],
            ])
        );

        return Redirect::route('admin.careers.index')->with('success', 'Career created successfully.');
    }

    public function edit(Career $career): Response
    {
        return Inertia::render('Career/Edit', [
            'career' => [
                'id' => $career->id,
                'title' => $career->title,
                'description' => $career->description,
                'position' => $career->position,
                'requirements' => $career->requirements,
                'location' => $career->location,
                'duration' => $career->duration,
                'status' => $career->status == 1 ? true : false
            ],
        ]);
    }

    public function update(Career $career): RedirectResponse
    {
        $career->update(
            Request::validate([
            'title' => ['required'],
            'description' => ['required'],
            'position' => ['required'],
            'requirements' => ['required'],
            'location' => ['required',], 
            'duration' => ['required'],
            'status'  => ['nullable'],
            ])
        );

        return Redirect::back()->with('success', 'Career updated.');
    }

    public function destroy(Career $career): RedirectResponse
    {
        $career->delete();

        return Redirect::route('admin.careers.index')->with('success', 'Career deleted successfully.');

    }
}
