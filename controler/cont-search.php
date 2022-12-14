<?php
session_start();

include('../model/model.php');


$keywords = htmlspecialchars($_GET["keywords"]);
$valider = $_GET["valider"];


if (isset($valider) && !empty(trim($keywords))) {
  $towns = req_search($keywords);
  $_SESSION["searchResult"] = $towns[0];
  header('location:../view/search.php');
}
