<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/notification.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery.js"></script>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top navbar-inverse">
	<div class="contain">

			<div class="col-md-2">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-ex-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand"
						href="${pageContext.request.contextPath}/Accueil"><span>Pixel-Shirt</span></a>
				</div>
			</div>

			<div class="col-md-5">
				<div class="collapse navbar-collapse" id="navbar-ex-collapse">
					<!--BARRE DE RECHERCHE -->
					<ul class="hidden-md hidden-sm hidden-xs nav navbar-nav"
						style="display: inline-block;width:100%;">
						<form role="form" method="post" action="${pageContext.request.contextPath}/Recherche">
							<div class="form-group">
								<div class="input-group" style="top: 10px;">

									<input type="text" class="form-control" style="height: 42px;"
										placeholder="Rechercher" id="tags" name="tags"> <span
										class="input-group-btn">
										<button type="submit" class="btn btn-success">
											<i class="fa fa-2x fa-search"></i>
										</button>
									</span>
								</div>
							</div>
						</form>
					</ul>
				</div>
			</div>
			

				<div class="col-md-5">
					<!--BARRE NAVIGATION RIGHT -->
					<ul
						class="hidden-md hidden-sm hidden-xs nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${not empty sessionScope.panier.client}">
								<li class="active"><a href="#">
										<div style="text-align: center;">
											<font face="FontAwesome"><span
												style="line-height: 21px;">${sessionScope.panier.client.nom}
													${sessionScope.panier.client.prenom}</span></font>
										</div>
								</a></li>
								<li class="dropdown" id="menu1"><a href="#menu1"
									class="dropdown-toggle" data-toggle="dropdown">Déconnexion<b
										class="caret"></b></a>
									<div class="dropdown-menu">
										<form name="deconnexionform" method="POST"
											action="${pageContext.request.contextPath}/Panier/Gestion"
											id="formdeconnexion" style="margin: 0px"
											accept-charset="UTF-8">
											<!-- 									<input type="submit" id="deconnexion" name="deconnexion" -->
											<!-- 										value="Déconnexion" class="sansLabel" /> -->
											<button class="btn-add" name="deconnexion" type="submit">Déconnexion</button>
										</form>

										<div style="background: #880000">
											<c:choose>
												<c:when test="${not empty sessionScope.panier.client}">
													<form name="supprimercompteform" method="POST"
														action="${pageContext.request.contextPath}/Panier/Gestion"
														id="formSupprCompte">
														<button class="transparent-button" type="submit"
															id="supprimerCompte" name="supprimerCompte">
															<b>Supprimer compte</b>
														</button>
													</form>
													<!--  <form name="deconnexionform" method="POST" action="Gestion" id="formdeconnexion">
												<input type="submit" id="deconnexion" name="deconnexion" value="Déconnexion" class="sansLabel" />
											</form>-->
												</c:when>
											</c:choose>
										</div>
									</div></li>
							</c:when>
						</c:choose>






						<c:choose>
							<c:when test="${empty sessionScope.panier.client}">
								<li class="dropdown" id="menu1"><a href="#menu1"
									class="dropdown-toggle" data-toggle="dropdown">Connexion<b
										class="caret"></b></a>
									<div class="dropdown-menu">
										<form style="margin: 0px" accept-charset="UTF-8"
											action="${pageContext.request.contextPath}/Connexion"
											method="post">
											<div style="margin: 0; padding: 0; display: inline">
												<input name="utf8" type="hidden" value="✓"> <input
													name="authenticity_token" type="hidden" value="">
											</div>



											<c:choose>
												<c:when test="${empty sessionScope.panier.client}">

													<fieldset class="textbox" style="padding: 10px">
														<input style="margin-top: 8px" type="email"
															placeholder="Votre Email" id="email" name="email"
															value="<c:out value="${param.email}"/>" /> <span
															class="erreur">${form.erreurs['email']}</span> <input
															type="password" style="margin-top: 8px" id="motdepasse"
															name="motdepasse" value="" size="20" maxlength="20"
															placeholder="Votre mot de passe" /> <span class="erreur">${form.erreurs['motdepasse']}</span>

														<input class="btn-primary" name="commit" type="submit"
															value="Se Connecter"> <a
															href="${pageContext.request.contextPath}/Inscription">Créer</a>


													</fieldset>
												</c:when>

												<c:otherwise>

												</c:otherwise>


											</c:choose>

										</form>
									</div></li>

							</c:when>
						</c:choose>


						<li class="active"><a
							href="${pageContext.request.contextPath}/Panier/Gestion">
								<div style="text-align: center;">
									<font face="FontAwesome"
										style="line-height: 21px; display: inline !important;">Panier
										: </font><span class="badge">${sessionScope.panier.size}</span>
								</div>
						</a></li>

					</ul>

				</div>
			</div>

		</div>

	</div>
	</div>
	<!--  Normal que se soit en double pas sur la même page et donc la même div  -->
	<c:choose>
	<c:when test="${not empty addcard}">
		<script type="text/javascript">
			$(document)
					.ready(
							function(sc) {
								$(
										'<div class="alert-box success" >Vous avez ajouté un article au panier</div>')
										.prependTo('.col-md-9.success').delay(2000).fadeOut(
												1000, function() {
													$('.alert-box').remove();
												});
							});
		</script>
	</c:when>
	<c:when test="${not empty addcarddetail}">
		<script type="text/javascript">
			$(document)
					.ready(
							function(sc) {
								$(
										'<div class="alert-box success">Vous avez ajouté un article au panier</div>')
										.prependTo('.container.success').delay(2000).fadeOut(
												1000, function() {
													$('.alert-box').remove();
												});
							});
		</script>
	</c:when>
	<c:when test="${not empty form.erreurs['email']}">
		<script type="text/javascript">
			$(document)
					.ready(
							function(sc) {
								$(
										'<div class="alert-box fail">Email ou mot de passe invalide</div>')
										.prependTo('.col-md-9.success').delay(2000).fadeOut(
												1000, function() {
													$('.alert-box').remove();
												});
							});
		</script>
	</c:when>
	<c:when test="${not empty transaction_success}">
		<script type="text/javascript">
			$(document)
					.ready(
							function(sc) {
								$(
										'<div class="alert-box success">Transaction éffectuée avec succès</div>')
										.prependTo('.col-md-9.success').delay(2000).fadeOut(
												1000, function() {
													$('.alert-box').remove();
												});
							});
		</script>
	</c:when>
	<c:when test="${not empty transaction_failed}">
		<script type="text/javascript">
			$(document)
					.ready(
							function(sc) {
								$(
										'<div class="alert-box fail">La transaction a échoué</div>')
										.prependTo('.col-md-9.success').delay(2000).fadeOut(
												1000, function() {
													$('.alert-box').remove();
												});
							});
		</script>
	</c:when>
</c:choose>
</body>
</html>