<?php
	session_start();
	unset($_SESSION['ADMIN_LOGIN']);
	unset($_SESSION['ADMIN_USERNAME']);
	header('location:http://localhost/online-super-shop/index.php');
	die();
?>