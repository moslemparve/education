<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\File;

// use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Support\Facades\Redirect;
use App\Models\Slider;
use Illuminate\Support\Facades\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Validator;

class SliderController extends Controller
{
    public function index()
    {
        return Inertia::render('Slider/Index', [
            'filters' => Request::all('search'),
            'sliders' => Slider::filter(Request::only('search'))
                ->paginate(10),
        ]);
    }
    public function create(): Response
    {
        return Inertia::render('Slider/Create');
    }

    public function store()
    {
        $validatedData = Request::validate([
            'title' => ['required'],
            'description' => ['required'],
            'image' => ['required', 'image', 'max:2048'],
        ]);

        if (Request::hasFile('image')) {
            $image = Request::file('image');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/sliders');


            $image->move($imagePath, $imageName);

            $validatedData['image'] = 'uploads/images/sliders/' . $imageName;
        }

        Slider::create($validatedData);

        return Redirect::route('admin.sliders.index')->with('success', 'Slider created successfully.');
    }

    public function edit(Slider $slider): Response
    {
        return Inertia::render('Slider/Edit', [
            'slider' => [
                'id' => $slider->id,
                'title' => $slider->title,
                'description' => $slider->description,
                'image_show' => $slider->image,
            ],
        ]);
    }

    public function update(Slider $slider): RedirectResponse
    {
        // dd(Request::all());
        $validatedData = Request::validate([
            'title' => ['required'],
            'description' => ['required'],
            'image' => ['nullable', 'image', 'mimes:jpg,png,jpeg'],
        ]);
        $validatedData['image'] = $slider->image;
        if (Request::hasFile('image')) {

            if (!empty($slider->image) && File::exists($slider->image)) {
                File::delete($slider->image);
            }
            $image = Request::file('image');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/sliders');


            $image->move($imagePath, $imageName);

            $validatedData['image'] = 'uploads/images/sliders/' . $imageName;
        }

        $slider->update($validatedData);

        return Redirect::back()->with('success', 'Slider updated.');
    }
    public function destroy(Slider $slider): RedirectResponse
    {if (!empty($slider->image)) {
        File::delete($slider->image);
    }

        $slider->delete();

        return Redirect::route('admin.sliders.index')->with('success', 'Slider deleted successfully.');

    }
}
