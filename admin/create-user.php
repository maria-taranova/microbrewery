<?php
include 'dbconfig.php';

    $lname = $_POST['lname'];
	$fname = $_POST['fname'];
    $city = $_POST['city'];
	$email = $_POST['email'];
    $pcode = $_POST['pcode'];
	$password = $_POST['password'];
	
	if($crud->createuser($lname, $fname, $city, $email, $pcode, $password))
	{
		header("Location: create-user.php?usercreated");
	}
	else
	{
		header("Location: create-user.php?failure");
	}

?>