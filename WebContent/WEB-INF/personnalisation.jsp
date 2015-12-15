<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/bs_leftnavi.js"></script>
<link href="${pageContext.request.contextPath}/design.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/button.css"
	rel="stylesheet" type="text/css">
<title>Personnalisation</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	
	<div class="container">
		<div class="row">
			<div class="col-sm-8" style="top:60px;">
				<canvas type="bakground-image:${pageContext.request.contextPath}/images/${article.id_article}" class="slideright" id="drawing-canvas" style="top:30px;" width="700px" height="500px" ></canvas>
				<img src="${pageContext.request.contextPath}/images/${article.id_article}" autre="http://www.online-image-editor.com//styles/2014/images/example_image.png" class="center-block img-responsive img-thumbnail">
					
			</div>
			
			<div class="col-sm-1"></div>
			
			<div class="col-sm-3">
				<h1>Tee-Shirt</h1>
            	<form class="form-horizontal" role="form" action="Personnalisation" method="POST">
              
              	
	                <div class="col-sm-2">
	                  <label for="inputPassword3" class="control-label">Taille</label>
	                </div>
	                
	                <div class="col-sm-10">
	                  <select class="dropdown" id="taille" name="taille" onchange="this.form.submit()">
	                    <option value="xl">XS</option>
	                    <option value="s">S</option>
	                    <option value="m">M</option>
	                    <option value="l">L</option>
	                    <option value="xl">XL</option>
	                    <option value="xxl">XXL</option>
	                  </select>
	                </div>
	                
              
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Modèle</label>
                </div>
                
                <div class="col-sm-10">
                  <select class="dropdown" id="modele" name="modele" onchange="this.form.submit()">
                    <option value="homme">Homme</option>
                    <option value="femme">Femme</option>
                    <option value="enfant">Enfant</option>
                  </select>
                </div>
              
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Couleur</label>
                </div>
                
                <div class="col-sm-10">
                  <select class="dropdown" id="couleur" name="couleur" onchange="this.form.submit()">
                    <option ${"Blanc"== article.couleur ? 'selected="selected"' : ''} value="blanc">Blanc</option>
                    <option ${"Noir"== article.couleur ? 'selected="selected"' : ''} value="noir">Noir</option>
                    <option ${"Vert"== article.couleur ? 'selected="selected"' : ''} value="vert">Vert</option>
                    <option ${"Bleu"== article.couleur ? 'selected="selected"' : ''} value="bleu">Bleu</option>
                    <option ${"Jaune"== article.couleur ? 'selected="selected"' : ''} value="jaune">Jaune</option>
                    <option ${"Rose"== article.couleur ? 'selected="selected"' : ''} value="rose">Rose</option>
                    <option ${"Rouge"== article.couleur ? 'selected="selected"' : ''} value="rouge">Rouge</option>
                    <option ${"Orange"== article.couleur ? 'selected="selected"' : ''} value="orange">Orange</option>
                  </select>
                </div>
             
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Quantité</label>
                </div>
                
                <div class="col-sm-10">                
                  <select class="dropdown" id="quantite" name="quantite" form="addArticle">
                    <!--  <option value="0">0</option> -->
                  <option value="1" >1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  </select>
                </div>
              
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button form="addArticle" type="submit" class="btn btn-block btn-lg btn-primary">
                    <i class="fa fa-fw fa-plus-square"></i>Ajouter</button>
                </div>
              </div>
			
			</form>
		</div>
	</div>
</div>

	<script type="text/javascript">
		//Set up some globals
	    var pixSize = 8, lastPoint = null, currentColor = "000", mouseDown = 0;
	    var pixShirt = $scope.$parent.pixelShirt;
	    sessionStorage.pixelShirt = JSON.stringify(pixShirt);
		
	    // Set up our canvas
	    var myCanvas = document.getElementById('drawing-canvas');
	    var myContext = myCanvas.getContext ? myCanvas.getContext('2d') : null;
	    if (myContext == null) {
	      alert("You must use a browser that supports HTML5 Canvas to run this demo.");
	      return;
	    }

	    // Setup each color palette & add it to the screen
	    var colors = ["fff","000","f00","0f0","00f","88f","f8d","f88","f05","f80","0f8","cf0","08f","408","ff8","8ff"];
	    for (var c in colors) {
	      var item = jQuery('<div/>').css("background-color", '#' + colors[c]).addClass("colorbox");
	      item.click((function () {
	        var col = colors[c];
	        return function () {
	          currentColor = col;
	        };
	      })());
	      item.appendTo('#colorholder');
	    }
	    
	    //Keep track of if the mouse is up or down
	    myCanvas.onmousedown = function () {mouseDown = 1;};
	    myCanvas.onmouseout = myCanvas.onmouseup = function () {
	      mouseDown = 0; lastPoint = null;
	    };

	    //Draw a line from the mouse's last position to its current position
	    var drawLineOnMouseMove = function(e) {
	      if (!mouseDown) return;

	      e.preventDefault();

	      // Bresenham's line algorithm. We use this to ensure smooth lines are drawn
	      var offset = jQuery('canvas').offset();
	      var x1 = Math.floor((e.pageX - offset.left) / pixSize - 1),
	        y1 = Math.floor((e.pageY - offset.top) / pixSize - 1);
	      var x0 = (lastPoint == null) ? x1 : lastPoint[0];
	      var y0 = (lastPoint == null) ? y1 : lastPoint[1];
	      var dx = Math.abs(x1 - x0), dy = Math.abs(y1 - y0);
	      var sx = (x0 < x1) ? 1 : -1, sy = (y0 < y1) ? 1 : -1, err = dx - dy;
	      while (true) {
	        //write the pixel or if we are drawing white, remove the pixel
		pixShirt = JSON.parse(sessionStorage.pixelShirt);
	        if (currentColor === "fff") {
				delete pixShirt.pixelData[x0+":"+y0];
				myContext.clearRect(x0 * pixSize, y0 * pixSize, pixSize, pixSize);
			} else {
				pixShirt.pixelData[x0+":"+y0] = currentColor;
				myContext.fillStyle = "#" + currentColor;
				myContext.fillRect(x0 * pixSize, y0 * pixSize, pixSize, pixSize);
			}
			// Prendre une photo d'un instant t à stocké dans la session
	        sessionStorage.pixelShirt = JSON.stringify(pixShirt);
	        

	        if (x0 == x1 && y0 == y1) break;
	        var e2 = 2 * err;
	        if (e2 > -dy) {
	          err = err - dy;
	          x0 = x0 + sx;
	        }
	        if (e2 < dx) {
	          err = err + dx;
	          y0 = y0 + sy;
	        }
	      }
	      lastPoint = [x1, y1];
	    };
	    
	     // Background Image
		jQuery(myCanvas).css({
			"background-image" : "url("+pixShirt.backImg+")"
		});
	    
		// Reload
		for (var pix in pixShirt.pixelData) {
			var coords = pix.split(":");
			myContext.fillStyle = "#" + pixShirt.pixelData[pix];
			myContext.fillRect(parseInt(coords[0]) * pixSize, parseInt(coords[1]) * pixSize, pixSize, pixSize);
		}
	
	    
	    $(myCanvas).mousemove(drawLineOnMouseMove);
	    $(myCanvas).mousedown(drawLineOnMouseMove);
	</script>

	<%@ include file="footer.jsp"%>

</body>
</html>