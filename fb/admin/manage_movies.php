<?php
		include("admin_header_title.php");
		include("admin_header_menu.php");		
?>
<div class="content">
<?php 
if(isset($_POST["btn_add_movie"]))
{
	if(isset($_POST["txt_movie_name"]))
	{
		$con=mysql_connect('localhost','root','');
		$db=mysql_select_db("tina",$con);
		
		$movie_name = $_POST["txt_movie_name"];
		$movie_photo= $_FILES["file_photo_movie"]["name"];
		$type= $_FILES["file_photo_movie"]["type"];
		
		if(($type=="image/png" || $type=="image/jpg" || $type=="image/jpeg" || $type=="image/pjpeg"))
		{
			move_uploaded_file($_FILES["file_photo_movie"]["tmp"], "../images/images_movies/" .$movie_photo);
		}
		else
		{
			die("Format not allowed");
		}
	
		$insert = "insert into movies (movie_name, movie_photo) values('".$movie_name."', 'images/images_movies/".$movie_photo."')";
		//echo $insert;
		mysql_query($insert);
	}
}
?>
<center>
	<div style="margin-bottom: 25px; width: 60%; border: solid 2px gray; border-radius: 10px; padding: 10px;">
		<table>
		<tr>
		<td>
			<span style="font-size: large; color: gray; padding-right: 20px;">
				Enter movie Name:
			</span>
		</td>
		<td>
			<input type="text" name="txt_movie_name" 
					style="height: 23px; width: 200px; padding: 5px; font-size: large;">
		</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
		<td>
			<span style="font-size: large; color: gray; padding-right: 20px;">
				Select a photo:
			</span>
		</td>
		<td>
			<input type="file" id="file_photo_movie" name="file_photo_movie" />
		</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
		<td colspan="2" style="text-align:center">
			<input type="submit" value="" id="btn_add_movie" name="btn_add_movie"
			style="height: 33px; width: 74px; background-image:url('../images/images_buttons/Add3.jpg') "/>
		</td>
		</tr>
		</table>
	</div>


	<?php
		mysql_connect("localhost","root","");
		mysql_select_db("tina");
		
		$select = "select * from movies";
		$result = mysql_query($select);
		$gv_movies = "";
		$gv_movies .= "<center>";
		$gv_movies .= "<table style='width: 600px;'>";
		$gv_movies .= "<tr style='background-color: olive; color: white; font-size: 16px; text-align: center;'>";
		$gv_movies .= "<th>Movie Image</th>";
		$gv_movies .= "<th>Movie Name</th>";
		$gv_movies .= "<th>Delete</th>";
		$gv_movies .= "</tr>";
		while($row = mysql_fetch_array($result))
		{
			$gv_movies .= "<tr>";
			$gv_movies .= "<td style='padding: 2px; text-align: center; width: 150px;'>";
			$gv_movies .= "<img src='../".$row['movie_photo']."' height='60px' width='60px' />";
			$gv_movies .= "</td>";
			$gv_movies .= "<td style='padding: 10px; font-size: 16px;'>";
			$gv_movies .= $row["movie_name"];
			$gv_movies .= "</td>";
			$gv_movies .= "<td style='text-align: center; width: 150px;'>";
			$gv_movies .= "<a href='delete_movie_admin.php?movie_id=" . $row["movie_id"] . "' style='padding: 5px;' >";
			$gv_movies .= "<img src='../images/b_drop.png' height='24px' width='24px' alt='delete' />";
			$gv_movies .= "</a>";
			$gv_movies .= "</td>";
			$gv_movies .= "</tr>";
		}
		$gv_movies .= "</table>";
		$gv_movies .= "</center>";
		
		echo $gv_movies;
	?>
</div>
<br><br>
<?php
	include("admin_footer.php");
?>