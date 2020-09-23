<?php
require_once "includes/db.php";

$id = $_POST['id'];
$name = $_POST['name'];
$sunneeds = $_POST['sunneeds'];
$soilneeds = $_POST['soilneeds'];
$zones = $_POST['zones'];
$height = $_POST['height'];
$blooms_in = $_POST['blooms_in'];
$features = $_POST['features'];


if(!empty($name) && !empty($sunneeds) && !empty($soilneeds) && !empty($zones) && !empty($height) && !empty($blooms_in) && !empty($features) && !empty($id)){

  $sql = "UPDATE books SET name = '$name', sunneeds = '$sunneeds', zones = '$zones', height = '$height, blooms_in = '$blooms_in', features = '$features', ' WHERE id = '$id'";
  if($conn->query($sql)){
    echo '<div class = "col-md-offset-4 col-md-5 text-center alert alert-success"> 1 Record updated! </div>';

  }


}else {
  echo '<div class = "col-md-offset-4 col-md-5 text-center alert alert-danger">Error while updating </div>';
}


