<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
$id=$_GET["id"];
echo $id;
$result = $db_handle->executeDelete("DELETE from recolha WHERE  id=".$id);
header("Location: index.php");


?>