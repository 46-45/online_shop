<x-guest-layout>
	<main id="main" class="main-site left-sidebar">

<div class="container">

    <div class="wrap-breadcrumb">
        <ul>
            <li class="item-link"><a href="/" class="link">home</a></li>
            <li class="item-link"><span>Register</span></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 col-md-offset-3">							
            <div class=" main-content-area">
                <div class="wrap-login-item ">
                    <div class="register-form form-item ">
                    <x-jet-validation-errors class="mb-4" />
                        <form class="form-stl" action="{{route('register')}}" name="frm-login" method="POST" >
                            @csrf
                            <fieldset class="wrap-title">
                                <h3 class="form-title">Buat Akun</h3>
                                <h4 class="form-subtitle">Informasi Pribadi</h4>
                            </fieldset>									
                            <fieldset class="wrap-input">
                                <label for="frm-reg-lname">Nama</label>
                                <input type="text" id="frm-reg-lname" name="name" placeholder="Nama Anda" :value="name" required autofocus autocomplete="name">
                            </fieldset>
                            <fieldset class="wrap-input">
                                <label for="frm-reg-email">Alamat E-mail</label>
                                <input type="email" id="frm-reg-email" name="email" placeholder="Alamat E-mail" :value="email">
                            </fieldset>                            
                            <fieldset class="wrap-title">
                                <h3 class="form-title">Informasi Login</h3>
                            </fieldset>
                            <fieldset class="wrap-input item-width-in-half left-item ">
                                <label for="frm-reg-pass">Password </label>
                                <input type="password" id="frm-reg-pass" name="password" placeholder="Password" required autocomplete="new-password">
                            </fieldset>
                            <fieldset class="wrap-input item-width-in-half ">
                                <label for="frm-reg-cfpass">Konfirmasi Password </label>
                                <input type="password" id="frm-reg-cfpass" name="password_confirmation" placeholder="Konfirmasi Password" required autocomplete="new-password">
                            </fieldset>
                            <input type="submit" class="btn btn-sign" value="Daftar" name="register">
                        </form>
                    </div>											
                </div>
            </div><!--end main products area-->		
        </div>
    </div><!--end row-->

</div><!--end container-->

</main>
</x-guest-layout>