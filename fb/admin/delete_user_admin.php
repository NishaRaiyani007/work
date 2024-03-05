<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['user_id']))
		{
			$user_id=$_GET['user_id'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			$delete = "delete from user where id='".$user_id."'";
			mysql_query($delete);
			header("Location: view_users.php");
		}
		else
		{
			header("Location: view_users.php");
		}
	}
	else
	{
		header("Location: ../logout.php");
	}
?>