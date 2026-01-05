<?php

use Illuminate\Support\Facades\URL;

if (! function_exists('media_resize')) {
    
    function media_resize(string $path, int $w, int $h): string
{
    $path = ltrim($path, '/');

    return url("media/resize/{$w}/{$h}/{$path}");
}
}
