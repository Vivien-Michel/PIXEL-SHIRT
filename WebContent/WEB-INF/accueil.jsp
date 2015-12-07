<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="bs_leftnavi.js"></script>
    <link href="design.css" rel="stylesheet" type="text/css">
  </head><body>


	<%@ include file="menu.jsp"%>


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
						<a href="#">
							<div style="text-align: center;">
								<font face="FontAwesome"><span style="line-height: 21px;">${sessionScope.panier.client.nom} ${sessionScope.panier.client.prenom}</span></font>	
										
							</div>
						</a>
					</li>
				</c:when>
			</c:choose>
				<li class="dropdown" id="menu1"><a href="#menu1"
					class="dropdown-toggle" data-toggle="dropdown">Login<b
						class="caret"></b></a>
					<div class="dropdown-menu">
						<form style="margin: 0px" accept-charset="UTF-8"
							action="Connexion" method="post">
							<div style="margin: 0; padding: 0; display: inline">
								<input name="utf8" type="hidden" value="✓"> <input
									name="authenticity_token" type="hidden"
									value="4L/A2ZMYkhTD3IiNDMTuB/fhPRvyCNGEsaZocUUpw40=">
							</div>
							
<!-- 							A METTRE DANS UN TRUC A PART
<!-- 							Faire si connecter accessible  -->
<!-- 							sinon pas accessible -->
<!-- 							 --> 
							 
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
							
							<c:otherwise>
        						
    						</c:otherwise>
							
							
							</c:choose>
							</form>
					</div></li>
				<li class="active"><a href="/Pixel_Shirt/Panier/Gestion">
				<div style="text-align: center;">
					<font face="FontAwesome" style="line-height: 21px; display: inline !important;">Panier : </font><span class="badge">${sessionScope.panier.size}</span>
				</div></a></li>

          </ul>
          <ul class="nav navbar-nav navbar-right"></ul>
        </div>
      </div>
    </div>
    
    
    
    <div class="section"></div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="gw-sidebar">
              <div id="gw-sidebar" class="gw-sidebar">
                <div class="nano-content">
                  <ol>
                    <li></li>
                    <li></li>
                  </ol>
                  <ul class="gw-nav gw-nav-list text-left">
                    <li class="init-un-active">
                      <a href="javascript:void(0)"> <span class="gw-menu-text">Navigation Menu</span> </a>
                    </li>
                    <li class="init-arrow-down">
                      <a href="javascript:void(0)"> <span class="gw-menu-text">Category 1</span> <b class="gw-arrow"></b> </a>
                      <ul class="gw-submenu">
                        <li>
                          <a href="javascript:void(0)">Menu 1</a>
                        </li>
                      </ul>
                    </li>
                    <li class="init-arrow-down">
                      <a href="javascript:void(0)"> <span class="gw-menu-text">Category 2</span> <b class="gw-arrow icon-arrow-up8"></b> </a>
                      <ul class="gw-submenu">
                        <li>
                          <a href="javascript:void(0)">Menu 1</a>
                        </li>
                        <li>
                          <a href="javascript:void(0)">Menu 2</a>
                        </li>
                        <li>
                          <a href="javascript:void(0)">Menu 3</a>
                        </li>
                      </ul>
                    </li>
                    <li class="init-arrow-down">
                      <a href="javascript:void(0)"> <span class="gw-menu-text">Category 3</span> <b></b> </a>
                      <ul class="gw-submenu">
                        <li>
                          <a href="javascript:void(0)">Menu 1</a>
                        </li>
                        <li>
                          <a href="javascript:void(0)">Menu 2</a>
                        </li>
                        <li>
                          <a href="javascript:void(0)">Menu 3</a>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          
          

<!-- Separation du menu lateral et menu horizontal -->

          <div class="col-md-9">
            <div class="row">
              <div class="col-md-offset-3 col-md-6">
                <form role="form">
                  <div class="form-group">
                    <div class="input-group">
                    
                    <form method="post" action="Recherche">
                      <input type="text" class="form-control" placeholder="Search" id="tags" name="tags">
                      <span class="input-group-btn">
                        <a class="btn btn-success" type="submit">Go</a>
                      </span>
                     </form>
                     
                     
                      <form method="post" action="Recherche">
						<input placeholder="Recherche ?" id="tags" name="tags" value="" size="20" maxlength="60" />
						<input type="submit" value="Recherche Article" class="sansLabel" />
					</form>
					<table class="Tableau">
					<c:forEach var="article" items="${listeArticles}">
					    <tr>
					      <td><c:out value="${article.id_article}" /></td>
					      <td><c:out value="${article.couleur}" /></td>
					      <td><c:out value="${article.taille}" /></td>
					      <td><c:out value="${article.modele}" /></td>
					      <td><c:out value="${article.prix} €" /></td>	      
						</tr>
					</c:forEach>
					</table> 
                      
                      
                      
                      
                      
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <ul class="breadcrumb text-left">
              <li>
                <a href="#">Home</a>
              </li>
              <li>
                <a href="#">Library</a>
              </li>
              <li class="active">Data</li>
            </ul>
            <div class="row">        
            
            <c:forEach var="article" items="${listeArticles}">
	
              <div class="col-md-3">
                <div id="carousel-example" data-interval="false" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="item active">
                      <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png">
                      <div class="carousel-caption">
                        <h2>Title</h2>
                        <p></p>
                      </div>
                    </div>
                  </div>
                  <a class="left carousel-control" href="#carousel-example" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
                  <a class="right carousel-control" href="#carousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
                </div>
                <a href="/Pixel_Shirt/UnArticle"><i class="fa fa-2x fa-fw fa-plus"></i></a>
                <a href="indexArticlePerso.html"><i class="fa fa-2x fa-fw fa-edit"></i></a>
                <i class="fa fa-2x pull-right text-danger"><c:out value="${article.prix} €" /></i>
                <h2><c:out value="${article.modele}" /></h2>
              </div>    
	</c:forEach>
              
              
            </div>
            <div class="col-md-12 text-center">
              <ul class="pagination pagination-lg">
                <li>
                  <a href="#">Prev</a>
                </li>
                <li>
                  <a href="#">1</a>
                </li>
                <li>
                  <a href="#">2</a>
                </li>
                <li>
                  <a href="#">3</a>
                </li>
                <li>
                  <a href="#">4</a>
                </li>
                <li>
                  <a href="#">5</a>
                </li>
                <li>
                  <a href="#">Next</a>
                </li>
              </ul>
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
  

</body></html>


