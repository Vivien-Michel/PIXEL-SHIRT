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
    <script src="${pageContext.request.contextPath}/bs_leftnavi.js"></script>
    <link href="${pageContext.request.contextPath}/design.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/button.css" rel="stylesheet" type="text/css">
<title>Recapitulatif</title>
</head>
<body>
<%@ include file="menu.jsp"%>
    <div class="section"></div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                    <%@ include file="barre_commande.jsp" %>
                    <p class="lead text-center text-primary">Vérification du Paiement</p>
                    <div class="col-md-12">
                      <table class="table">
                        <thead>
                          <tr>
                          <!--   <th><c:out value="Id" /></th>-->
						     <th></th>
						      <th><c:out value="Couleur" /></th>
						      <th><c:out value="Taille" /></th>
						      <th><c:out value="Modele" /></th>
						      <th><c:out value="Prix" /></th>
						     <!-- <th><c:out value="QuantiteTest" /></th> 
						      <th><c:out value="Quantite" /></th>
						      <th><c:out value="Suppression" /></th>	-->  
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                          
                           <c:forEach var="article" items="${sessionScope.panier.articles}">
	    <tr>
	      <td><a href="${pageContext.request.contextPath}/Detail?id=${article.key.id_article}"><img src="${pageContext.request.contextPath}/images/${article.key.id_article}"style="width:100px;"/></a></td>
	      <td><c:out value="${article.key.couleur}" /></td>
	      <td><c:out value="${article.key.taille}" /></td>
	      <td><c:out value="${article.key.modele}" /></td>
	      <td><c:out value="${article.key.prix} €" /></td>
	     <!--   <td>
	      	<form name="quantitearticleform${article.key.id_article}" method="POST" action="Gestion" id="form${article.key.id_article}">
		      	
		      	
		      	<input type="hidden" name="article_id" value="${article.key.id_article}"> 
		      	 <input type="number" id="quantite" min="1" name="quantite" size="5" value="${article.value}">
		      	<select class="dropdown">
<!--                   <option value="0" class="label">0</option> 
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
		      	<button type="submit" id="supprimer" name="supprimer" value="Supprimer" class="transparent-button fa fa-2x fa-fw fa-remove pull-left text-danger"></button>
		    </form>
	      </td> -->
	   </tr>
	  </c:forEach>
	  <tr>
	  	<td>Frais de port</td>
	  	<td></td>
	  	<td></td>
	  	<td></td>
	  	<td>${sessionScope.panier.fraisLivraison} €</td>
	  </tr>
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
                  <form id="retour" method="GET" action="${pageContext.request.contextPath}/Panier/ModePaiement">
                  </form>
                  <form id="transaction" method="POST" action="${pageContext.request.contextPath}/Transaction">
                  </form>
                    <button form="retour" class="btn btn-danger btn-lg" type="submit"><a href="#" style="color:#FFF">Retour Info. Paiement</a></button>
                    <button type="submit" name=transaction form = "transaction" class="btn btn-lg btn-success">Transaction</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <%@ include file="footer.jsp"%>
</body>
</html>