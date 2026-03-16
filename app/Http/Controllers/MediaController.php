<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Http;
use Intervention\Image\Facades\Image; // ← IMPORTANT

class MediaController extends Controller
{
    public function resize($width, $height, $path)
    {
        $path = ltrim($path, '/');
        $url = rtrim(config('services.supabase.bucket_url'), '/') . '/' . $path;

        $response = Http::get($url);

        if (! $response->ok()) {
            abort(404);
        }

        $image = Image::make($response->body())
            ->fit($width, $height, function ($c) {
                $c->upsize();
            });

        return response($image->encode('jpg', 85))
            ->header('Content-Type', 'image/jpeg');
    }
}
