<?php
	session_start();
	if(isset($_SESSION['admin']))
	{
		if($_SESSION['admin'] != 'admin')
		{
			header("Location: ../logout.php");
		}
	}
	else
	{
		header("Location: ../logout.php");
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smile Buddy</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript" src="../js/cufon-yui.js"></script>
<script type="text/javascript" src="../js/arial.js"></script>
<script type="text/javascript" src="../js/cuf_run.js"></script>
</head>
<body>
<form name="admin_form" method="post" enctype="multipart/form-data">
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1><a href="Admin_Home.php"><span>Smile</span>Buddy<small>Gathering Friends</small></a></h1>
	  </div>
	  <h1 style="color: red;">Welcome, Admin</h1>
      <div class="clr"></div>
      