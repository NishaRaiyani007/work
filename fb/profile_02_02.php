<html>
<head>
	<style type="text/css" rel="stylesheet">
		.good
		{
			height: 40px;
			background-color: transparent;
			border: 1px solid red;
			padding: 10px;
			font-size: 16px;
			font-weight: bold;
			color: white;
			border-radius: 20;
		}
		.good:hover
		{
			height: 40px;
			background-color: transparent;
			border: 4px solid orange;
			padding: 10px;
			font-size: 16px;
			font-weight: bold;
			color: red;
			border-radius: 20;
		}
		.button_group
		{
			margin-left: 1100px;
			z-index: 500;
			position: fixed;
			background-color: transparent;
			margin-top: 20px;
		}
	</style>
<?php
session_start();
if(!isset($_GET['friend_id']) || ($_GET['friend_id'] == $_SESSION['id']))
{
	header("Location: profile.php");
}

	mysql_connect("localhost","root","");
	mysql_select_db("tina");
	
	if(isset($_COOKIE[session_id()]))
	{
		$select = "select * from user where id='".$_GET['friend_id']."'";
		
		$result = mysql_query($select);
		
		$row = mysql_fetch_array($result);
	}
	else
	{
		header("Location: login.php");
	}
	if(isset($_POST['btn_logout']))
	{
		setcookie(session_id(),'',time()-99999);
		session_destroy();
		header("Location: login.php");
	}
	?>

</head>

<body bgcolor="silver">
<form method="post">
<div class="button_group">
	<input type="submit" class="good" name="btn_logout" value="logout" />
</div>
	<div id="dvCoverPhoto" style="width:98%; height:250px; 
				border-radius: 20;
				background-color:red; text-align: center; padding: 5px;
				z-index: 10;">
		<?php
			echo "<img src='images/images_cover_photo/".$row['cover_photo']."' alt='image not found' height='250px' width='98%' />";
		?>
	</div>
	<div id="dvTitle" style="width:140px; height:30px; 
				background-color:transparent;
				border: 3px solid red;
				border-radius: 20;
				font-size: 24px;
				font-weight: bold;
				text-align: center; padding: 10px;
				position: fixed; z-index: 20; 
				top: 100; left: 100px;">
		<?php echo $row['f_name']; ?>
	</div>
	<div id="dvProfilePic" style="width:160px; height:160px; 
				background-color:darkgray; text-align: center; 
				padding-top: 5px; position: fixed;
				z-index: 50; top: 160px; left: 100px;">
		<?php
			echo "<img src='images/images_profile_photo/".$row['photo']."' alt='image not found' height='150px' width='150px' />";
		?>
	</div>
	
	<div id="dvProfilePic" style="width:450px; height:150px; 
				background-color:silver; text-align: left;
				padding-left: 50px;
				padding-top: 25px; position: fixed; font-size: 24px;
				font-weight: bold; border-radius: 50;
				z-index: 50; top: 370px; left: 30px;">
		<?php
			echo "<table style='font-size: 22px;
				font-weight: bold; '><tr><td>";
			echo "Name : </td><td>";
			if($row['gender'] == "Male")
				echo "Mr. ";
			else
				echo "Ms. ";
			echo $row['f_name'] . " " . $row['l_name'];
			
			echo "</td></tr><tr><td>City : </td><td>" . $row['city'];
			echo "</td></tr><tr><td>B'day : </td><td>" . $row['b_day'] . " - ". $row['b_month'] . " - " . $row['b_year'] . "</td></tr></table>";
		?>
	</div>
	
	<?php
			
		$select_friend_id = "select friend_id from friends where user_id='".$_GET['friend_id']."'";
		$result_friend_id = mysql_query($select_friend_id);
		
		while($row_friend_id = mysql_fetch_array($result_friend_id))
		{
			$friend_id = $row_friend_id["friend_id"];
			$select_all = "select * from user where id in (".$friend_id.")";
			$result_all = mysql_query($select_all);
			echo "<div id='dvFriendPhotos'";
				echo "style='width:259px;background-color:transparent;";
				echo "text-align: left; padding: 5px;";
				echo "margin-top: 50px; margin-left: 600px;'>";
				
				$i=0;
				
				echo "<table>";
				echo "<tr>";
				while($row_all = mysql_fetch_array($result_all))
				{
					if($i % 3 == 0)
					{
						echo "</tr>";
						echo "<tr>";
					}
					
					echo "<td align='center' valign='top'>";
					echo "<a href='profile_02.php?friend_id=".$row_all['id']."'>";
					echo "<img src='images/images_profile_photo/".$row_all['photo']."' title=".$row_all['id']." 
								style='border: solid 3px white;'
								height='80px' width='80px' alt='image not found' />";
					
					echo "</a>";
					echo "<br>";
					echo "<span>".$row_all['f_name']."</span>";
					echo "</td>";
					
					$i++;
				}	
				echo "</tr>";
				echo "</table>";
				
			echo "</div>";									
		}
	?>
	
</form>
</body>
</html>