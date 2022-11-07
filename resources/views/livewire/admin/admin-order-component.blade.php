<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block !important;
        }
        .btn{
            line-height: 50%;
            Padding : 8px;
            Margin : 1px;
        }
    </style>

    <div class="container" style="padding: 30px 0;">        
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Semua Pesanan
                        <a href = "/exportexcel" class="btn btn-success pull-right">Cetak Excel</a>  
                        <a href = "/exportpdf" class="btn btn-success pull-right">Cetak PDF</a>    
                    </div>                
                    <div class="panel-body">   
                        @if(Session::has('order_message'))
                            <div class="alert alert-success" role="alert">{{Session::get('order_message')}}</div>
                        @endif                     
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>OrderId</th>
                                    <th>Sub Total</th>
                                    <th>Pajak</th>
                                    <th>Total</th>
                                    <th>Nama Depan</th>
                                    <th>Nama Belakang</th>
                                    <th>Nomor Telefon</th>
                                    <th>E-mail</th>
                                    <th>Kode POS</th>
                                    <th>Status</th>
                                    <th>Tanggal Pesanan</th>
                                    <th>Detail</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($orders as $order)
                                    <tr>
                                        <td>{{$order->id}}</td>
                                        <td>Rp.{{$order->subtotal}}</td>
                                        <td>Rp.{{$order->tax}}</td>
                                        <td>Rp.{{$order->total}}</td>
                                        <td>{{$order->firstname}}</td>
                                        <td>{{$order->lastname}}</td>
                                        <td>{{$order->mobile}}</td>
                                        <td>{{$order->email}}</td>
                                        <td>{{$order->zipcode}}</td>
                                        <td>{{$order->status}}</td>
                                        <td>{{$order->created_at}}</td>
                                        <td><a href="{{route('admin.orderdetails',['order_id'=>$order->id])}}" class="btn btn-info btn-sm">Detail</a>
                                        <td>
                                            <div class="dropdown">
                                                <button class="btn btn-success btn-sm dropdown-toggle" type="button" data-toggle="dropdown">Status
                                                    <span class="caret"></span></button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#" wire:click.prevent="updateOrderStatus({{$order->id}},'delivered')">Diproses</a></li>
                                                        <li><a href="#" wire:click.prevent="updateOrderStatus({{$order->id}},'canceled')">Dibatalkan</a></li>
                                                    </ul>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        {{$orders->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>