<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="design.css" rel="stylesheet" type="text/css">
</head>
	<body>
		<div class="navbar navbar-default navbar-fixed-top navbar-inverse">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="${pageContext.request.contextPath}/Accueil"><span>Pixel-Shirt</span></a>
	        </div>
	        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
	          <ul class="hidden-md hidden-sm hidden-xs nav navbar-nav navbar-right">
	          <c:choose>
					<c:when test="${not empty sessionScope.panier.client}">
						<li class="active">
							<a href="#">
								<div style="text-align: center;">
									<font face="FontAwesome"><span style="line-height: 21px;">${sessionScope.panier.client.nom} ${sessionScope.panier.client.prenom}</span></font>	
											
								</div>
							</a>
						</li>
					</c:when>
				</c:choose>
				
				
				
				<c:choose>
					<c:when test="${not empty sessionScope.panier.client}">
					
					
					<li class="dropdown" id="menu1"><a href="#menu1"
						class="dropdown-toggle" data-toggle="dropdown">Déconnexion<b
							class="caret"></b></a>
							<div class="dropdown-menu">
								<form name="deconnexionform" method="POST" action="${pageContext.request.contextPath}/Panier/Gestion"
									id="formdeconnexion" style="margin: 0px" accept-charset="UTF-8">
<!-- 									<input type="submit" id="deconnexion" name="deconnexion" -->
<!-- 										value="Déconnexion" class="sansLabel" /> -->
									<input class="btn-primary" name="deconnexion" type="submit" value="Déconnexion">
								</form>
						</div>
						
					</li>
					</c:when>
				</c:choose>
				
				
				
				
				
				
					<c:choose>
					<c:when test="${empty sessionScope.panier.client}">
					<li class="dropdown" id="menu1"><a href="#menu1"
						class="dropdown-toggle" data-toggle="dropdown">Login<b
							class="caret"></b></a>
						<div class="dropdown-menu">
							<form style="margin: 0px" accept-charset="UTF-8"
								action="${pageContext.request.contextPath}/Connexion" method="post">
								<div style="margin: 0; padding: 0; display: inline">
									<input name="utf8" type="hidden" value="✓"> 
									<input name="authenticity_token" type="hidden" value="">
								</div>
								
	<!-- 							A METTRE DANS UN TRUC A PART
	<!-- 							Faire si connecter accessible  -->
	<!-- 							sinon pas accessible -->
	<!-- 							 --> 
								 
								<c:choose>
								<c:when test="${empty sessionScope.panier.client}">
								
								<fieldset class="textbox" style="padding: 10px">
									<input style="margin-top: 8px" type="email" placeholder="Mail"  id="email" name="email" value="<c:out value="${param.email}"/>"/>
									<span class="erreur">${form.erreurs['email']}</span>					
									
									
									<input type="password" style="margin-top: 8px" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20"  placeholder="Passsword"/>
									<span class="erreur">${form.erreurs['motdepasse']}</span>
									
									<input class="btn-primary" name="commit" type="submit" value="Connexion">
									<a href="${pageContext.request.contextPath}/Inscription">Create</a>	
										
									
								</fieldset>
								</c:when>
								
								<c:otherwise>
	        						
	    						</c:otherwise>
								
								
								</c:choose>
								
								</form>
						</div>
					</li>
					
					</c:when>
					</c:choose>
					
					
					<li class="active"><a href="${pageContext.request.contextPath}/Panier/Gestion">
					<div style="text-align: center;">
						<font face="FontAwesome" style="line-height: 21px; display: inline !important;">Panier : </font><span class="badge">${sessionScope.panier.size}</span>
					</div></a></li>
	
	          </ul>
	          <ul class="nav navbar-nav navbar-right"></ul>
	        </div>
	      </div>
	    </div>
<!-- 			<div align='center'> -->
<!-- 				<fieldset> -->
<!-- 					<ul> -->
				
<!-- 						<li><a href="/Pixel_Shirt/Accueil">Accueil</a></li> -->
<!-- 						<li><a href="/Pixel_Shirt/Inscription">Clique ici si tu veux -->
<!-- 								t'inscrire ma poule</a></li> -->
<!-- 						<li><a href="/Pixel_Shirt/Connexion">Clique ici si tu veux te -->
<!-- 								connecter ma poule</a></li> -->
<!-- 						<li><a href="/Pixel_Shirt/Panier/Gestion">Là tu gères le -->
<!-- 								panier</a></li> -->
<!-- 						<li><a href="/Pixel_Shirt/Panier/ModeLivraison">Là tu es à la -->
<!-- 								première étape après validation du panier (choix de livraison)</a></li> -->
<!-- 						<li><a href="/Pixel_Shirt/Admin/AjoutArticle">Pour ajouter un -->
<!-- 								article dans la base</a></li> -->
<!-- 						<li><a href="/Pixel_Shirt/Articles">Pour afficher les -->
<!-- 								articles</a></li> -->
<!-- 						<li><a href="/Pixel_Shirt/Recherche">Pour rechercher des -->
<!-- 								articles en fonction des tags</a></li> -->
<!-- 					</ul> -->
<!-- 				</fieldset> -->
<!-- 			</div> -->
	</body>
</html>