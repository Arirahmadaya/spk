<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'nidn' => $this->faker->randomNumber(5, true),
            'alamat' => $this->faker->address(),
            'ipk' => $this->faker->randomFloat(2, 3.5, 4),

            'lulusan' => $this->faker->randomElement(['Swasta / S2', 'Swasta / S3','Negeri / S3','Negeri / S3' ]),
            'pengalaman_mengajar' => $this->faker->numberBetween(1, 35),
            'foto' => 'lord.jpg'
        ];
    }
}
