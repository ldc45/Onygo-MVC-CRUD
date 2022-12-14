<?php session_start();

require('../model/model.php');

$postData = $_POST;
$pseudo = $postData['pseudo'];

req_delete($pseudo);
header('location:../index.php');
