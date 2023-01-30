<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Criteria;
use Illuminate\Support\Str;
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
        // \App\Models\User::factory(10)->create();

        \App\Models\Student::factory(20)->create();

        User::create([
            'name' => 'Petugas',
            'username' => 'admin',
            'email' => 'admin@google.com',
            'email_verified_at' => now(),
            'password' => '$2y$10$9a7b78YWmpUO1yS3Q2CeMOuWvemjp4Q13q52ykg5alI/f9NrICqB.', // password
            'remember_token' => Str::random(10),
        ]);

        Criteria::create([
            'nama_kriteria' => 'IPK',
            'bobot' => 3,
            'is_beneficial' => true
        ]);
        Criteria::create([
            'nama_kriteria' => 'LULUSAN',
            'bobot' => 3,
            'is_beneficial' => true
        ]);
        Criteria::create([
            'nama_kriteria' => 'Pendapatan orang tua',
            'bobot' => 2,
            'is_beneficial' => false
        ]);
        Criteria::create([
            'nama_kriteria' => 'Pengalaman mengajar',
            'bobot' => 2,
            'is_beneficial' => true
        ]);
    }
}
