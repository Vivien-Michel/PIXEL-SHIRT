<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="bs_leftnavi.js"></script>
    <link href="${pageContext.request.contextPath}/design.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
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
          <a class="navbar-brand" href="/Pixel_Shirt/Accueil"><span>Pixel-Shirt</span></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="hidden-md hidden-sm hidden-xs nav navbar-nav navbar-right">
            <li class="active">
              <a href="#"><div style="text-align: center;"><font face="FontAwesome"><span style="line-height: 21px;">User</span></font></div></a>
            </li>
            <li class="dropdown" id="menu1">
              <a href="#menu1" class="dropdown-toggle" data-toggle="dropdown">Login<b class="caret"></b></a>
              <div class="dropdown-menu">
                <form style="margin: 0px" accept-charset="UTF-8" action="/sessions" method="post">
                  <div style="margin:0;padding:0;display:inline">
                    <input name="utf8" type="hidden" value="✓">
                    <input name="authenticity_token" type="hidden" value="4L/A2ZMYkhTD3IiNDMTuB/fhPRvyCNGEsaZocUUpw40=">
                  </div>
                  <fieldset class="textbox" style="padding:10px">
                    <input style="margin-top: 8px" type="text" placeholder="Username">
                    <input style="margin-top: 8px" type="password" placeholder="Passsword">
                    <input class="btn-primary" name="commit" type="submit" value="Log In">
                    <a href="createA.html">Create</a>
                  </fieldset>
                </form>
              </div>
            </li>
            <li class="active">
              <a href="indexPanier.html"><div style="text-align: center;"><font face="FontAwesome" style="line-height: 21px; display: inline !important;">Panier : </font><span class="badge">0</span></div></a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right"></ul>
        </div>
      </div>
    </div>
    <div class="section"></div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                    <ul class="breadcrumb" draggable="true">
                      <li>
                        <a href="#"><span class="badge">1</span> Info. Facturation</a>
                      </li>
                      <li>
                        <a href="#"><span class="badge">2</span> Info. Livraison</a>
                      </li>
                      <li class="active">
                        <a href="#"><span class="badge">3</span>Mode Livraison</a>
                      </li>
                      <li>
                        <a href="#"><span class="badge">4</span> Info. Paiement</a>
                      </li>
                      <li class="active">
                        <span class="badge">5</span>Verif. Paiement</li>
                    </ul>
                    <p class="lead text-center text-primary">Vérification du Paiement</p>
                    <div class="col-md-12">
                      <table class="table">
                        <thead>
                          <tr>
                          <th><c:out value="Id" /></th>
					      <th><c:out value="Couleur" /></th>
					      <th><c:out value="Taille" /></th>
					      <th><c:out value="Modele" /></th>
					      <th><c:out value="Prix" /></th>
					      <th><c:out value="QuantiteTest" /></th>
					      <th><c:out value="Quantite" /></th>
					      <th><c:out value="Bouton" /></th>	      
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                          
                           <c:forEach var="article" items="${sessionScope.panier.articles}">
	    <tr>
	      <td><c:out value="${article.key.id_article}" /></td>
	      <td><c:out value="${article.key.couleur}" /></td>
	      <td><c:out value="${article.key.taille}" /></td>
	      <td><c:out value="${article.key.modele}" /></td>
	      <td><c:out value="${article.key.prix} €" /></td>
	      <td><c:out value="${article.value}" /></td>
	      <td>
	      	<form name="quantitearticleform${article.key.id_article}" method="POST" action="Gestion" id="form${article.key.id_article}">
		      	
		      	
		      	<input type="hidden" name="article_id" value="${article.key.id_article}"> 
		      	<!-- <input type="number" id="quantite" min="1" name="quantite" size="5" value="${article.value}">-->
		      	<select class="dropdown">
<!--                   <option value="0" class="label">0</option> -->
                  <option value="1" ${"1"== article.value ? 'selected="selected"' : ''}>1</option>
                  <option value="2" ${"2"== article.value ? 'selected="selected"' : ''}>2</option>
                  <option value="3" ${"3"== article.value ? 'selected="selected"' : ''}>3</option>
                  <option value="4" ${"4"== article.value ? 'selected="selected"' : ''}>4</option>
                  <option value="5" ${"5"== article.value ? 'selected="selected"' : ''}>5</option>
                  <option value="6" ${"6"== article.value ? 'selected="selected"' : ''}>6</option>
                  <option value="7" ${"7"== article.value ? 'selected="selected"' : ''}>7</option>
                  <option value="8" ${"8"== article.value ? 'selected="selected"' : ''}>8</option>
                  <option value="9" ${"9"== article.value ? 'selected="selected"' : ''}>9</option>
                  <option value="10" ${"10"== article.value ? 'selected="selected"' : ''}>10</option>
                </select>
		      	<input type="submit" id="quantite2" name="quantite2" value="ok" />
		      	
		      	
		    
		      	
		      	
		    </form>
	      </td>
	      <td>
	      	<form name="supprimerarticleform${article.key.id_article}" method="POST" action="Gestion" id="form${article.key.id_article}">
		      	<input type="hidden" name="article_id" value="${article.key.id_article}">
		      	<input type="submit" id="supprimer" name="supprimer" value="Supprimer" class="fa fa-2x fa-fw fa-remove pull-left text-danger" />
		    </form>
	      </td>
	   </tr>
	  </c:forEach>
                          
                          
                          
                          
                          
            
                        </tbody>
                      </table>
                      <hr>
                    </div>
                  </div>
                  <div class="col-md-12 text-right">
                    <h1 class="text-right">TOTAL :</h1>
                    <h1 class="text-danger text-right">${sessionScope.panier.total} €</h1>
                  </div>
                  <div class="row text-center">
                    <button class="btn btn-danger btn-lg" type="button">
                      <a href="infoPaiement.html" style="color:#FFF">Retour Info. Paiement</a>
                    </button>
                    <button type="submit" class="btn btn-lg btn-success">Transaction</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="section section-primary">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 text-left">
            <h1>Pixel-Shirt</h1>
            <p></p>
          </div>
          <div class="col-sm-6">
            <p class="text-info text-right">
              <br>
              <br>
            </p>
            <div class="row">
              <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 hidden-xs text-right">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
</body>
</html>