<?php
	if(isset($_GET["id"]))
	{
		$id=$_GET["id"];
		$_SESSION['chatbox_sender_1_id'] = $id;
		$con=mysql_connect('localhost','root','');
		mysql_select_db('tina');
		$sql="select * from user where id='". $id ."'";
		$result=mysql_query($sql);
		$row=mysql_fetch_array($result);
		//$_SESSION['chatbox_sender_1_id'] = $row['id'];
		$_SESSION['chatbox_sender_1_f_name'] = $row['f_name'];
		$_SESSION['chatbox_sender_1_l_name'] = $row['l_name'];
		
		echo $_SESSION['chatbox_sender_1_f_name'] . "&nbsp;" . $_SESSION['chatbox_sender_1_l_name'];
				
		mysql_close($con);
	}
	else
	{
		$_SESSION['chatbox_sender_1_id'] = "";
		$_SESSION['chatbox_sender_1_f_name'] = "";
		$_SESSION['chatbox_sender_1_l_name'] = "";
		
		echo "";
	}
?>