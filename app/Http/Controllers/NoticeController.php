<?php

namespace App\Http\Controllers;

use App\Models\Notice;
// use Illuminate\Http\Request;
use Inertia\Inertia;
use Illuminate\Support\Facades\Request;
use Illuminate\Http\RedirectResponse;

use Inertia\Response;
use Illuminate\Support\Facades\Redirect;

class NoticeController extends Controller
{
    public function index(){
        return Inertia::render('Notice/Index', [
            'filters' => Request::all('search'),
            'notices' => Notice::filter(Request::only('search'))
                ->paginate(10),
        ]);
    }

    public function create(): Response
    {
        return Inertia::render('Notice/Create');
    }
    public function store(){
        Notice::create(
            Request::validate([
                'title' => ['required'],
                'description' => ['required'],
                'date' => ['required'],
                'time' => ['required',],
                
            ])
        );

        return Redirect::route('admin.notices.index')->with('success', 'Notice created successfully.');
    }

    public function edit(Notice $notice): Response
    {
        return Inertia::render('Notice/Edit', [
            'notice' => [
                'id' => $notice->id,
                'title' => $notice->title,
                'description' => $notice->description,
                'date' => $notice->date,
                'time' => $notice->time,
                
            ],
        ]);
    }

    public function update(Notice $notice): RedirectResponse
    {
        $notice->update(
                Request::validate([
                    'title' => ['required'],
                    'description' => ['required'],
                    'date' => ['required'],
                    'time' => ['required',],
                    
                ])
        );

        return Redirect::back()->with('success', 'Notice updated.');
    }

    public function destroy(Notice $notice): RedirectResponse
    {
        $notice->delete();

        return Redirect::route('admin.notices.index')->with('success', 'Notice deleted successfully.');

    }
}
