<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['post_id']) && isset($_GET['op']))
		{
			$post_id=$_GET['post_id'];
			$op=$_GET['op'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			
			$select_post = "select * from post where post_id=" . $post_id;
			$result_post = mysql_query($select_post);
			$row_post=mysql_fetch_array($result_post);
			$likes = $row_post['likes'];
			
			if($op == 'like')
			{
				if($likes == "" || is_null($likes))
				{
					$likes = $_SESSION['id'];
				}
				else
				{
					$likes = $likes . "," . $_SESSION['id'];
				}
			}
			else if($op == 'unlike')
			{
				$array1 = Array($_SESSION['id']);
				$array2 = explode(',', $likes);
				$array3 = array_diff($array2, $array1);
				
				$likes = implode(',', $array3);
			}
			$update = "update post set likes='" . $likes . "' where post_id=" . $post_id;
			mysql_query($update);
			
			if(isset($_GET['friend_id']) && $_GET['friend_id'] != '')
			{
				header("Location: profile.php?friend_id=".$_GET['friend_id']);
			}
			else
			{
				header("Location: profile.php");
			}
		}
		else
		{
			header("Location: profile.php");
		}
	}
	else
	{
		header("Location: login.php");
	}
?>