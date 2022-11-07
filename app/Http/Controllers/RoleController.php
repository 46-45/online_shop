<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class RoleController extends Controller
{
    public function edtData(Request $request){
        $user = User::findOrFail($request->id);
        $user->utype = $request->role;
        $user->update();
        return redirect()->back()->with('message','Role telah berhasil diubah!');
    }
}
