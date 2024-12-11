<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
use App\Models\Project;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;

class ProjectController extends Controller
{
    public function index(){
        return Inertia::render('Projects/Index', [
            'filters' => Request::all('search'),
            'projects' => Project::filter(Request::only('search'))
                ->paginate(10),
        ]);
    }

    public function create(): Response
    {
        return Inertia::render('Projects/Create');
    }

    public function store()
    {
        $validatedData = Request::validate([
            'title' => ['required'],
            'description' => ['required'],
            'file' => ['required','mimes:pdf','max:5120'],
        ]);

        if (Request::hasFile('file')) {
            $image = Request::file('file');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/files/projects');


            $image->move($imagePath, $imageName);

            $validatedData['file'] = 'uploads/files/projects/' . $imageName;
        }

        Project::create($validatedData);

        return Redirect::route('admin.projects.index')->with('success', 'Message created successfully.');
    }

    public function edit(Project $project): Response
    {
        return Inertia::render('Projects/Edit', [
            'project' => [
                'id' => $project->id,
                'title' => $project->title,
                'description' => $project->description,
                'date' => $project->date,
                'time' => $project->time,
                
            ],
        ]);
    }

    public function update(Project $project): RedirectResponse
    {
        // dd(Request::all());
        $validatedData = Request::validate([
            'title' => ['required'],
            'description' => ['required'],
            'file' => ['nullable', 'mimes:pdf','max:5120'],
        ]);
        $validatedData['file'] = $project->file;
        if (Request::hasFile('file')) {

            if (!empty($project->file) && File::exists($project->file)) {
                File::delete($project->file);
            }
            $file = Request::file('file');

            $fileName = time() . '.' . $file->getClientOriginalExtension();
            $filePath = public_path('uploads/files/projects');


            $file->move($filePath, $fileName);

            $validatedData['file'] = 'uploads/files/projects/' . $fileName;
        }

        $project->update($validatedData);

        return Redirect::back()->with('success', 'project updated.');
    }

    public function destroy(Project $project): RedirectResponse
    {
        if (!empty($project->file)) {
            File::delete($project->file);
        }
        $project->delete();

        return Redirect::route('admin.projects.index')->with('success', 'project deleted successfully.');

    }
}
