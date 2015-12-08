<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="bs_leftnavi.js"></script>
    <link href="design.css" rel="stylesheet" type="text/css">
    <title>Pixel Shirt</title>
  </head>
 <body>


	<%@ include file="menu.jsp"%>
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
                <form role="form" method="post" action="Recherche">
                  <div class="form-group">
                    <div class="input-group">
                   
                      <input type="text" class="form-control" placeholder="Search" id="tags" name="tags">
                      <span class="input-group-btn">
                        <input type="submit" value="Go" class="btn btn-success" />
                      </span>
              
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
                      <a href="${pageContext.request.contextPath}/Detail"><img src="${pageContext.request.contextPath}/images/${article.id_article}"></a>
                      <div class="carousel-caption">
                        <h2>${article.taille} ${article.couleur}</h2>
                        <p></p>
                      </div>
                    </div>
                  </div>
                  <!--  <a class="left carousel-control" href="#carousel-example" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
                  <a class="right carousel-control" href="#carousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
                	-->
                </div>
                <a href="${pageContext.request.contextPath}/Ajout"><i class="fa fa-2x fa-fw fa-plus"></i></a>
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


