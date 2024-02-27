<?php session_start(); ?>
<?php
$conn=mysql_connect("localhost","root","");
$db=mysql_select_db("mobile",$conn);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>mobileshop</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery.jcarousel.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/skin.css" type="text/css" media="all" />
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
<script src="js/jquery-1.4.2.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.jcarousel.js" type="text/javascript" charset="utf-8"></script>
<script src="js/png-fix.js" type="text/javascript" charset="utf-8"></script>
<script src="js/fn.js" type="text/javascript" charset="utf-8"></script>
<!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style2 {font-size: 36}
.style4 {
	font-style: italic;
	font-size: 16px;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;

	

}
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
  <div class="shell">

  <img src="images/logo.jpg" />
   <!--<h1 id="logo"><a href="#"> </a></h1>-->
  <!-- <h1>&nbsp;</h1>-->
    <div id="nav">
      <ul>
	 
        <li><a href="index.php" >Home</a></li>
       <li><a href="category.php">Category</a></li>
	<!--  <li><a href="#"><strong>category</strong></a></li>-->
        <li><a href="about.php">About</a></li>
        <li><a href="#"><strong>Contact</strong></a></li>
		
      </ul>
    </div>