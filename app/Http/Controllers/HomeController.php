<?php

namespace App\Http\Controllers;
use App\Models\Mapping;
use App\Models\Message;
use App\Models\News;
use App\Models\Project;
use App\Models\Setting;
use App\Models\Slider;
use Carbon\Carbon;
use App\Models\Event;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request as Req;
use Inertia\Inertia;

class HomeController extends Controller
{
    public function index()
    {
       $homeData['messages'] = Message::latest()->get();
        $events = Event::latest()->get();
        $events->transform(function ($event, $key) {
            $event->month = Carbon::parse($event->date)->format('l') ;
            $event->event_date = Carbon::parse($event->date)->format('j') ;
            return $event;
        });
        $homeData['events'] =  $events;
        $mappings = Mapping::latest()->get();
        $mappings->transform(function ($mapping, $key) {
            $mapping->position = ['lat'=>(float)$mapping->lat,'lng' => (float) $mapping->long] ;
            return $mapping;
        });
        $homeData['mapping'] =$mappings;
        $news = News::latest()->get();
        $news->transform(function ($news, $key) {
            $news->date =  Carbon::parse($news->date)->toFormattedDateString() ;
            return $news;
        });
        // dd($news);
        $homeData['news'] = $news;
        $homeData['sliders'] = Slider::latest()->get();
        return Inertia::render('Index',[
            'data'=> $homeData
        ]);

    }

    public function about(){
        return Inertia::render('About');

    }

    public function event($id){
        $event = Event::find($id);
        $event->event_date =  Carbon::parse($event->date)->toFormattedDateString() ;
        $events = Event::latest()->get();
        $events->transform(function ($event, $key) {
            $event->month = Carbon::parse($event->date)->format('l') ;
            $event->event_date = Carbon::parse($event->date)->format('j') ;
            return $event;
        });
        return Inertia::render('Event',[
            'event' => $event,
            'events' =>$events
        ]);

    }

    public function message($id){
        $message = Message::find($id);
        return Inertia::render('Message',[
            'message' => $message
        ]);

    }

    public function school(){
        $mappings = Mapping::filter(Req::all('search'))->latest()->get();
        return Inertia::render( 'Schools',[
            'schools' => $mappings
        ]);
    }

    public function events(){
        $events = Event::latest()->get();
        return Inertia::render( 'Events',[
            'events' => $events
        ]);
    }

    public function projects(){
        $projects = Project::latest()->get();
        $projects->transform(function ($project, $key) {
            $project->day = $project->created_at->format('d') ;
            $project->event_month = $project->created_at->format('M') ;
            $project->event_year = $project->created_at->format('Y') ;
            return $project;
        });
        return Inertia::render( 'Projects',[
            'projects' => $projects
        ]);
    }

    public function project($id){
    $project = Project::find($id);
    return Inertia::render( 'Project',[
        'project' => $project
    ]);
    }
}
