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
    <link href="${pageContext.request.contextPath}/form.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/button.css" rel="stylesheet" type="text/css">
<title>Adresse de facturation</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
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
                    <form role="form" class="text-left" id="factform" method="POST" action="${pageContext.request.contextPath}/Panier/AdresseFacturation">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group has-feedback">
                            <label class="control-label" for="exampleInputEmail1">Civilité* :</label>
                           <select class="form-control">
                               <option value="M" ${"M"== sessionScope.panier.client.civilite ? 'selected="selected"' : ''}>M</option>
                               <option value="Mme" ${"Mme"== sessionScope.panier.client.civilite ? 'selected="selected"' : ''}>Mme</option>
                           </select>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Nom* :</label>
                            <input class="form-control" id="exampleInputPassword1" type="text" value="<c:out value="${sessionScope.panier.client.nom}"/>">
                          </div>
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Prénom* :</label>
                            <input class="form-control" id="exampleInputPassword1" type="text" value="<c:out value="${sessionScope.panier.client.prenom}"/>">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Email* :</label>
                        <input class="form-control" id="exampleInputPassword1" type="email" value="<c:out value="${sessionScope.panier.client.mail}"/>">
                      </div>
                    
                      <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Adresse postale* :</label>
                        <input class="form-control" id="exampleInputPassword1" type="text" value="<c:out value="${sessionScope.panier.client.adresse}"/>">
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputEmail1">Code postal* :</label>
                            <input class="form-control" id="exampleInputEmail1" type="text" value="<c:out value="${sessionScope.panier.client.codePostal}"/>">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Ville* :</label>
                            <input class="form-control" id="exampleInputPassword1" type="text" value="<c:out value="${sessionScope.panier.client.ville}"/>">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Téléphone:</label>
                        <input class="form-control" id="exampleInputPassword1" type="text" value="<c:out value="${sessionScope.panier.client.telephone}"/>">
                      </div>
                      <div class="btn-group">
                        <input type="radio" name="livraison" value="meme">&nbsp; Livrer à cette adresse
                        <br>
                        <input type="radio" name="livraison" value="differente">&nbsp; Livrer à une adresse différente</div>
                        <span class="erreur">${erreur}</span>
                    </form>
                  </div>
                  
                  </br></br>
                  
                  <div class="row text-center">
                  <form id="retour" method="GET" action="${pageContext.request.contextPath}/Panier/Gestion">
                  </form>
                  	<button form="retour" class="btn btn-danger btn-lg" type="submit">Retour Panier</button>
                    <button type="submit" class="btn btn-lg btn-success" form="factform">Suivant</button>
                  </div>
                  
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    </br>                  
                  <p class="text-justify text-muted">Conformément à la loi informatique et libertés du 6 janvier 1978 telle
                    que modifiée par la Loi n°2004-801 du 6 août 2004, le client dispose d'un
                    droit d'opposition au traitement par Pixel-Shirt de ses données personnelles,
                    d'un droit d'accès, de modification, de rectification et de suppression
                    des données personnelles le concernant.</p>
 <%@ include file="footer.jsp" %>
</body>
</html>