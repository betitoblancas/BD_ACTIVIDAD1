<?php

namespace Database\Seeders;
use App\Models\Libros;
use Illuminate\Database\Seeder;

class LibrosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*$hw = new Libros;
        $hw->titulo = "las batallas en el desierto";
        $hw->autor = "jose emilio pacheco";
        $hw->editorial = "face";
        $hw->fecha_publicacion = "2004";
        $hw->num_paginas = "107";
        $hw->save();
        $hw2 = new Libros;
        $hw2->titulo = "el cuervo";
        $hw2->autor = "edgar allan poe";
        $hw2->editorial = "aurora";
        $hw2->fecha_publicacion = "1999";
        $hw2->num_paginas = "204";
        $hw2->save();/*/
        Libros::factory(30)->create();
    }
}
