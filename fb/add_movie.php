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
				
				if($fav_movies == "" || is_null($fav_movies))
				{
					$fav_movies = $movie_id;
				}
				else
				{
					$fav_movies = $fav_movies . "," . $movie_id;
				}
				
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