<?php

require_once 'db.php';


$con = get_connection();

$json = file_get_contents('php://input');

$obj = json_decode($json, true);

//$user_name = $obj['username'];
$user_name ="charuka1";
//$password = $obj['password'];
$password = 'test123';
$password = encrypt_password($password);

$loginQuery = "SELECT * FROM tbl_login WHERE user_name='$user_name' AND password='$password' ";

$check = mysqli_fetch_array(mysqli_query($con, $loginQuery));

if (isset($check)) {

    $onLoginSuccess = 'Login Matched';
    $SuccessMSG = json_encode($onLoginSuccess);
    echo $SuccessMSG;
} else {
    $InvalidMSG = 'Invalid Username or Password Please Try Again';
    $InvalidMSGJSon = json_encode($InvalidMSG);
    echo $InvalidMSGJSon;
}

function encrypt_password($password)
{
    $hash_pass = hash('sha1', $password);
    return $hash_pass;
}

mysqli_close($con);
