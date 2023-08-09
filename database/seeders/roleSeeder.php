<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Role; // Assure-toi que le chemin vers le modèle Role est correct

class roleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create([
            'libele' => 'Administrateur'
        ]);  
         
        Role::create([
            'libele' => 'gerant'
        ]); 
    }
}
