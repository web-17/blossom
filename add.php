<?php

require_once "includes/db.php";

$name = $_POST['name'];
$sunneeds = $_POST['sunneeds'];
$soilneeds = $_POST['soilneeds'];
$zones = $_POST['zones'];
$height = $_POST['height'];
$blooms_in = $_POST['blooms in'];
$features = $_POST['features'];


if(!empty($name) && !empty($height) && !empty($features)){

  $sql = $conn->prepare("INSERT INTO flower (name, sunneeds,soilneeds,zones, height, blooms_in, features) VALUES ( ?, ?, ?)");
  $sql->bind_param("sss", $name, $sunneeds, $soilneeds, $zones, $height, $blooms_in, $features);
  $sql->execute();
  $sql->close();
  $conn->close();
}else

echo ''

 ?>