<?php

require_once 'config.php';
// get_connection();

function get_connection () 
{
    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
       } 
        
       return  $conn;
}

// function db_execute($query, &$db_errno = false, &$affected_rows = 0, &$insert_id = 0)
// {
//   $conn =  get_connection();
//   $result = mysqli_query($conn, $query);

//   $db_errno = mysqli_errno($conn);
//   $affected_rows = mysqli_affected_rows($conn);
//   $insert_id = mysqli_insert_id($conn);
  
//   if (!$result && $db_errno) {
//    echo 'err1';
//    debug(__FILE__,__FUNCTION__,__LINE__,$query);
  
//   }

//   $ret = array();
//   if ($result && $result instanceof mysqli_result) {
//     while ($row = $result->fetch_assoc()) {
//       array_push($ret, $row);
//     }
//     $result->close();
//     if($conn->more_results()) $conn->next_result();
//   }

//   return $ret;
// }


// function db_execute_multi_query($query, &$db_errno = false, &$affected_rows = 0, &$insert_id = 0) 
// {
//   $conn =  get_connection();
//   $result = mysqli_multi_query($conn, $query);
//   //printf($result);
//   $db_errno = mysqli_errno($conn);
//   $affected_rows = mysqli_affected_rows($conn);
//   $insert_id = mysqli_insert_id($conn);

//   if (!$result && $db_errno) {
//     echo 'err2';
//    }

//    $ret = array();
//    if ($result && $result instanceof mysqli_result) {
//      while ($row = $result->fetch_assoc()) {
//        array_push($ret, $row);
//      }
//      $result->close();
//      if($conn->more_results()) $conn->next_result();
//    }
 
//    return $ret;

// }