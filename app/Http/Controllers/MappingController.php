<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\File;

// use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Support\Facades\Redirect;
use App\Models\Mapping;
use Illuminate\Support\Facades\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Validator;

class MappingController extends Controller
{
    public function index()
    {
        return Inertia::render('Mapping/Index', [
            'filters' => Request::all('search'),
            'mappings' => Mapping::filter(Request::only('search'))
                ->paginate(10),
        ]);
    }
    public function create(): Response
    {
        return Inertia::render('Mapping/Create');
    }

    public function store()
    {
        $validatedData = Request::validate([
            'name' => ['required'],
            'address' => ['required'],
            'lat' => ['required'],
            'long' => ['required'],
            'principle' => ['required'],
            'no_of_student' => ['required'],
            'contact' => ['required'],
            'district' => ['required'],
            'image' => ['required', 'image', 'max:2048'],
        ]);

        if (Request::hasFile('image')) {
            $image = Request::file('image');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/mappings');


            $image->move($imagePath, $imageName);

            $validatedData['image'] = 'uploads/images/mappings/' . $imageName;
        }

        Mapping::create($validatedData);

        return Redirect::route('admin.mappings.index')->with('success', 'Mappings created successfully.');
    }

    public function edit(Mapping $mapping): Response
    {
        // dd($mapping);
        return Inertia::render('Mapping/Edit', [
            'mapping' => [
                'id' => $mapping->id,
                'name' => $mapping->name,
                'address' => $mapping->address,
                'lat' => $mapping->lat,
                'long' => $mapping->long,
                'principle' => $mapping->principle,
                'no_of_student' => $mapping->no_of_student,
                'contact' => $mapping->contact,
                'district' => $mapping->district,
                'image_show' => $mapping->image,
            ],
        ]);
    }

    public function update(Mapping $mapping): RedirectResponse
    {
        // dd(Request::all());
        $validatedData = Request::validate([
            'name' => ['required'],
            'address' => ['required'],
            'lat' => ['required'],
            'long' => ['required'],
            'principle' => ['required'],
            'no_of_student' => ['required'],
            'contact' => ['required'],
            'district' => ['required'],
            'image' => ['nullable', 'image', 'mimes:jpg,png,jpeg'],
        ]);
        $validatedData['image'] = $mapping->image;
        if (Request::hasFile('image')) {

            if (!empty($mapping->image) && File::exists($mapping->image)) {
                File::delete($mapping->image);
            }
            $image = Request::file('image');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/mappings');


            $image->move($imagePath, $imageName);

            $validatedData['image'] = 'uploads/images/mappings/' . $imageName;
        }

        $mapping->update($validatedData);

        return Redirect::back()->with('success', 'Mapping updated.');
    }
    public function destroy(Mapping $mapping): RedirectResponse
    {if (!empty($mapping->image)) {
        File::delete($mapping->image);
    }

        $mapping->delete();

        return Redirect::route('admin.mappings.index')->with('success', 'Mapping deleted successfully.');

    }
}
