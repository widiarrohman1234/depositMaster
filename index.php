<?php
$conn = mysqli_connect('localhost','root','');
$db = mysqli_select_db($conn,'deposit');
$result = mysqli_query($conn,'select * from transaksi');
?>
<!DOCTYPE html>
<html>
<head>
  <title>Deposit</title>
</head>
<body>
<table border="1">
  <head>
    <th>NO</th>
    <th>Pegawai</th>
    <th>Nasabah</th>
    <th>Tanggal</th>
    <th>Keterangan</th>
    <th>Debit</th>
    <th>Kredit</th>
    <th>Saldo</th>
  </head>
  <body>
    <?php 
    $no = 1;
    while($data=mysqli_fetch_array($result)){
    echo "<tr>";
    echo  "<td>".$no."</td>";
    echo  "<td>".$data["id_user"]."</td>";
    echo  "<td>".$data['id_nasabah']."</td>";
    echo  "<td>".$data['tanggal']."</td>";
    echo  "<td>".$data['ket']."</td>";
    if ($no == 1) {
      //menampilkan debit pertama
      echo "<td>".$data['debit']."</td>";
      echo "<td>".$data['kredit']."</td>";
        $debit=$data['debit'];
        $kredit=$data['kredit'];
        $saldo=$debit;
      echo "<td>".$saldo."</td>";
    }else{
      if ($data['debit']!=0) {
        //mendapatkan debit
        echo "<td>".$data['debit']."</td>";
        echo "<td>".$data['kredit']."</td>";
          $debit=$debit+$data['debit'];
          $saldo=$saldo+$data['debit'];
        echo "<td>".$saldo."</td>";
      }else{
        //untuk mendapatkan kredit
        echo "<td>".$data['debit']."</td>";
        echo "<td>".$data['kredit']."</td>";
          $kredit=$kredit+$data['kredit'];
          $saldo=$saldo-$data['kredit'];
        echo "<td>".$saldo."</td>";
      }
    }
    echo "</tr>";
  $no++;
  }
    ?>
  <tr>
    <th colspan="5">Jumlah</th>
    <?php
    echo "<th>".$debit."</th>";
    echo "<th>".$kredit."</th>";
    echo "<th>".$saldo."</th>";
    ?>
  </tr>
  </body>
</table>
</body>
</html>