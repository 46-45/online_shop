<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Http\Livewire\Order;

class ThankyouComponnent extends Component
{
    public function render()
    {
        return view('livewire.thankyou-componnent')->layout('layouts.base');
    }
}
