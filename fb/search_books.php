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
				$select = "select fav_books from user where id = " . $_GET['friend_id'];
			}
			else
			{
				$select = "select fav_books from user where id = " . $_SESSION["id"];
			}
			$result = mysql_query($select);
			$fav_books_id = "";
			while($row = mysql_fetch_array($result))
			{
				$fav_books_id = $row["fav_books"];
			}
			
			$select = "select * from books";
			$result = mysql_query($select);
			$gv_books = "";
			$gv_books .= "<center>";
			$gv_books .= "<table rules=rows frame=hsides style='width: 600px;'>";
			$gv_books .= "<tr style='background-color: olive; color: white; font-size: 16px; text-align: center;'>";
			$gv_books .= "<th>Book Name</th>";
			$gv_books .= "<th>Book Image</th>";
			if(!isset($_GET['friend_id']) || ($_GET['friend_id'] == $_SESSION['id']))
			{
				$gv_books .= "<th>Select Action</th>";
			}
			$gv_books .= "</tr>";
			while($row = mysql_fetch_array($result))
			{
				$gv_books .= "<tr>";
				$gv_books .= "<td style='padding: 10px; font-size: 16px;'>";
				$gv_books .= $row["book_name"];
				$gv_books .= "</td>";
				$gv_books .= "<td style='text-align: center; width: 150px;'>";
				$gv_books .= "<img src='".$row['book_photo']."' height='80px' width='80px' />";
				$gv_books .= "</td>";
				
				if(!isset($_GET['friend_id']) || ($_GET['friend_id'] == $_SESSION['id']))
				{
					$gv_books .= "<td style='text-align: center; width: 150px;'>";

					if(substr_count($fav_books_id, $row["book_id"]) == 1)
					{
						$gv_books .=  "<div style='height:40px; width:120px; background:#78bbe6;border-radius: 10px;line-height:12px;'><br>";
						$gv_books .=  "<a href='delete_book.php?book_id=" . $row["book_id"] . "' style='padding: 5px;font-size: 14px; border:none;border-radius: 10px;  color:#f00; background:#78bbe6;' >Delete</a>";
						$gv_books .=  "</div>";
					}
					else
					{
						$gv_books .=  "<div style='height:40px; width:120px; background:#78bbe6;border-radius: 10px;line-height:12px;'><br>";
						$gv_books .=  "<a href='add_book.php?book_id=" . $row["book_id"] . "' style='padding: 5px;font-size: 14px; border:none;border-radius: 10px;  color:#fff; background:#78bbe6;' >Add</a>";
						$gv_books .=  "</div>";
					}

					$gv_books .= "</td>";
				}
				$gv_books .= "</tr>";
			}
			$gv_books .= "</table>";
			$gv_books .= "</center>";
			
			echo $gv_books;
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