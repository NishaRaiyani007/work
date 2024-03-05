<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['movie_id']))
		{
			$movie_id=$_GET['movie_id'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			$select = "select fav_movies from user where id='".$_SESSION['id']."'";
			$result = mysql_query($select);
			while($row=mysql_fetch_array($result))
			{
				$fav_movies = $row['fav_movies'];
				
				$array1 = Array($movie_id);
				$array2 = explode(',', $fav_movies);
				$array3 = array_diff($array2, $array1);
				
				$fav_movies = implode(',', $array3);
				
				$update = "update user set fav_movies='".$fav_movies."' where id='".$_SESSION['id']."'";
				mysql_query($update);
			}
			header("Location: search_movies.php");
		}
		else
		{
			header("Location: search_movies.php");
		}
		
	}
	else
	{
		header("Location: login.php");
	}
?>