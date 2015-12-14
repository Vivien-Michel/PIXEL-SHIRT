<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script src="${pageContext.request.contextPath}/bs_leftnavi.js"></script>
        <link href="${pageContext.request.contextPath}/designCreateA.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/button.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/form.css" rel="stylesheet" type="text/css">
        <title>Inscription</title>
    </head>
<body>
    
    	<%@ include file="menu.jsp"%>
    
<!--         <div class="navbar navbar-default navbar-fixed-top navbar-inverse"> -->
<!--             <div class="container"> -->
<!--                 <div class="navbar-header"> -->
<!--                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse"> -->
<!--                         <span class="sr-only">Toggle navigation</span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                     </button> -->
<!--                     <a class="navbar-brand" href="index.html"><span>Pixel-Shirt</span></a> -->
<!--                 </div> -->
<!--                 <div class="collapse navbar-collapse" id="navbar-ex-collapse"> -->
<!--                     <ul class="hidden-md hidden-sm hidden-xs nav navbar-nav navbar-right"> -->
<!--                         <li class="active"> -->
<!--                             <a href="#"><div style="text-align: center;"><font face="FontAwesome"><span style="line-height: 21px;">User</span></font></div></a> -->
<!--                         </li> -->
<!--                         <li class="dropdown" id="menu1"> -->
<!--                             <a href="#menu1" class="dropdown-toggle" data-toggle="dropdown">Login<b class="caret"></b></a> -->
<!--                             <div class="dropdown-menu"> -->
<!--                                 <form style="margin: 0px" accept-charset="UTF-8" action="/sessions" method="post"> -->
<!--                                     <div style="margin:0;padding:0;display:inline"> -->
<!--                                         <input name="utf8" type="hidden" value="✓"> -->
<!--                                         <input name="authenticity_token" type="hidden" value="4L/A2ZMYkhTD3IiNDMTuB/fhPRvyCNGEsaZocUUpw40="> -->
<!--                                     </div> -->
<!--                                     <fieldset class="textbox" style="padding:10px"> -->
<!--                                         <input style="margin-top: 8px" type="text" placeholder="Username"> -->
<!--                                         <input style="margin-top: 8px" type="password" placeholder="Passsword"> -->
<!--                                         <input class="btn-primary" name="commit" type="submit" value="Log In"> -->
<!--                                         <a href="createA.html">Create</a> -->
<!--                                     </fieldset> -->
<!--                                 </form> -->
<!--                             </div> -->
<!--                         </li> -->
<!--                         <li class="active"> -->
<!--                             <a href="indexPanier.html"><div style="text-align: center;"><font face="FontAwesome" style="line-height: 21px; display: inline !important;">Panier : </font><span class="badge">0</span></div></a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                     <ul class="nav navbar-nav navbar-right"></ul> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->





<!-- <form method="post" action="Inscription"> -->

<!--             <fieldset> -->

<!--                 <legend>Inscription</legend> -->

<!--                 <p>Vous pouvez vous inscrire via ce formulaire.</p> -->


<!--                 <label for="email">Adresse email <span class="requis">*</span></label> -->
<%--                 <input type="email" id="email" name="email" value="<c:out value="${utilisateur.mail}"/>" size="20" maxlength="60" /> --%>
<%-- 				<span class="erreur">${form.erreurs['email']}</span> --%>
<!--                 <br/> -->


<!--                 <label for="motdepasse">Mot de passe <span class="requis">*</span></label> -->

<!--                 <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" /> -->
<%-- 				<span class="erreur">${form.erreurs['motdepasse']}</span> --%>
<!--                 <br/> -->


<!--                 <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label> -->

<!--                 <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" /> -->
<%-- 				<span class="erreur">${form.erreurs['confirmation']}</span> --%>
<!--                 <br/> -->


<!--                 <label for="nom">Nom d'utilisateur</label> -->

<%--                 <input type="text" id="nom" name="nom" value="<c:out value="${utilisateur.nom}"/>" size="20" maxlength="20" /> --%>
<%-- 				<span class="erreur">${form.erreurs['nom']}</span> --%>
<!--                 <br/> -->
                
<!--                  <label for="nom">Prenom d'utilisateur</label> -->

