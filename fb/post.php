<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['friend_id']) && isset($_GET['txt_post_data']))
		{
			$receiver_id=$_GET['friend_id'];
			$post=$_GET['txt_post_data'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			
			$insert = "insert into post (sender_id, receiver_id, post) values(" . $_SESSION['id'] . ", " . $receiver_id . ", '" . $post . "')";
			mysql_query($insert);
			//echo $insert;
			
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