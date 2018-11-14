<?php
	require_once 'partials/dbcon.php';

	$username = $_POST['username'];
	$password = $_POST['password'];

	$sql = "SELECT * FROM users  WHERE uname = '$username' AND password = '$password'";

	$result = mysqli_query($con, $sql);

	$count = mysqli_num_rows($result);

	if($count == 1){
		echo "Success";
	}
	else{
		echo "Invalid username/password";
	}
?>