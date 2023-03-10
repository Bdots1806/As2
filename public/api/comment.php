<?php
require_once('./functions.php');
require_once('./db_connection.php');

set_exception_handler('error_handler');

startup();

if (!$conn) {
  throw new Exception('exception: ' . mysqli_connect_error());
  exit();
};


if ( empty($_GET['id']) ) { //If empty, return all products
  $query = "SELECT `commentID`, (SELECT `name` FROM `products` WHERE id = comments.productID LIMIT 1) 
  as `product Name`, 
  (SELECT `email` FROM `user` WHERE userID = comments.userID LIMIT 1) 
  as `product Name`, `rating`, `images`, `text` FROM `comments`";

} else if (!empty( $_GET['id'] ) && !is_numeric( $_GET['id'] )) { //If not empty, and an invalid number
    throw new Exception("Id needs to be a number");
} else if (!empty( $_GET['id'] ) && is_numeric( $_GET['id'] )) { //if not empty, and valid number
  $id = $_GET['id'];

 $query = "SELECT `commentID`, (SELECT `name` FROM `products` WHERE id = comments.productID LIMIT 1) 
 as `product Name`, 
 (SELECT `email` FROM `user` WHERE userID = comments.userID LIMIT 1) 
 as `product Name`, `rating`, `images`, `text` FROM `comments` WHERE commentID = $id";
};

$result = mysqli_query($conn, $query);

$num_rows_check = mysqli_num_rows($result);

if(!$num_rows_check) { 
  throw new Exception("Invalid ID: ". $_GET['id']);
}

if(!$result) {
  throw new Exception('exception:', $result);
}

$output = [];
while($row = mysqli_fetch_assoc($result)) {
//   $row['images'] = explode(",", $row['images']);
  $output[] = $row;
}

print(json_encode($output)); 

?>
