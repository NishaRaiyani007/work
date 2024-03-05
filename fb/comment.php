<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['post_id']) && isset($_GET['txt_comment']))
		{
			$post_id=$_GET['post_id'];
			$comment=$_GET['txt_comment'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			
			$insert = "insert into comment (user_id, post_id, comment) values(" . $_SESSION['id'] . ", " . $post_id . ", '" . $comment . "')";
			mysql_query($insert);
			
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