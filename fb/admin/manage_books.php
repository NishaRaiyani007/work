<?php
		include("admin_header_title.php");
		include("admin_header_menu.php");		
?>
<div class="content">
<?php 
if(isset($_POST["btn_add_book"]))
{
	if(isset($_POST["txt_book_name"]))
	{
		$con=mysql_connect('localhost','root','');
		$db=mysql_select_db("tina",$con);
		
		$book_name = $_POST["txt_book_name"];
		$book_photo= $_FILES["file_photo_book"]["name"];
		$type= $_FILES["file_photo_book"]["type"];
		
		if(($type=="image/png" || $type=="image/jpg" || $type=="image/jpeg" || $type=="image/pjpeg"))
		{
			move_uploaded_file($_FILES["file_photo_book"]["tmp"], "../images/images_books/" .$book_photo);
		}
		else
		{
			die("Format not allowed");
		}
	
		$insert = "insert into books (book_name, book_photo) values('".$book_name."', 'images/images_books/".$book_photo."')";
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
				Enter Book Name:
			</span>
		</td>
		<td>
			<input type="text" name="txt_book_name" 
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
			<input type="file" id="file_photo_book" name="file_photo_book" />
		</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
		<td colspan="2" style="text-align:center">
			<input type="submit" value="" id="btn_add_book" name="btn_add_book"
			style="height: 33px; width: 74px; background-image:url('../images/images_buttons/Add3.jpg') "/>
		</td>
		</tr>
		</table>
	</div>


	<?php
		mysql_connect("localhost","root","");
		mysql_select_db("tina");
		
		$select = "select * from books";
		$result = mysql_query($select);
		$gv_books = "";
		$gv_books .= "<center>";
		$gv_books .= "<table style='width: 600px;'>";
		$gv_books .= "<tr style='background-color: olive; color: white; font-size: 16px; text-align: center;'>";
		$gv_books .= "<th>Book Image</th>";
		$gv_books .= "<th>Book Name</th>";
		$gv_books .= "<th>Delete</th>";
		$gv_books .= "</tr>";
		while($row = mysql_fetch_array($result))
		{
			$gv_books .= "<tr>";
			$gv_books .= "<td style='padding: 2px; text-align: center; width: 150px;'>";
			$gv_books .= "<img src='../".$row['book_photo']."' height='60px' width='60px' />";
			$gv_books .= "</td>";
			$gv_books .= "<td style='padding: 10px; font-size: 16px;'>";
			$gv_books .= $row["book_name"];
			$gv_books .= "</td>";
			$gv_books .= "<td style='text-align: center; width: 150px;'>";
			$gv_books .= "<a href='delete_book_admin.php?book_id=" . $row["book_id"] . "' style='padding: 5px;' >";
			$gv_books .= "<img src='../images/b_drop.png' height='24px' width='24px' alt='delete' />";
			$gv_books .= "</a>";
			$gv_books .= "</td>";
			$gv_books .= "</tr>";
		}
		$gv_books .= "</table>";
		$gv_books .= "</center>";
		
		echo $gv_books;
	?>
</div>
<br><br>
<?php
	include("admin_footer.php");
?>