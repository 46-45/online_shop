<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Order;
use Illuminate\Support\Facades\DB;
use PDF;
use Excel;
use App\Exports\OrderExport;

class AdminOrderComponent extends Component
{
    public function updateOrderStatus($order_id,$status)
    {
        $order = Order::find($order_id);
        $order->status = $status;
        if($status == "delivered")
        {
            $order->delivered_date = DB::raw('CURRENT_DATE');
        }
        else if($status == "canceled")
        {
            $order->canceled_date = DB::raw('CURRENT_DATE');
        }
        $order->save();
        session()->flash('order_message','Status Pesanan telah di update!');
    }  

    public function exportpdf(){
        $order = Order::all();

        view()->share('order', $order);
        $pdf = PDF::loadview('datapesanan-pdf')->setPaper('a4', 'landscape');
        return $pdf->download('data.pdf');
    }

    public function exportexcel(){
        return Excel::download(new OrderExport, 'data.xlsx');
    }

    public function render()
    {
        $orders = Order::orderBy('created_at','DESC')->paginate(12);
        return view('livewire.admin.admin-order-component',['orders'=>$orders])->layout('layouts.base');
    }
}