<%--                 <input type="text" id="prenom" name="prenom" value="<c:out value="${utilisateur.prenom}"/>" size="20" maxlength="20" /> --%>
<%-- 				<span class="erreur">${form.erreurs['prenom']}</span> --%>
<!--                 <br/> -->


<!--                 <input type="submit" value="Inscription" class="sansLabel" /> -->

<!--                 <br/> -->
<%--                  <p class="${empty erreurs ? 'succes' : 'erreur'}">${form.resultat}</p> --%>
<!--             </fieldset> -->

<!--         </form> -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h1 class="text-center">Inscription</h1>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3">

                                        <form role="form" method="POST" action="Inscription">

                                            <div class="form-group">
                                                <label class="control-label">Civilité* :</label>
                                                <select class="form-control" name="civilite">
                                                    <option value="M" ${"M" == utilisateur.civilite ? 'selected="selected"' : ''}>M</option>
                              						 <option value="Mme" ${"Mme" == utilisateur.civilite ? 'selected="selected"' : ''}>Mme</option>
                                                </select>
                                            </div>

                                             <div class="form-group has-feedback">
                                             	<label class="control-label">Nom* :</label>                                             	 
                                                <input class="form-control" type="text" placeholder="Votre nom de famille" value="<c:out value="${utilisateur.nom}"/>" id="nom" name="nom">
                                                <span class="erreur">${form.erreurs['nom']}</span>
                                            	
                                                
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<label class="control-label">Prénom* :</label>
                                                <input class="form-control" type="text" placeholder="Votre prénom" id="prenom" name="prenom" value="<c:out value="${utilisateur.prenom}"/>">
<!--                                                  <span class="fa fa-check form-control-feedback"></span>                         -->
                                                <span class="erreur">${form.erreurs['prenom']}</span>
                                                
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<label class="control-label">Email* :</label>
                                                <input class="form-control" placeholder="Votre email" type="email" id="email" name="email" value="<c:out value="${utilisateur.mail}"/>" >
                                                <span class="erreur">${form.erreurs['email']}</span>
                                            </div>
                                            
                                           <div class="form-group has-feedback">
                                            	<label class="control-label">Adresse* :</label>
                                            	<input class="form-control" type="text" placeholder="Votre adresse" value="<c:out value="${utilisateur.adresse}"/>" id="adresse" name="adresse">
													<span class="erreur">${form.erreurs['adresse']}</span>
														
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<label class="control-label">Code postal* :</label>
                                            	<input class="form-control" type="text" placeholder="Votre code postal" value="<c:out value="${utilisateur.codePostal}"/>" id="codePostal" name="codePostal">
													  <span class="erreur">${form.erreurs['codePostal']}</span>
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<label class="control-label">Ville* :</label>
                                            	<input class="form-control" type="text" placeholder="Votre ville" value="<c:out value="${utilisateur.ville}"/>" id="ville" name="ville">
													<span class="erreur">${form.erreurs['ville']}</span>
                                            </div>                                            
                                            <div class="form-group has-feedback">
                                            	<label class="control-label">Mot de passe* :</label>
                                                <input class="form-control" type="password" placeholder="Votre mot de passe" id="motdepasse" name="motdepasse" value="">
<!--                                                  <span class="fa fa-check form-control-feedback"></span>  -->
                                                                                        
												<span class="erreur">${form.erreurs['motdepasse']}</span>
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<label class="control-label">Confirmation mot de passe* :</label>
                                                <input class="form-control" type="password" placeholder="Confirmation de votre mot de passe" id="confirmation" name="confirmation" value="">
                                                <!--  <span class="fa fa-check form-control-feedback"></span> -->
                                                <span class="erreur">${form.erreurs['confirmation']}</span>
                                            </div>
<!--                                              <input type="submit" value="" class="myButtonForm pull-right"/>   -->
                                             <button type="submit" class="pull-right btn btn-lg btn-success">Valider</button>
						                 </form>                                 	
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

		<p class="text-justify text-muted">Conformément à la loi
		informatique et libertés du 6 janvier 1978 telle que modifiée par la
		Loi n°2004-801 du 6 août 2004, le client dispose d'un droit
		d'opposition au traitement par Pixel-Shirt de ses données
		personnelles, d'un droit d'accès, de modification, de rectification et
		de suppression des données personnelles le concernant.</p>
		
        <%@ include file="footer.jsp" %>
    

</body></html>
