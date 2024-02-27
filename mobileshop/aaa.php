<?php
 	include("header.php");
?>
</br>
</br>
</br>
</br>
</br>
</br>
<!DOCTYPE html>
<html>
<head>
    <title>Demo 4 - with Navigation Buttons</title>
    <link href="themes/4/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/4/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div id="sliderFrame">
	
        <div id="slider">
		  <?php
	$con=mysql_connect("localhost","root","") or die("can't connect");
	mysql_select_db("mobile",$con) or  die("can't select db");
	$qry="select *from description ";
	
	$res=mysql_query($qry) or die("can't select table data");
	while($row=mysql_fetch_array($res))
	{
	  echo "<td><a href='#'><img src='".$row['image']."' width=190 height=350/></a>";
	  }
	  ?>       </div>
				   
        <!--Custom navigation buttons on both sides-->
        <div class="group1-Wrapper">
            <a onClick="imageSlider.previous()" class="group1-Prev"></a>
            <a onClick="imageSlider.next()" class="group1-Next"></a>        </div>
        <!--nav bar-->
        <div style="text-align:center;padding:20px;z-index:20;">
            <a onClick="imageSlider.previous()" class="group2-Prev"></a>
            <a id='auto' onClick="switchAutoAdvance()"></a>
            <a onClick="imageSlider.next()" class="group2-Next"></a>        </div>
    </div>


    <div class="div2">
        <p>.</p>
</div>
    <script type="text/javascript">
        //The following script is for the group 2 navigation buttons.
        function switchAutoAdvance() {
            imageSlider.switchAuto();
            switchPlayPauseClass();
        }
        //function switchPlayPauseClass() {
            //var auto = document.getElementById('auto');
           // var isAutoPlay = imageSlider.getAuto();
            auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
           // auto.title = isAutoPlay ? "Pause" : "Play";
        }
        switchPlayPauseClass();
    </script>
</body>
</html>

