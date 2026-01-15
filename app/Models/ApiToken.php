<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ApiToken extends Model
{
    protected $table = 'api_tokens';

    protected $fillable = [
        'user_id',
        'token',
        'expires_at',
    ];

    protected $hidden = [
        'token',
    ];

    protected $casts = [
        'expires_at' => 'datetime',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Génère un token unique
     */
    public static function generateToken()
    {
        return hash('sha256', \Illuminate\Support\Str::random(60));
    }
}
