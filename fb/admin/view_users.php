<?php
		include("admin_header_title.php");
		include("admin_header_menu.php");
?>

<div class="content">
<center>
	<?php
		mysql_connect("localhost","root","");
		mysql_select_db("tina");
		
		$select = "select * from user";
		$result = mysql_query($select);
		$gv_users = "";
		$gv_users .= "<center>";
		$gv_users .= "<table style='width: 600px;'>";
		$gv_users .= "<tr style='background-color: olive; color: white; font-size: 16px; text-align: center;'>";
		$gv_users .= "<th>Photo</th>";
		$gv_users .= "<th>Name</th>";
		$gv_users .= "<th>Email</th>";
		$gv_users .= "<th>Gender</th>";
		$gv_users .= "<th>City</th>";
		$gv_users .= "<th>Delete</th>";
		$gv_users .= "</tr>";
		while($row = mysql_fetch_array($result))
		{
			$gv_users .= "<tr>";
			$gv_users .= "<td style='padding: 2px; text-align: center; width: 150px;'>";
			$gv_users .= "<img src='../images/images_profile_photo/".$row['photo']."' height='60px' width='60px' />";
			$gv_users .= "</td>";
			$gv_users .= "<td style='padding: 10px; font-size: 16px;'>";
			$gv_users .= $row["f_name"] . "&nbsp;" . $row["l_name"];
			$gv_users .= "</td>";
			$gv_users .= "<td style='padding: 10px; font-size: 16px;'>";
			$gv_users .= $row["email"];
			$gv_users .= "</td>";
			$gv_users .= "<td style='padding: 10px; font-size: 16px;'>";
			$gv_users .= $row["gender"];
			$gv_users .= "</td>";
			$gv_users .= "<td style='padding: 10px; font-size: 16px;'>";
			$gv_users .= $row["city"];
			$gv_users .= "</td>";
			$gv_users .= "<td style='text-align: center; width: 150px;'>";
			$gv_users .= "<a href='delete_user_admin.php?user_id=" . $row["id"] . "' style='padding: 5px;' >";
			$gv_users .= "<img src='../images/b_drop.png' height='24px' width='24px' alt='delete' />";
			$gv_users .= "</a>";
			$gv_users .= "</td>";
			$gv_users .= "</tr>";
		}
		$gv_users .= "</table>";
		$gv_users .= "</center>";
		
		echo $gv_users;
	?>
</div>
<br><br>
<?php
	include("admin_footer.php");
?>