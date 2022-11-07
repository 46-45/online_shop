<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Setting;

class AdminSettingComponent extends Component
{
    public $email;
    public $phone;
    public $address;
    public $facebook;
    public $instagram;
    public $whatsapp;

    public function mount()
    {
        $setting = Setting::find(1);
        if($setting)
        {
            $this->email = $setting->email;
            $this->phone = $setting->phone;
            $this->address = $setting->address;
            $this->facebook = $setting->facebook;
            $this->instagram = $setting->instagram;
            $this->whatsapp = $setting->whatsapp;
        }
    }

    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'email' => 'required|email',
            'phone' => 'required',
            'address' => 'required',
            'facebook' => 'required',
            'instagram' => 'required',
            'whatsapp' => 'required'
        ]);
    }

    public function saveSettings()
    {
        $this->validate([
            'email' => 'required|email',
            'phone' => 'required',
            'address' => 'required',
            'facebook' => 'required',
            'instagram' => 'required',
            'whatsapp' => 'required'
        ]);

        $setting = Setting::find(1);
        if(!$setting)
        {
            $setting = new Setting();
        }
        $setting->email = $this->email;
        $setting->phone = $this->phone;
        $setting->address = $this->address;
        $setting->facebook = $this->facebook;
        $setting->instagram = $this->instagram;
        $setting->whatsapp = $this->whatsapp;
        $setting->save();
        session()->flash('message','Data berhasil diubah!');
    }

    public function render()
    {
        return view('livewire.admin.admin-setting-component')->layout('layouts.base');
    }
}
