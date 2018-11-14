<?php

require_once 'partials/dbcon.php';

	$username = $_POST['username'];
	$password = sha1($_POST['password']);

	// sha1 = secured hash algorithm
	// md5 = message digest 5

	$sql = "INSERT users(uname,password) 
	VALUES('$username','$password')";

	$result = mysqli_query($con,$sql);

	if($result){
		// echo "successfully added a new user";
		header("Location:index.php");
	}
?>