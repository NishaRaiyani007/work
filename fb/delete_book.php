<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['book_id']))
		{
			$book_id=$_GET['book_id'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			$select = "select fav_books from user where id='".$_SESSION['id']."'";
			$result = mysql_query($select);
			while($row=mysql_fetch_array($result))
			{
				$fav_books = $row['fav_books'];
				
				$array1 = Array($book_id);
				$array2 = explode(',', $fav_books);
				$array3 = array_diff($array2, $array1);
				
				$fav_books = implode(',', $array3);
				
				$update = "update user set fav_books='".$fav_books."' where id='".$_SESSION['id']."'";
				mysql_query($update);
			}
			header("Location: search_books.php");
		}
		else
		{
			header("Location: search_books.php");
		}
		
	}
	else
	{
		header("Location: login.php");
	}
?>