<div>
    <div class="container" style="padding: 30px 0">
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Profil
                </div>
                <div class="panel-body">
                    <div class="col-md-4">
                        @if($user->profile->image)
                            <img src="{{asset('assets/images/profile')}}/{{$user->profile->image}}" width="100%" />
                        @else
                            <img src="{{asset('assets/images/profile/default.png')}}" width="100%" />
                        @endif
                    </div>
                    <div class="col-md-8">
                        <p><b>Nama: </b>{{$user->name}}</p>
                        <p><b>Email: </b>{{$user->email}}</p>
                        <p><b>Nomor HP: </b>{{$user->profile->mobile}}</p>
                        <hr>
                        <p><b>Alamat 1: </b>{{$user->profile->line1}}</p>
                        <p><b>Alamat 2: </b>{{$user->profile->line2}}</p>
                        <p><b>Kota: </b>{{$user->profile->city}}</p>
                        <p><b>Provinsi: </b>{{$user->profile->province}}</p>
                        <p><b>Negara: </b>{{$user->profile->country}}</p>
                        <p><b>Kode POS: </b>{{$user->profile->zipcode}}</p>    
                        <a href="{{route('user.editprofile')}}" class="btn btn-info pull-right">Update Profil</a>                                         
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>