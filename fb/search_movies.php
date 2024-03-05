<?php
		include("header_title.php");
		include("header_menu.php");
?>

<div class="content">
	<div class="content_bg">
	<div class="mainbar">
	  <div class="article">
	  <p class="post-data">
		<?php
			mysql_connect("localhost","root","");
			mysql_select_db("tina");
			
			$select = "";
			if(isset($_GET['friend_id']) && ($_GET['friend_id'] != $_SESSION['id']))
			{
				$select = "select fav_movies from user where id = " . $_GET['friend_id'];
			}
			else
			{
				$select = "select fav_movies from user where id = " . $_SESSION["id"];
			}
			$result = mysql_query($select);
			$fav_movies_id = "";
			while($row = mysql_fetch_array($result))
			{
				$fav_movies_id = $row["fav_movies"];
			}
			
			$select = "select * from movies";
			$result = mysql_query($select);
			$gv_movies = "";
			$gv_movies .= "<center>";
			$gv_movies .= "<table rules=rows frame=hsides style='width: 600px;'>";
			$gv_movies .= "<tr style='background-color: olive; color: white; font-size: 16px; text-align: center;'>";
			$gv_movies .= "<th>Movie Name</th>";
			$gv_movies .= "<th>Movie Image</th>";
			if(!isset($_GET['friend_id']) || ($_GET['friend_id'] == $_SESSION['id']))
			{
				$gv_movies .= "<th>Select Action</th>";
			}
			$gv_movies .= "</tr>";
			while($row = mysql_fetch_array($result))
			{
				$gv_movies .= "<tr>";
				$gv_movies .= "<td style='padding: 10px; font-size: 16px;'>";
				$gv_movies .= $row["movie_name"];
				$gv_movies .= "</td>";
				$gv_movies .= "<td style='text-align: center; width: 150px;'>";
				$gv_movies .= "<img src='".$row['movie_photo']."' height='80px' width='80px' />";
				$gv_movies .= "</td>";
				
				if(!isset($_GET['friend_id']) || ($_GET['friend_id'] == $_SESSION['id']))
				{
					$gv_movies .= "<td style='text-align: center; width: 150px;'>";

					if(substr_count($fav_movies_id, $row["movie_id"]) == 1)
					{
						$gv_movies .=  "<div style='height:40px; width:120px; background:#78bbe6;border-radius: 10px;line-height:12px;'><br>";
						$gv_movies .=  "<a href='delete_movie.php?movie_id=" . $row["movie_id"] . "' style='padding: 5px;font-size: 14px; border:none;border-radius: 10px;  color:#f00; background:#78bbe6;' >Delete</a>";
						$gv_movies .=  "</div>";
					}
					else
					{
						$gv_movies .=  "<div style='height:40px; width:120px; background:#78bbe6;border-radius: 10px;line-height:12px;'><br>";
						$gv_movies .=  "<a href='add_movie.php?movie_id=" . $row["movie_id"] . "' style='padding: 5px;font-size: 14px; border:none;border-radius: 10px;  color:#fff; background:#78bbe6;' >Add</a>";
						$gv_movies .=  "</div>";
					}

					$gv_movies .= "</td>";
				}
				$gv_movies .= "</tr>";
			}
			$gv_movies .= "</table>";
			$gv_movies .= "</center>";
			
			echo $gv_movies;
		?>
	</p>
	<div class="clr"></div>
  </div>
 
</div>
<?php
	include("sidebar.php");
?>
	
<?php
	//include("footer.php");
?>