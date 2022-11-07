<main id="main" class="main-site">

<div class="container">

    <div class="wrap-breadcrumb">
        <ul>
            <li class="item-link"><a href="/" class="link">home</a></li>
            <li class="item-link"><span>KERANJANG</span></li>
        </ul>
    </div>
    <div class=" main-content-area">
        @if(Cart::instance('cart')->count() > 0)
        <div class="wrap-iten-in-cart">
            @if(Session::has('success_message'))
                <div class="alert alert-success">
                    <strong>Sukses</strong> {{Session::get('success_message')}}
                </div>
            @endif
            @if(Cart::instance('cart')->count() > 0)
            <h3 class="box-title">Products Name</h3>
            <ul class="products-cart">
                @foreach(Cart::instance('cart')->content() as $item)                
                <li class="pr-cart-item">
                    <div class="product-image">
                        <figure><img src="{{ ('assets/images/products') }}/{{$item->model->image}}" alt="{{$item->model->name}}"></figure>
                    </div>
                    <div class="product-name">
                        <a class="link-to-product" href="{{route('product.details', ['slug'=>$item->model->slug])}}">{{$item->model->name}}</a>
                    </div>
                    <div class="price-field produtc-price"><p class="price">Rp.{{$item->model->regular_price}}</p></div>
                    <div class="quantity">
                        <div class="quantity-input">
                            <input type="text" name="product-quatity" value="{{$item->qty}}" data-max="120" pattern="[0-9]*" >									
                            <a class="btn btn-increase" href="#" wire:click.prevent="increaseQuantity('{{$item->rowId}}')"></a>
                            <a class="btn btn-reduce" href="#" wire:click.prevent="decreaseQuantity('{{$item->rowId}}')"></a>
                        </div>
                    </div>
                    <div class="price-field sub-total"><p class="price">Rp.{{$item->subtotal}}</p></div>
                    <div class="delete">
                        <a href="#" wire:click.prevent="destroy('{{$item->rowId}}')" class="btn btn-delete" title="">
                            <span>Delete from your cart</span>
                            <i class="fa fa-times-circle" aria-hidden="true"></i>
                        </a>
                    </div>
                </li> 
                @endforeach               												
            </ul>
            @else
                <p>Tidak ada item di Keranjang</p>
            @endif
        </div>

        <div class="summary">
            <div class="order-summary">
                <h4 class="title-box">Ringkasan Pesanan</h4>
                <p class="summary-info"><span class="title">Sub Total</span><b class="index">Rp.{{Cart::instance('cart')->subtotal()}}</b></p>
                <p class="summary-info"><span class="title">Pajak</span><b class="index">Rp.{{Cart::instance('cart')->tax()}}</b></p>
                <p class="summary-info"><span class="title">Pengiriman</span><b class="index">Gratis</b></p>
                <p class="summary-info total-info "><span class="title">Total</span><b class="index">Rp.{{Cart::instance('cart')->total()}}</b></p>
            </div>
            <div class="update-clear">
                <a class="btn btn-clear" href="#" wire:click.prevent="destroyAll()">Bersihkan Keranjang</a>
                <a class="btn btn-update" href="#">Update Shopping Cart</a>
            </div>
        </div>
        @else
            <div class="text-center" style="padding:30px 0;">
                <h1>Keranjang Kamu Kosong</h1>
                <p>Tambahkan Item</p>
                <a href="/shop" class="btn btn-success">Belanja Sekarang</a>
            </div>
        @endif    
    </div><!--end main content area-->
</div><!--end container-->

</main>
<!--main area-->