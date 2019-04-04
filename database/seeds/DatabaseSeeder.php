<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory(App\User::class, 20)->create();
        factory(App\Models\Admin::class, 20)->create();
        factory(App\Models\Category::class, 20)->create();
        factory(App\Models\Post::class, 20)->create();
        factory(App\Models\Tag::class, 20)->create();
    }
}
