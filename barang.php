<?php
require_once "method.php";
$brg = new Barang();
$request_method=$_SERVER["REQUEST_METHOD"];
    switch ($request_method) {
    case 'GET':
            if(!empty($_GET["barangid"]))
            {
                $id=intval($_GET["barangid"]);
                $brg->get_brg($id);
            }
            else
            {
                $brg->get_brgg();
            }
            break;
    default:
        // Invalid Request Method
            header("HTTP/1.0 405 Method Not Allowed");
            break;
        break;
    }
?>