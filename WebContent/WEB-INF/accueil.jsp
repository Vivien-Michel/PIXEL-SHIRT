<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
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
<title>Pixel Shirt</title>
</head>
<body>

	<%@ include file="menu.jsp"%>

	<div class="section" style="top:40px;">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="gw-sidebar">
						<div id="gw-sidebar" class="gw-sidebar">
							<div class="nano-content">
								<ol>
									<li></li>
									<li></li>
								</ol>
								<form role="form" class="text-left" id="searchform"
									method="POST"
									action="${pageContext.request.contextPath}/Recherche">
									<ul class="gw-nav gw-nav-list text-left">
										<li class="init-un-active"><a href="javascript:void(0)">
												<span class="gw-menu-text">Selection des options</span>
										</a></li>
										<li class="init-arrow-down"><a href="javascript:void(0)">
												<span class="gw-menu-text">Couleur</span> <b
												class="gw-arrow"></b>
										</a>
											<ul class="gw-submenu">
												<li>
													<div class="btn-group">
														&nbsp; <input type="checkbox" name="tags" value="blanc">&nbsp;
														<b>Blanc</b> <br>&nbsp; <input type="checkbox"
															name="tags" value="noir">&nbsp; <b>Noir</b> <br>&nbsp;
														<input type="checkbox" name="tags" value="vert">&nbsp;
														<b>Vert</b> <br>&nbsp; <input type="checkbox"
															name="tags" value="bleu">&nbsp; <b>Bleu</b> <br>&nbsp;
														<input type="checkbox" name="tags" value="rose">&nbsp;
														<b>Rose</b> <br>&nbsp; <input type="checkbox"
															name="tags" value="rouge">&nbsp; <b>Rouge</b> <br>&nbsp;
														<input type="checkbox" name="tags" value="orange">&nbsp;
														<b>Orange</b>
													</div>
												</li>
											</ul></li>
										<li class="init-arrow-down"><a href="javascript:void(0)">
												<span class="gw-menu-text">Taille</span> <b
												class="gw-arrow icon-arrow-up8"></b>
										</a>
											<ul class="gw-submenu">
												<li>
													<div class="btn-group">
														&nbsp; <input type="checkbox" name="tags" value="xs">&nbsp;
														<b>XS</b> <br>&nbsp; <input type="checkbox"
															name="tags" value="s">&nbsp; <b>S</b> <br>&nbsp;
														<input type="checkbox" name="tags" value="m">&nbsp;
														<b>M</b> <br>&nbsp; <input type="checkbox"
															name="tags" value="l">&nbsp; <b>L</b> <br>&nbsp;
														<input type="checkbox" name="tags" value="xl">&nbsp;
														<b>XL</b> <br>&nbsp; <input type="checkbox"
															name="tags" value="xxl">&nbsp; <b>XXL</b>
													</div>
												</li>
											</ul></li>
										<li class="init-arrow-down"><a href="javascript:void(0)">
												<span class="gw-menu-text">Modèle</span> <b></b>
										</a>
											<ul class="gw-submenu">
												<li>
													<div class="btn-group">
														&nbsp; <input type="checkbox" name="tags" value="homme">&nbsp;
														<b>Homme</b> <br>&nbsp; <input type="checkbox"
															name="tags" value="femme">&nbsp; <b>Femme</b> <br>&nbsp;
														<input type="checkbox" name="tags" value="enfant">&nbsp;
														<b>Enfant</b>
													</div>
												</li>
											</ul></li>
									</ul>
									<p style="text-align: center;">
										<button type="submit" class="btn btn-lg btn-success">Valider</button>
									</p>
									<input type="hidden" name="tagsMenu" value="myForm" />
								</form>
							</div>
						</div>
					</div>
				</div>

				<!-- Separation du menu lateral et menu horizontal -->
				<div class="col-md-9">
					<c:forEach var="article" items="${listeArticles}">

						<div class="col-md-3">
							<div id="carousel-example" data-interval="false"
								class="carousel slide" data-ride="carousel">
								<div class="carousel-inner">
									<div class="item active">
										<a
											href="${pageContext.request.contextPath}/Detail?id=${article.id_article}"><img
											src="${pageContext.request.contextPath}/images/${article.id_article}"></a>
										<a
											href="${pageContext.request.contextPath}/Detail?id=${article.id_article}">
											<div class="carousel-caption">
												<h2>${article.taille}${article.couleur}</h2>
											</div>
										</a>
									</div>
								</div>
								<!--  <a class="left carousel-control" href="#carousel-example" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
                  <a class="right carousel-control" href="#carousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
                	-->
							</div>
							<form name="addarticleform${article.id_article}" method="POST"
								action="${pageContext.request.contextPath}/Articles"
								id="form${article.id_article}">
								<input type="hidden" id="quantite" name="quantite"
									form="form${article.id_article}" value="1" />
								</td>
							</form>
							<button class="btn-add" form="form${article.id_article}"
								name="article_id" value="${article.id_article}">
								<i class="fa fa-2x fa-fw fa-plus"></i>
							</button>
							<a
								href="${pageContext.request.contextPath}/Personnalisation?id=${article.id_article}"><i
								class="fa fa-2x fa-fw fa-edit"></i></a> <i
								class="fa fa-3x pull-right text-danger"><c:out
									value="${article.prix} €" /></i>
							<h2>
								<c:out value="${article.modele}" />
							</h2>
						</div>
					</c:forEach>
			</div>
		</div>

		<div class="row">
				<div class="col-md-12 text-center">
					<ul class="pagination pagination-lg">
						<li><a href="#">Précédent</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">Suivant</a></li>
					</ul>
				</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>


</body>
</html>


