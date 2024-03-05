<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		if(isset($_GET['user_id']))
		{
			$user_id=$_GET['user_id'];
			
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			
			$select = "select * from friends where user_id='".$_GET['user_id']."'";

			$result = mysql_query($select);
			$flag = false;
			while($row=mysql_fetch_array($result))
			{
				$flag = true;
				$friend_req_id = $row['friend_req_id'];
				
				if($friend_req_id == "" || is_null($friend_req_id))
				{
					$friend_req_id = $_SESSION['id'];
				}
				else
				{
					$friend_req_id = $row['friend_req_id'] . "," . $_SESSION['id'];
				}
				
				$update = "update friends set friend_req_id='".$friend_req_id."' where user_id='".$_GET['user_id']."'";
				mysql_query($update);
			}
			
			if($flag == false)
			{
				$insert = "insert into friends (user_id,friend_req_id) values('". $_GET['user_id'] ."', '". $_SESSION['id'] ."')";
				mysql_query($insert);
			}
			header("Location: search_friends.php");
		}
		else
		{
			header("Location: search_friends.php");
		}
	}
	else
	{
		header("Location: login.php");
	}
?>