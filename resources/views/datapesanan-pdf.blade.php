<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>

<h1>Data Pesanan Barang Lapak Elektronik</h1>

        <table id="customers">
        <tr>
            <th>Id</th>
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
        </tr>
        @php
          $id=1;        
        @endphp
        @foreach ($order as $row)
        <tr>
            <td>{{$id++}}</td>
            <td>Rp.{{$row->subtotal}}</td>
            <td>Rp.{{$row->tax}}</td>
            <td>Rp.{{$row->total}}</td>
            <td>{{$row->firstname}}</td>
            <td>{{$row->lastname}}</td>
            <td>{{$row->mobile}}</td>
            <td>{{$row->email}}</td>
            <td>{{$row->zipcode}}</td>
            <td>{{$row->status}}</td>
            <td>{{$row->created_at}}</td>
        </tr>
        @endforeach
        </table>
</body>
</html>