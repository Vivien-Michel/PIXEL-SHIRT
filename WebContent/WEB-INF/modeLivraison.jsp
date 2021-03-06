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
<title>Mode de Livraison</title>
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
                    <p class="lead text-primary">SoColissimo - Livraison gratuite – Livraison chez vous Colissimo 0,00€</p>
                    <form role="form" class="text-left" id="factform" method="POST" action="${pageContext.request.contextPath}/Panier/ModeDeLivraison">
                      <div class="btn-group">
                        <input type="radio" name="livraison" value="0">&nbsp;
                        <b>Livraison chez vous sans signature.</b>
                        <i>A l'adresse de votre choix, en mains propres ou en boîte aux lettres.</i>
                        <br>
                        <input type="radio" name="livraison" value="2">&nbsp;
                        <b>Livraison chez vous avec signature (frais supplémentaires de 2,00 €)</b>
                        <i>A l'adresse de votre choix, en mains propres ou en boîte aux lettres.</i>
                      </div>
                      <span class="erreur">${erreur}</span>
                      </form>
                      <p class="text-justify text-muted"></p>
                  </div>
                  
                  </br></br>
                  
                  <div class="row text-center">
                  <form id="retour" method="GET" action="${pageContext.request.contextPath}/Panier/AdresseLivraison">
                  </form>
                    <button form="retour" class="btn btn-danger btn-lg" type="submit">Retour Info. Livraison</button>
                    <button type="submit" class="btn btn-lg btn-success" form="factform">Suivant</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    </br></br></br>
    <%@ include file="footer.jsp"%>

</body>
</html>