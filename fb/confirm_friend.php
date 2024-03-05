<?php
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		mysql_connect("localhost","root","");
		mysql_select_db("tina");
		
		$select = "select * from friends where user_id='".$_SESSION['id']."'";
		$result = mysql_query($select);
		while($row=mysql_fetch_array($result))
		{
			$friend_id = $row['friend_id'];
				
			if($friend_id == "" || is_null($friend_id))
			{
				$friend_id = $_GET['user_id'];
			}
			else
			{
				$friend_id = $row['friend_id'] . "," . $_GET['user_id'];
			}

			$update = "update friends set friend_id='".$friend_id."' where user_id='".$_SESSION['id']."'";
			mysql_query($update);
		}
		
		$select = "select * from friends where user_id='".$_GET['user_id']."'";
		$result = mysql_query($select);
		while($row=mysql_fetch_array($result))
		{
			$friend_id = $row['friend_id'];
				
			if($friend_id == "" || is_null($friend_id))
			{
				$friend_id = $_SESSION['id'];
			}
			else
			{
				$friend_id = $row['friend_id'] . "," . $_SESSION['id'];
			}

			$update = "update friends set friend_id='".$friend_id."' where user_id='".$_GET['user_id']."'";
			mysql_query($update);
		}
		
		$select = "select * from friends where user_id='".$_SESSION['id']."'";
		$result = mysql_query($select);
		while($row=mysql_fetch_array($result))
		{
			$friend_req_id = $row['friend_req_id'];
			
			$array1 = Array($_GET['user_id']);
			$array2 = explode(',', $friend_req_id);
			$array3 = array_diff($array2, $array1);
			
			$friend_req_id = implode(',', $array3);
			
			$update = "update friends set friend_req_id='".$friend_req_id."' where user_id='".$_SESSION['id']."'";
			mysql_query($update);
		}
		

		header("Location: search_friends.php");
	}
	else
	{
		header("Location: login.php");
	}
?>