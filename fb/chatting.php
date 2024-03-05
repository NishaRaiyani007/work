<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['receiver_id']) && isset($_GET['txt_chatting_sender_1']))
		{
			$receiver_id=$_GET['receiver_id'];
			$chatting=$_GET['txt_chatting_sender_1'];
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			
			$insert = "insert into chatting (sender_id, receiver_id, chat) values(" . $_SESSION['id'] . ", " . $receiver_id . ", '" . $chatting . "')";
			mysql_query($insert);
			
			if(isset($_GET['receiver_id']))
			{
				header("Location: profile.php?receiver_id=".$_GET['receiver_id']);
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