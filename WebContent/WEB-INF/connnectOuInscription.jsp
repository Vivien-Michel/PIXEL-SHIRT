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

                                        <form role="form" method="POST" action="${pageContext.request.contextPath}/ConnnexionOrInscription">

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
                                                <span class="fa fa-check form-control-feedback"></span>
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

</body>
</html>