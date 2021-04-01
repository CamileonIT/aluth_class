<?php

require_once 'db.php';

$conn = get_connection();

$json = file_get_contents('php://input');
 
$obj = json_decode($json,true);
 
$name = $obj['name'];
$contact = $obj['contact'];
$whatsapp = $obj['whatsapp'];
$qualification = $obj['qualification'];
$about = $obj['about'];

$user_name=$obj['user_name'];
$password = $obj['password'];

$password =hash('sha1', $password);

$Checkusername = "SELECT * FROM tbl_login WHERE user_name='$user_name'";
 
$check = mysqli_fetch_array(mysqli_query($conn,$Checkusername));
 
 if(isset($check)){
 
	 $userNameExist = 'User name Already Exist, Please Try Again With New User name..!';
	
	$userNameExistJSON = json_encode($userNameExist);
	 
	echo $userNameExistJSON ; 
    return $userNameExistJSON;
	
 
  }
 else{
    mysqli_autocommit($conn,FALSE);

    $all_query_ok=true;

	$Sql_Query = "insert into tbl_user (name,contact,whatsapp,qualification,about) values ('$name','$contact','$whatsapp','$qualification','$about')";
	mysqli_query($conn,$Sql_Query)? null : $all_query_ok=false;

    $last_id = mysqli_insert_id($conn);
	echo($last_id);  
    $Sql_Query = "insert into tbl_login (user_id,user_name,password) values ('$last_id','$user_name','$password')";
    mysqli_query($conn,$Sql_Query)? null : $all_query_ok=false;

    $all_query_ok ? mysqli_commit($conn) : mysqli_rollback($conn);
 }
 mysqli_close($conn);
