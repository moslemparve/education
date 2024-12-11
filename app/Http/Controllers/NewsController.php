<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\File;

// use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;
use Illuminate\Support\Facades\Redirect;
use App\Models\News;
use Illuminate\Support\Facades\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Validator;

class NewsController extends Controller
{
    public function index()
    {
        return Inertia::render('News/Index', [
            'filters' => Request::all('search'),
            'news' => News::filter(Request::only('search'))
                ->paginate(10),
        ]);
    }
    public function create(): Response
    {
        return Inertia::render('News/Create');
    }

    public function store()
    {
        $validatedData = Request::validate([
            'title' => ['required'],
            'details' => ['required'],
            'image' => ['required', 'image', 'max:2048'],
        ]);

        if (Request::hasFile('image')) {
            $image = Request::file('image');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/news');


            $image->move($imagePath, $imageName);

            $validatedData['image'] = 'uploads/images/news/' . $imageName;
        }

        News::create($validatedData);

        return Redirect::route('admin.news.index')->with('success', 'News created successfully.');
    }

    public function edit(News $news): Response
    {
        return Inertia::render('News/Edit', [
            'news' => [
                'id' => $news->id,
                'title' => $news->title,
                'details' => $news->details,
                'image_show' => $news->image,
            ],
        ]);
    }

    public function update(News $news): RedirectResponse
    {
        // dd(Request::all());
        $validatedData = Request::validate([
            'title' => ['required'],
            'details' => ['required'],
            'image' => ['nullable', 'image', 'mimes:jpg,png,jpeg'],
        ]);
        $validatedData['image'] = $news->image;
        if (Request::hasFile('image')) {

            if (!empty($news->image) && File::exists($news->image)) {
                File::delete($news->image);
            }
            $image = Request::file('image');

            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = public_path('uploads/images/news');


            $image->move($imagePath, $imageName);

            $validatedData['image'] = 'uploads/images/news/' . $imageName;
        }

        $news->update($validatedData);

        return Redirect::back()->with('success', 'News updated.');
    }
    public function destroy(News $news): RedirectResponse
    {

        $news->delete();

        return Redirect::route('admin.news.index')->with('success', 'News deleted successfully.');

    }
}
