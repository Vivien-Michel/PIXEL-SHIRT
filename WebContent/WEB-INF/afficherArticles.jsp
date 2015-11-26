<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/tab.css" />
	<title>Ajout d'articles</title>
</head>
<body>
<%@ include file="menu.jsp" %>
	<table class="Tableau">
		 <tr class="legende">
	      <td><c:out value="Id" /></td>
	      <td><c:out value="Image"></c:out></td>
	      <td><c:out value="Couleur" /></td>
	      <td><c:out value="Taille" /></td>
	      <td><c:out value="Modele" /></td>
	      <td><c:out value="Prix" /></td>
	      <td><c:out value="Stock" /></td>
	   	</tr>
	   <c:forEach var="article" items="${listeArticles}">
	    <tr>
	      <td><c:out value="${article.id_article}" /></td>
	      <td><img src="${pageContext.request.contextPath}/images/${article.id_article}"style="width:100px;"/></td>
	      <td><c:out value="${article.couleur}" /></td>
	      <td><c:out value="${article.taille}" /></td>
	      <td><c:out value="${article.modele}" /></td>
	      <td><c:out value="${article.prix} €" /></td>
	      <td><c:out value="${article.quantite}" /></td>
	      <td><input type="number" id="quantite" min=0 name="quantite" size="5" form="form${article.id_article}" value="1"/></td>
	      <td> <form name="addarticleform${article.id_article}" method = "POST" action="Articles" id="form${article.id_article}">
	      			<input type="hidden" name="article_id" value="${article.id_article}">
	      			<input type="submit" value="Ajouter au panier" />
	      	   </form>
	      </td>
	   </tr>
	  </c:forEach>
	</table>
</body>
</html>