<main id="main" class="main-site">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="#" class="link">home</a></li>
					<li class="item-link"><span>Checkout</span></li>
				</ul>
			</div>
			<div class=" main-content-area">
			<form wire:submit.prevent="placeOrder" onsubmit="$('#processing').show();">
				<div class="row">
					<div class="col-md-12">
					<div class="wrap-address-billing">
					<h3 class="box-title">Alamat Pembayaran</h3>
					<div class="billing-address">
						<p class="row-in-form">
							<label for="fname">Nama Depan<span>*</span></label>
							<input type="text" name="fname" value="" placeholder="Nama depan anda" wire:model="firstname">
							@error('firstname')  <span class="text-danger">{{$message}}</span> @enderror
						</p>
						<p class="row-in-form">
							<label for="lname">Nama Belakang<span>*</span></label>
							<input type="text" name="lname" value="" placeholder="Nama belakang anda" wire:model="lastname">
							@error('lastname')  <span class="text-danger">{{$message}}</span> @enderror
						</p>
						<p class="row-in-form">
							<label for="email">Alamat E-mail:</label>
							<input type="email" name="email" value="" placeholder="E-mail anda" wire:model="email">
							@error('email')  <span class="text-danger">{{$message}}</span> @enderror
						</p>
						<p class="row-in-form">
							<label for="phone">Nomor Telepon<span>*</span></label>
							<input type="number" name="phone" value="" placeholder="12 digit nomor telepon anda" wire:model="mobile">
							@error('mobile')  <span class="text-danger">{{$message}}</span> @enderror
						</p>
						<p class="row-in-form">
							<label for="add">Alamat 1:</label>
							<input type="text" name="add" value="" placeholder="Alamat lengkap" wire:model="line1">
							@error('line1')  <span class="text-danger">{{$message}}</span> @enderror
						</p>
						<p class="row-in-form">
							<label for="add">Alamat 2:</label>
							<input type="text" name="add" value="" placeholder="Alamat lengkap" wire:model="line2">
						</p>
						<p class="row-in-form">
							<label for="country">Negara<span>*</span></label>
							<input type="text" name="country" value="" placeholder="Indonesia" wire:model="country">
							@error('country')  <span class="text-danger">{{$message}}</span> @enderror
						</p>						
						<p class="row-in-form">
							<label for="city">Provinsi<span>*</span></label>
							<input type="text" name="province" value="" placeholder="Provinsi" wire:model="province">
							@error('province')  <span class="text-danger">{{$message}}</span> @enderror
						</p>
						<p class="row-in-form">
							<label for="city">Kota<span>*</span></label>
							<input type="text" name="city" value="" placeholder="Nama Kota" wire:model="city">
							@error('city')  <span class="text-danger">{{$message}}</span> @enderror
						</p>
						<p class="row-in-form">
							<label for="zip-code">Kode POS:</label>
							<input type="number" name="zip-code" value="" placeholder="Kode POS alamat" wire:model="zipcode">
							@error('zipcode')  <span class="text-danger">{{$message}}</span> @enderror
						</p>
						<p class="row-in-form fill-wife">							
							<label class="checkbox-field">
								<input name="different-add" id="different-add" value="1" type="checkbox" wire:model="ship_to_different">
								<span>Kirim ke alamat berbeda</span>
							</label>
						</p>
						</div>
					</div>
				</div>
				@if($ship_to_different)
					<div class="col-md-12">
						<div class="wrap-address-billing">
						<h3 class="box-title">Alamat Pengiriman</h3>
						<div class="billing-address">
							<p class="row-in-form">
								<label for="fname">Nama Depan<span>*</span></label>
								<input type="text" name="fname" value="" placeholder="Nama depan anda" wire:model="s_firstname">
								@error('s_firstname')  <span class="text-danger">{{$message}}</span> @enderror
							</p>
							<p class="row-in-form">
								<label for="lname">Nama Belakang<span>*</span></label>
								<input type="text" name="lname" value="" placeholder="Nama belakang anda" wire:model="s_lastname">
								@error('s_lastname')  <span class="text-danger">{{$message}}</span> @enderror
							</p>
							<p class="row-in-form">
								<label for="email">Alamat E-mail:</label>
								<input type="email" name="email" value="" placeholder="E-mail anda" wire:model="s_email">
								@error('s_email')  <span class="text-danger">{{$message}}</span> @enderror
							</p>
							<p class="row-in-form">
								<label for="phone">Nomor Telepon<span>*</span></label>
								<input type="number" name="phone" value="" placeholder="12 digit nomor telepon anda" wire:model="s_mobile">
								@error('s_mobile')  <span class="text-danger">{{$message}}</span> @enderror
							</p>
							<p class="row-in-form">
								<label for="add">Alamat 1:</label>
								<input type="text" name="add" value="" placeholder="Alamat lengkap" wire:model="s_line1">
								@error('s_line1')  <span class="text-danger">{{$message}}</span> @enderror
							</p>
							<p class="row-in-form">
								<label for="add">Alamat 2:</label>
								<input type="text" name="add" value="" placeholder="Alamat lengkap" wire:model="s_line2">
							</p>
							<p class="row-in-form">
								<label for="country">Negara<span>*</span></label>
								<input type="text" name="country" value="" placeholder="Indonesia" wire:model="s_country">
								@error('s_country')  <span class="text-danger">{{$message}}</span> @enderror
							</p>							
							<p class="row-in-form">
								<label for="city">Provinsi<span>*</span></label>
								<input type="text" name="province" value="" placeholder="Provinsi" wire:model="s_province">
								@error('s_province')  <span class="text-danger">{{$message}}</span> @enderror
							</p>
							<p class="row-in-form">
								<label for="city">Kota<span>*</span></label>
								<input type="text" name="city" value="" placeholder="Nama Kota" wire:model="s_city">
								@error('s_city')  <span class="text-danger">{{$message}}</span> @enderror
							</p>	
							<p class="row-in-form">
								<label for="zip-code">Kode POS:</label>
								<input type="number" name="zip-code" value="" placeholder="Kode POS alamat" wire:model="s_zipcode">
								@error('s_zipcode')  <span class="text-danger">{{$message}}</span> @enderror
							</p>					
							</div>
						</div>
					@endif
				</div>
			</div>
				
				<div class="summary summary-checkout">
					<div class="summary-item payment-method">
						<h4 class="title-box">Metode Pembayaran</h4>
						<p class="summary-info"><span class="title">Cek Pesanan</span></p>
						<p class="summary-info"><span class="title">Bayar Ditempat</span></p>
						<div class="choose-payment-methods">
							<label class="payment-method">
								<input name="payment-method" id="payment-method-bank" value="cod" type="radio" wire:model="paymentmode">
								<span>COD</span>
								<span class="payment-desc">Pesan Sekarang Bayar Ditempat</span>
							</label>							
							@error('paymentmode')  <span class="text-danger">{{$message}}</span> @enderror
						</div>
						@if(Session::has('checkout'))
                        	<p class="summary-info grand-total"><span>Total Keseluruhan</span> <span class="grand-total-price">Rp.{{Session::get('checkout')['total']}}</span></p>                                       
                   	 	@endif  

                    	@if($errors->isEmpty())
							<div wire:ignore id="processing" style="font-size:22px; margin-bottom:20px;padding-left:37px;color:green;display:none;">
								<i class="fa fa-spinner fa-pulse fa-fw"></i>
								<span>Sedang di Proses...</span>
							</div>
                   	 @endif

						@if($errors->isEmpty())
							<div wire:ignore id="processing" style="font-size:22px; margin-bottom:20px;padding-left:37px;color:green;display:none;">
								<i class="fa fa-spinner fa-pulse fa-fw"></i>
								<span>Proses...</span>
							</div>
						@endif

						<button type="submit" class="btn btn-medium">Pesan Sekarang</button> 
						
					</div>
					<div class="summary-item shipping-method">
						<h4 class="title-box f-title">Pengiriman</h4>
						<p class="summary-info"><span class="title">Tarif Tetap</span></p>
						<p class="summary-info"><span class="title">Rp.0</span></p>						
					</div>
				</div>
			</form>

			</div><!--end main content area-->
		</div><!--end container-->

	</main>