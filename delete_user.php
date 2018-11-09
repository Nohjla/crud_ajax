<?php
	require_once 'partials/dbcon.php';

	$id = $_GET['id'];

	$sql = "DELETE FROM tbl_users WHERE id = $id";

	$result = mysqli_query($con,$sql);

	if ($result){
		header("Location: users.php");
	}


?>