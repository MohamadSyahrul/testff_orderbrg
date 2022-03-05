<?php
require_once "koneksi.php";

class barang 
{
 
   public  function get_brgg()
   {
      global $mysqli;
      $query="SELECT tanggal, namacust, penjorderdet.barangid, penjorderdet.qty, penjorderdet.harga FROM penjorder 
            left join penjorderdet on penjorder.noorder = penjorderdet.noorder
            left join barang on penjorderdet.barangid = barang.barangid";
                   
      $data=array();
      $result=$mysqli->query($query);
      while($row=mysqli_fetch_object($result))
      {
         $data[]=$row;
      }
          if($result)
            {
               $response=array(
                     'status' => 1,
                     'message' =>'Order Successs',
                     'data' => $data
                  );
            }
            else
            {
               $response=array(
                  'status' => 0,
                  'message' =>'Order Failed'
               );
            }
      header('Content-Type: application/json');
      echo json_encode($response);
   }

}
 
 ?>