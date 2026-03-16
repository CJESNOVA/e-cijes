<?php

namespace App\Services;

use GuzzleHttp\Client;

class SupabaseStorageService
{
    protected Client $client;
    protected string $url;
    protected string $bucket;
    protected string $key;

    public function __construct()
    {
        $this->url = rtrim(env('SUPABASE_URL'), '/');
        $this->bucket = env('SUPABASE_BUCKET');
        $this->key = env('SUPABASE_SERVICE_ROLE_KEY');

        $this->client = new Client([
            'base_uri' => $this->url,
        ]);
    }

    public function upload(string $path, string $content, string $mimeType): array
    {
        $response = $this->client->post(
            "/storage/v1/object/{$this->bucket}/{$path}",
            [
                'headers' => [
                    'Authorization' => 'Bearer ' . $this->key,
                    'apikey'        => $this->key,
                    'Content-Type'  => $mimeType,
                ],
                // 🔥 C’EST ICI LA CORRECTION
                'body' => $content,
            ]
        );

        return json_decode($response->getBody()->getContents(), true);
    }
}
