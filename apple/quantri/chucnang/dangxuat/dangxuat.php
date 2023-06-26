<?php  
	session_start();
	if(isset($_SESSION['email'])){
		session_destroy(); //clear session
		header('location: ../../index.php');
	}
	else{
		header('location: ../../index.php');
	}
?>