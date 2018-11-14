<?php

	require_once 'partials/dbcon.php';

	$username = $_POST['username'];
	$password = $_POST['password'];
	$id = $_POST['id'];

	$sql = "UPDATE users SET uname = '$username', password = '$password' WHERE id = '$id'";

	$result = mysqli_query($con,$sql);

	if($result){
		header("Location: users.php");
	}



?>