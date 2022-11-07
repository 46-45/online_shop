<?php

namespace App\Http\Livewire\Owner;

use Livewire\Component;
use App\Models\User;
use Livewire\WithPagination;

class OwnerDashboardComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $users = User::paginate(5);
        return view('livewire.owner.owner-dashboard-component',['users'=>$users])->layout('layouts.base');
    }
}
