<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="dropit.js"></script>
<script type="text/javascript" src="jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="dropit.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/bs_leftnavi.js"></script>
<link href="${pageContext.request.contextPath}/designArticle.css" rel="stylesheet" type="text/css">
<title>Detail Article</title>
</head>
<body>


<%@ include file="menu.jsp"%>
    <div class="section"></div>
    <div class="section success">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="text-danger">${article.prix}€</h1>
            <img src="${pageContext.request.contextPath}/images/${article.id_article}" class="center-block img-responsive img-thumbnail">
            <!-- <a href="#"><img class="img-responsive" src="https://unsplash.imgix.net/photo-1421986527537-888d998adb74?w=1024&amp;q=50&amp;fm=jpg&amp;s=e633562a1da53293c4dc391fd41ce41d" width="10%"></a>-->
          </div>
          <div class="col-md-6">
            <h1>Tee-Shirt</h1>
            <form class="form-horizontal" role="form" action="Detail" method="POST">
              <div class="form-group has-feedback">
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
              </div>
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Modèle</label>
                </div>
                <div class="col-sm-10">
                  <select class="dropdown" id="modele" name="modele" onchange="this.form.submit()">
                    <option value="homme">Simple</option>
                    <option value="femme">Col rond</option>
                    <option value="enfant">Col V</option>
                  </select>
                </div>
              </div>
              <div class="form-group has-feedback">
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
              </div>
              
              <div class="form-group has-feedback">
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
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button form="addArticle" type="submit" class="btn btn-block btn-lg btn-primary">
                    <i class="fa fa-fw fa-plus-square"></i>Ajouter</button>
                </div>
              </div>
              </form>
              <form id="addArticle" action="${pageContext.request.contextPath}/Detail" method="POST">
            	<input type="hidden" name="article_id" value="${article.id_article}">
            </form>
            <h3>Description :</h3>
            <p class="text-left">
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1>Commentaires</h1>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-12">
            <ul class="list-group">
            <c:forEach var="commentaire" items="${article.commentaires}">
              <li class="list-group-item"></li>
              <li class="list-group-item">${commentaire}</li>
              <li class="list-group-item"></li>
              </c:forEach>
            </ul>
          </div>
        </div>
      </div>
    </div>
    
    <%@ include file="footer.jsp"%>



</body>
</html>