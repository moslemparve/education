<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    
    protected $casts = [
        'social_media' => 'array',
        'statistics' => 'array',
        'about' => 'array',
        'mission_vision' => 'array'
    ];

}
