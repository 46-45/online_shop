<div>
    <main id="main" class="main-site left-sidebar">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="/" class="link">home</a></li>
					<li class="item-link"><span>Kontak</span></li>
				</ul>
			</div>
			<div class="row">
				<div class=" main-content-area">
					<div class="wrap-contacts ">
						<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
							<div class="contact-box contact-form">
								<h2 class="box-title">Tinggalkan Pesan</h2>
                                @if(Session::has('message'))
                                    <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
								<form name="frm-contact" wire:submit.prevent="sendMessage">

									<label for="name">Nama<span>*</span></label>
									<input type="text" value="" id="name" name="name" wire:model="name" >
                                    @error('name') <p class="text-danger">{{$message}}</p> @enderror

									<label for="email">Email<span>*</span></label>
									<input type="text" value="" id="email" name="email" wire:model="email"  >
                                    @error('email') <p class="text-danger">{{$message}}</p> @enderror

									<label for="phone">Nomor Telepon</label>
									<input type="text" value="" id="phone" name="phone" wire:model="phone" >
                                    @error('phone') <p class="text-danger">{{$message}}</p> @enderror

									<label for="comment">Pesan</label>
									<textarea name="comment" id="comment" wire:model="comment" ></textarea>
                                    @error('comment') <p class="text-danger">{{$message}}</p> @enderror

									<input type="submit" name="ok" value="Kirim" >
									
								</form>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
							<div class="contact-box contact-info">
								<div class="wrap-map">									
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63777.4089092601!2d99.08262593125583!3d2.477790987756637!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3031fe8e2ef6d095%3A0xd71413d5ae75786b!2sKec.%20Porsea%2C%20Toba%2C%20Sumatera%20Utara!5e0!3m2!1sid!2sid!4v1652881023746!5m2!1sid!2sid" width="100%" height="320" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
								</div>
								<h2 class="box-title">Detail Kontak</h2>								
								<div class="wrap-icon-box">
									<div class="icon-box-item">
										<i class="fa fa-envelope" aria-hidden="true"></i>
										<div class="right-info">
											<b>Email</b>
											<p>danielsilalahi135@gmail.com</p>
										</div>
									</div>

									<div class="icon-box-item">
										<i class="fa fa-phone" aria-hidden="true"></i>
										<div class="right-info">
											<b>Nomor Telepon</b>
											<p>0813-6210-9160</p>
										</div>
									</div>

									<div class="icon-box-item">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
										<div class="right-info">
											<b>Lokasi</b>
											<p>Sitoluama, Laguboti<br /></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!--end main products area-->

			</div><!--end row-->

		</div><!--end container-->

	</main>
</div>