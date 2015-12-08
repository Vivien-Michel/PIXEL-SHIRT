<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
=======
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
>>>>>>> a0ec8700e816bdfe30747f0228c8b69218d936b8
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
<title>Adresse de facturation</title>
</head>
<body>

<<<<<<< HEAD
	<%@ include file="menu.jsp" %>
=======
<div class="navbar navbar-default navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"><span>Pixel-Shirt</span></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="hidden-md hidden-sm hidden-xs nav navbar-nav navbar-right">
            
            
            
            
             <c:choose>
				<c:when test="${not empty sessionScope.panier.client}">
					 <li class="active">
              			<a href="#"><div style="text-align: center;"><font face="FontAwesome"><span style="line-height: 21px;">${sessionScope.panier.client.nom} ${sessionScope.panier.client.prenom}</span></font></div></a>
            			</li>
				</c:when>
			</c:choose>
            
<!--             <li class="active"> -->
<!--               <a href="#"><div style="text-align: center;"><font face="FontAwesome"><span style="line-height: 21px;">User</span></font></div></a> -->
<!--             </li> -->
            <li class="dropdown" id="menu1">
              <a href="#menu1" class="dropdown-toggle" data-toggle="dropdown">Login<b class="caret"></b></a>
              <div class="dropdown-menu">
              
                <form style="margin: 0px" accept-charset="UTF-8" action="/sessions" method="post">
                  <div style="margin:0;padding:0;display:inline">
                    <input name="utf8" type="hidden" value="✓">
                    <input name="authenticity_token" type="hidden" value="4L/A2ZMYkhTD3IiNDMTuB/fhPRvyCNGEsaZocUUpw40=">
                  </div>
<!--                   <fieldset class="textbox" style="padding:10px"> -->
<!--                     <input style="margin-top: 8px" type="text" placeholder="Username"> -->
<!--                     <input style="margin-top: 8px" type="password" placeholder="Passsword"> -->
<!--                     <input class="btn-primary" name="commit" type="submit" value="Log In"> -->
<!--                     <a href="createA.html">Create</a> -->
<!--                   </fieldset> -->

					<c:choose>
							<c:when test="${empty sessionScope.panier.client}">
							
							<fieldset class="textbox" style="padding: 10px">
								<input style="margin-top: 8px" type="email" placeholder="Mail"  id="email" name="email" value="<c:out value="${param.email}"/>"/>
								<span class="erreur">${form.erreurs['email']}</span>					
								
								
								<input type="password" style="margin-top: 8px" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20"  placeholder="Passsword"/>
								<span class="erreur">${form.erreurs['motdepasse']}</span>
								
								
								
								<input class="btn-primary" name="commit" type="submit" value="Connexion">
								<a href="/Pixel_Shirt/Inscription">Create</a>
								<br/>	
								<p class="${empty erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
									
								
							</fieldset>
							</c:when>
							</c:choose>

                </form>
                
              </div>
            </li>
            <li class="active">
              <a href="/Pixel_Shirt/Panier/Gestion""><div style="text-align: center;"><font face="FontAwesome" style="line-height: 21px; display: inline !important;">Panier : </font><span class="badge">${sessionScope.panier.size}</span></div></a>
            </li>
            
            
            
            
          </ul>
          <ul class="nav navbar-nav navbar-right"></ul>
        </div>
      </div>
    </div>
    
    
    
    
>>>>>>> a0ec8700e816bdfe30747f0228c8b69218d936b8
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
                            <label class="control-label" for="exampleInputEmail1">Civilité*:</label>
                           <select class="form-control">
                                                    <option>M</option>
                                                    <option>Mme</option>
                           </select>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Nom*:</label>
                            <input class="form-control" id="exampleInputPassword1" type="text" value="${sessionScope.panier.client.nom}">
                          </div>
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Prénom*:</label>
                            <input class="form-control" id="exampleInputPassword1" type="text" value="${sessionScope.panier.client.prenom}">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Adresse email* :</label>
                        <input class="form-control" id="exampleInputPassword1" type="email" value="${sessionScope.panier.client.mail}">
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputEmail1">Code Postal*:</label>
                            <input class="form-control" id="exampleInputEmail1" type="text" value="${sessionScope.panier.client.codePostal}">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Ville*:</label>
                            <input class="form-control" id="exampleInputPassword1" type="text" value="${sessionScope.panier.client.ville}">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Téléphone:</label>
                        <input class="form-control" id="exampleInputPassword1" type="text" value="${sessionScope.panier.client.telephone}">
                      </div>
                      <div class="btn-group">
                        <input type="radio" name="livraison" value="meme">&nbsp; Livrer à cette adresse
                        <br>
                        <input type="radio" name="livraison" value="differente">&nbsp; Livrer à une adresse différente</div>
                    </form>
                  </div>
                  <div class="row text-center">
                    <button type="submit" class="btn btn-danger btn-lg"><a href="${pageContext.request.contextPath}/Panier/Gestion" style="color:#FFF">Retour Panier</a></button>
                    <button type="submit" class="btn btn-lg btn-success" form="factform">Suivant</button>
                  </div>
                  <p class="text-justify text-muted">Conformément à la loi informatique et libertés du 6 janvier 1978 telle
                    que modifiée par la Loi n°2004-801 du 6 août 2004, le client dispose d'un
                    droit d'opposition au traitement par Pixel-Shirt de ses données personnelles,
                    d'un droit d'accès, de modification, de rectification et de suppression
                    des données personnelles le concernant.</p>
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