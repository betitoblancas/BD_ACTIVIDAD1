<?php

namespace Database\Factories;

use App\Models\Libros;
use Illuminate\Database\Eloquent\Factories\Factory;

class librosFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Libros::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'titulo' => $this->faker->name,
            'autor' => $this->faker->name,
            'editorial' => $this->faker->name,
            'fecha_publicacion' => $this->faker->date(),
            'num_paginas' => $this->faker->phoneNumber()
        ];
    }
}
