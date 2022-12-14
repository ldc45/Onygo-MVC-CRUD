<?php
session_start();

include('../model/model.php');


req_update($_POST);

header('location:../view/dashboard.php');
