<?php
	mysql_connect("localhost","root","");
	mysql_select_db("tina");
	session_start();
	if(isset($_COOKIE[session_id()]))
	{
		$select = "select * from user where id='".$_SESSION['id']."'";
		
		$result = mysql_query($select);
		
		$row = mysql_fetch_array($result);
	}
	else
	{
		header("Location: login.php");
	}
	if(isset($_POST['btn_profile']))
	{
		header("Location: profile.php");
	}
?>
<body bgcolor="#C893FF">
<form method="post" enctype="multipart/form-data">
<font size="5">
This was your old Cover Photo
</font>
	<div id="dvCoverPhoto" style="width:100%; height:200px; 
				background-color:red; text-align: center; padding: 10px;
				z-index: 10;">
		<?php
		if($row['old_cover_photo']=="")
			echo "<img src='images/images_cover_photo/".$row['cover_photo']."' alt='image not found' height='200px' width='98%' />";
		else
			echo "<img src='images/images_cover_photo/".$row['old_cover_photo']."' alt='image not found' height='200px' width='98%' />";
		?>
	<br>
	<br>
	
	</div>
	<br><br>
	<font size="5">
This is your new Cover Photo
		<div id="dvNewCoverPhoto" style="width:100%; height:200px; 
				background-color:red; text-align: center; padding: 10px;
				z-index: 10;">
		<?php
			echo "<img src='images/images_cover_photo/".$row['cover_photo']."' alt='image not found' height='200px' width='98%' />";
		?>
		</div>
				<br>
	<input type="submit" name="btn_profile" value="Go to Profile Page"
	style="height: 46px; width: 14%; background-image:url('btn_bg.png');
		color: white; font-size: 12px; font-weight: 900;" />
</font>
	</form>
</body>