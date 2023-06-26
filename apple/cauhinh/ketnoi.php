<?php  
	$dbhost='localhost';
	$dbuser='root';
	$dbpass='';
	$dbname='apple';
	$conn = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
	if($conn){
		$setlang=mysqli_query($conn,"SET NAMES 'utf8'");
	}else{
		die("Kết nối thất bại ".mysqli_connect_error());
	}

?>