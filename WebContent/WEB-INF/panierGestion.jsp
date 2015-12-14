<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link type="text/css" rel="stylesheet" href="/Pixel_Shirt/tab.css" />  -->
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="dropit.js"></script>
<script type="text/javascript" src="jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="dropit.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/bs_leftnavi.js"></script>
<link href="${pageContext.request.contextPath}/designArticle.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/button.css"
	rel="stylesheet" type="text/css">
<title>Gestion Panier</title>

</head>
<body>

	<%@ include file="menu.jsp"%>

		<div class="section"></div>
		<div class="section">
			<div class="container">
				<div class="row">

					<div class="col-md-9">
						<table class="table">
							<tr class="legende">
								<!--   <th><c:out value="Id" /></th>-->
								<th></th>
								<th><c:out value="Couleur" /></th>
								<th><c:out value="Taille" /></th>
								<th><c:out value="Modèle" /></th>
								<th><c:out value="Prix" /></th>
								<!-- <th><c:out value="QuantiteTest" /></th> -->
								<th><c:out value="Quantité" /></th>
								<th><c:out value="Suppression" /></th>
							</tr>
							<c:forEach var="article" items="${sessionScope.panier.articles}">
								<tr>
									<!--<td><c:out value="${article.key.id_article}" /></td> -->
									<td><a
										href="${pageContext.request.contextPath}/Detail?id=${article.key.id_article}"><img
											src="${pageContext.request.contextPath}/images/${article.key.id_article}"
											style="width: 100px;" /></a></td>
									<td><c:out value="${article.key.couleur}" /></td>
									<td><c:out value="${article.key.taille}" /></td>
									<td><c:out value="${article.key.modele}" /></td>
									<td><c:out value="${article.key.prix} €" /></td>
									<!--  <td><c:out value="${article.value}" /></td> -->
									<td>
										<form name="quantitearticleform${article.key.id_article}"
											method="POST" action="Gestion"
											id="form${article.key.id_article}">
											<input type="hidden" name="article_id"
												value="${article.key.id_article}"> <input
												type="number" id="quantite" min="1" name="quantite" size="5"
												value="${article.value}">
											<button class="btn btn-xs btn-success"  style:"line-height:0.5;"onclick="Gestion">Valider</button>
										</form>

									</td>
									<td>
										<form name="supprimerarticleform${article.key.id_article}"
											method="POST" action="Gestion"
											id="form${article.key.id_article}">
											<input type="hidden" name="article_id"
												value="${article.key.id_article}">
											<button type="submit" id="supprimer" name="supprimer"
												value="Supprimer"
												class="transparent-button fa fa-2x fa-fw fa-remove pull-left text-danger"></button>
										</form>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>

					<div class="col-md-1"></div>



					<div class="col-md-2"
						style="border-width: 1px; border-style: solid; border-color: #C0C0C0">

						<div class="row">
							<div style="font-size: 26px;">
								<b> Total :</b>
							</div>
							<div style="font-size: 14px;">
								<b>(${sessionScope.panier.size} articles)</b>
							</div>
							</br>
							<div class="text-right" style="font-size: 26px; color: #D9534F;">
								<b>${sessionScope.panier.total} €</b>
							</div>
						</div>

						</br>
						</br>

						<div class="row">
							<div align="center">
								<!-- c:otherwhise -->
								<form name="commanderarticleform" method="GET"
									action="${pageContext.request.contextPath}/Panier/AdresseFacturation"
									id="formCommander">
									<button type="submit" class="btn btn-lg btn-success">Commander</button>
								</form>
							</div>
						</div>

						</br>
					</div>
				</div>

				<div class="row">
					<div class="col-md-2">
						<a href="${pageContext.request.contextPath}/Accueil"><i
							class="fa fa-3x fa-angle-double-left fa-fw pull-left text-primary"><div>retour</div></i></a>
					</div>
				</div>

			</div>
		</div>
		
		</br></br>

		<%@ include file="footer.jsp"%>
</body>
</html>