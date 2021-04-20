<?php
// error_reporting(0);
$conn=mysqli_connect('localhost','root','');

if(!$conn)
{
 die('Tidak terhubung ke database: ' . mysqli_error($conn));
}

$db = mysqli_select_db($conn,'db_counting');


$result=mysqli_query($conn,'SELECT tb_hitung.Keterangan, tb_hitung.Debit, tb_hitung.Kredit FROM tb_hitung INNER JOIN tb_bulan ON tb_hitung.id_bulan=tb_bulan.id_bulan ORDER BY tb_hitung.id_hitung');

echo"<table border='1'>";
 echo"<tr>";
  echo"<th>No</th>";
  echo"<th>Keterangan</th>";
  echo"<th>Debit</th>";
  echo"<th>Kredit</th>";
  echo"<th>Saldo</th>";
 echo"</tr>";
 echo"<tr>";
 $count=1;

function num($rp){
if($rp!=0){
 $hasil = number_format($rp, 0, ',', '.');
 }
 else{
 $hasil=0;
 }
return $hasil;
}

while($hasil=mysqli_fetch_array($result)){
  echo"<td>$count</td>";
  echo"<td>".$hasil['Keterangan']."</td>";
  if($count==1){
    /* pertama kali deklarasi Debit */
   echo"<td>Rp. ".num($hasil['Debit'])."</td>";
   echo"<td>Rp. ".num($hasil['Kredit'])."</td>";
   $debit=$hasil['Debit'];
   $saldo=$hasil['Debit'];
   echo"<td>RP. ".num($saldo)."</td>";   
  }else{
     if($hasil['Debit']!=0){   
       /* Jika debit tidak sama dengan 0 */
      echo"<td>Rp. ".num($hasil['Debit'])."</td>";
      echo"<td>Rp. ".num($hasil['Kredit'])."</td>";
      $debit=$debit+$hasil['Debit'];
      $saldo=$saldo+$hasil['Debit'];
      echo"<td>Rp. ".num($saldo)."</td>";    
     }else{
      /* Jika debit sama dengan 0 = tarik uang*/
      echo"<td>Rp. ".num($hasil['Debit'])."</td>";
      echo"<td>Rp. ".num($hasil['Kredit'])."</td>";
      $kredit=$kredit+$hasil['Kredit'];
      $saldo=$saldo-$hasil['Kredit'];
      echo"<td>Rp. ".num($saldo)."</td>";    
     }
  }
 echo"</tr>";
 echo"<tr>";
  $count++;
}

echo"<tr>";
  echo"<th colspan='2'>Jumlah</th>";
  echo"<th>Rp. ".num($debit)."</th>";
  echo"<th>Rp. ".num($kredit)."</th>";
  echo"<th>Rp. ".num($saldo)."</th>";
 echo"</tr>";
echo"</table>";

?>