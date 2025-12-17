<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::updateOrCreate(
            [
                'email' => 'yokamly@gmail.com',
            ],
            [
                'name' => 'ruben',
                'email_verified_at' => null,
                'password' => Hash::make('admin'), // ✅ password = admin
                'remember_token' => 'NkBehxKx7yJqFJyFYFUFRvgXJk1hJHNtH5dJ68PtrNUui2cfM7gOoeUfYpDS',
                'permissions' => json_encode([
                    'platform.systems.roles' => true,
                    'platform.systems.users' => true,
                    'platform.systems.attachment' => true,
                    'platform.index' => true,
                ]),
                //'supabase_user_id' => '370cdafe-1dfc-488b-9271-c6f2bb9d9bd3',
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );


$this->call(PageLibresSeeder::class);
    }
}
