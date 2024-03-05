<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['book_id']))
		{
			$book_id=$_GET['book_id'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			$delete = "delete from books where book_id='".$book_id."'";
			mysql_query($delete);
			header("Location: manage_books.php");
		}
		else
		{
			header("Location: manage_books.php");
		}
	}
	else
	{
		header("Location: ../logout.php");
	}
?>