<?php

$host = "localhost";
	$db_username = "root";
	$db_password = "";
	$db_name = "db_night6";

	$con = mysqli_connect($host, $db_username, $db_password, $db_name);

	if(!$con){
		echo "failed to connect to MySQL". mysqli_connect_error();
	}




?>