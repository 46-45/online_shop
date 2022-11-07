<?php

namespace App\Http\Livewire\Owner;

use Livewire\Component;
use App\Models\User;    
use Illuminate\Http\Request;

class OwnerCheckComponent extends Component
{
    public $id_user;
    public $user_utype;
    public $utype;

    public function mount($user_id)
    {
        $user = User::where('id',$user_id)->first();
        $this->user_utype = $user->utype;
        $this->id_user = $user->id;
        $this->utype = $user->utype;
        $user_ids =  $this->id_user;
        $user_utypes = $this->utype;
    }   

    public function render()
    {
        return view('livewire.owner.owner-check-component')->layout('layouts.base');
    }
}