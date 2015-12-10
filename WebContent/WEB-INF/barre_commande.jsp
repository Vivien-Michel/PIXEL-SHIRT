<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<ul class="breadcrumb" draggable="true">
                      <li >
                     	 <a ${"/Pixel_Shirt/Panier/AdresseFacturation" == requestScope['javax.servlet.forward.request_uri']  ? 'class ="active"' : ''} href = "${pageContext.request.contextPath}/Panier/AdresseFacturation"><span class="badge">1</span>Info. Facturation</a>
                      </li>
                      <li>
                        <a ${"/Pixel_Shirt/Panier/AdresseLivraison" == requestScope['javax.servlet.forward.request_uri']  ? 'class ="active"' : ''} href="${pageContext.request.contextPath}/Panier/AdresseLivraison"><span class="badge">2</span> Info. Livraison</a>
                      </li>
                      <li>
                        <a ${"/Pixel_Shirt/Panier/ModeDeLivraison" == requestScope['javax.servlet.forward.request_uri']  ? 'class ="active"' : ''} href="${pageContext.request.contextPath}/Panier/ModeDeLivraison"><span class="badge">3</span> Mode Livraison</a>
                      </li>
                      <li>
                        <a ${"/Pixel_Shirt/Panier/ModePaiement" == requestScope['javax.servlet.forward.request_uri']  ? 'class ="active"' : ''} href="${pageContext.request.contextPath}/Panier/ModePaiement"><span class="badge">4</span> Info. Paiement</a>
                      </li>
                      <li>
                        <a ${"/Pixel_Shirt/Panier/Recapitulatif" == requestScope['javax.servlet.forward.request_uri']  ? 'class ="active"' : ''} href="${pageContext.request.contextPath}/Panier/Recapitulatif""><span class="badge">5</span> Recapitulatif</a>
                      </li>
              </ul>

</body>
</html>