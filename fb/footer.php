	<style type="text/css" media="screen">
		#item{
			width:100px;
			height:200px;
			margin:0 auto;
			top:75px;
			position: relative;
			
		}
		ul{
			list-style-type: none;
		}
		body{
			font-family: Arial, "MS Trebuchet", sans-serif;
			font-weight: bold;
			font-size:1em;
		}
	</style>
	
  <div class="fbg">
  
    <div class="fbg_resize">
	
		<div id="item">
			<ul>
				<li>friends</li>
				<li>crazy</li>
				<li>youth</li>
				<li>enjoy</li>
				<li>friends</li>
				<li>click</li>
				<li>photo</li>
				<li>friends</li>
				<li>selfie</li>
				<li>crazy</li>
				<li>enjoy</li>
				<li>youth</li>
				<li>friends</li>
				<li>youth</li>
				<li>crazy</li>
			</ul>
		</div>
    
      <div class="clr"></div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="footer_resize">
    <p class="rf">Developed By: <a href="#">Priya & Tina</a></p>
    <div class="clr"></div>
  </div>
</div>
<div align=center><a href='#'></a></div>
</body>
	
	<script type="text/javascript" src="jquery-1.3.2.min.js"></script>
	<script src="3DEngine.js" type="text/javascript" charset="utf-8"></script>
	<script src="Ring.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		//<![CDATA[
		
		$(document).ready(function() {

			var camera = new Camera3D();
			camera.init(0,0,0,300);
			
			var container = $("#item");
			
			var item = new Object3D(container);

			item.addChild(new Ring(200, $("#item ul li").length));
			
			var scene = new Scene3D();
			scene.addToScene(item);
			
			
			var mouseX,mouseY = 0;
			var offsetX = $("#item").offset().left;
			var offsetY = $("#item").offset().top;
			var speed = 6000;
			
			$().mousemove(function(e){
				mouseX = e.clientX - offsetX - (container.width() / 2);
				mouseY = e.clientY - offsetY - (container.height() / 2);
			});
			
			axisRotation.x = 1.5;
			
			var animateIt = function(){
				if (mouseX != undefined){
					axisRotation.y += (mouseX) / speed;
				}
				
				scene.renderCamera(camera);
				
			};
			
			
			setInterval(animateIt, 20);
			
			
			});
		//]]>
	</script>
</html>