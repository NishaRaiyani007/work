<?php
	session_start();
	$_SESSION['admin']='';
	setcookie(session_id(),'',time()-99999);
	session_destroy();
	header("Location: login.php");
?>