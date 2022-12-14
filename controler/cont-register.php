<?php
session_start();

include('../model/model.php');

req_register($_POST);

header('location:../view/confirm.php');
