<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['movie_id']))
		{
			$movie_id=$_GET['movie_id'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			$delete = "delete from movies where movie_id='".$movie_id."'";
			mysql_query($delete);
			header("Location: manage_movies.php");
		}
		else
		{
			header("Location: manage_movies.php");
		}
	}
	else
	{
		header("Location: ../logout.php");
	}
?>