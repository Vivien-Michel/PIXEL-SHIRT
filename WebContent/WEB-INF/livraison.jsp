<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="bs_leftnavi.js"></script>
    <link href="${pageContext.request.contextPath}/design.css" rel="stylesheet" type="text/css">
<title>Mode de livraison</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<p>form qui demande l'adresse du client</p>


<div class="navbar navbar-default navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/Pixel_Shirt/Accueil"><span>Pixel-Shirt</span></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="hidden-md hidden-sm hidden-xs nav navbar-nav navbar-right">
            <li class="active">
              <a href="#"><div style="text-align: center;"><font face="FontAwesome"><span style="line-height: 21px;">User</span></font></div></a>
            </li>
            <li class="dropdown" id="menu1">
              <a href="#menu1" class="dropdown-toggle" data-toggle="dropdown">Login<b class="caret"></b></a>
              <div class="dropdown-menu">
                <form style="margin: 0px" accept-charset="UTF-8" action="/sessions" method="post">
                  <div style="margin:0;padding:0;display:inline">
                    <input name="utf8" type="hidden" value="✓">
                    <input name="authenticity_token" type="hidden" value="4L/A2ZMYkhTD3IiNDMTuB/fhPRvyCNGEsaZocUUpw40=">
                  </div>
                  <fieldset class="textbox" style="padding:10px">
                    <input style="margin-top: 8px" type="text" placeholder="Username">
                    <input style="margin-top: 8px" type="password" placeholder="Passsword">
                    <input class="btn-primary" name="commit" type="submit" value="Log In">
                    <a href="createA.html">Create</a>
                  </fieldset>
                </form>
              </div>
            </li>
            <li class="active">
              <a href="indexPanier.html"><div style="text-align: center;"><font face="FontAwesome" style="line-height: 21px; display: inline !important;">Panier : </font><span class="badge">0</span></div></a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right"></ul>
        </div>
      </div>
    </div>
    <div class="section"></div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                    <ul class="breadcrumb">
                      <li>
                        <a href="#"><span class="badge">1</span> Info. Facturation </a>
                      </li>
                      <li class="active">
                        <span class="badge">2</span>Info. Livraison</li>
                      <li>
                        <a href="#"><span class="badge">3</span> Mode Livraison</a>
                      </li>
                      <li>
                        <a href="#"><span class="badge">4</span> Info. Paiement</a>
                      </li>
                      <li>
                        <a href="#"><span class="badge">5</span> Verif. Paiement</a>
                      </li>
                    </ul>
                    <form role="form" class="text-left">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group has-feedback">
                            <label class="control-label" for="exampleInputEmail1">Civilité*:</label>
                            <input class="form-control" id="exampleInputEmail1" type="text">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Nom*:</label>
                            <input class="form-control" id="exampleInputPassword1" type="text">
                          </div>
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Prénom*:</label>
                            <input class="form-control" id="exampleInputPassword1" type="text">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Adresse email* :</label>
                        <input class="form-control" id="exampleInputPassword1" type="email">
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputEmail1">Code Postal*:</label>
                            <input class="form-control" id="exampleInputEmail1" type="text">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Ville*:</label>
                            <input class="form-control" id="exampleInputPassword1" type="text">
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Téléphone:</label>
                        <input class="form-control" id="exampleInputPassword1" type="text">
                      </div>
                    </form>
                    <p class="text-justify text-muted"></p>
                  </div>
                  <div class="row text-center">
                    <button type="submit" class="btn btn-danger btn-lg">
                      <a href="InfoAdresseFacturation.html" style="color:#FFF">Retour Info. Facturation</a>
                    </button>
                    <a href="">
                    <button type="submit" class="btn btn-lg btn-success">Suivant</button>
                  </a>
                  </div>
                  <a href="">
                </a>
                </div>
                <a href="">
              </a>
              </div>
              <a href="">
            </a>
            </div>
            <a href="">
          </a>
          </div>
          <a href="">
        </a>
        </div>
        <a href="">
      </a>
      </div>
      <a href="">
    </a>
    </div>
    <a href="">
    </a>
    <footer class="section section-primary">
      <a href="">
      </a>
      <div class="container">
        <a href="">
        </a>
        <div class="row">
          <a href="">
          <div class="col-sm-6 text-left">
            <h1>Pixel-Shirt</h1>
            <p></p>
          </div>
          </a>
          <div class="col-sm-6">
            <a href="">
            <p class="text-info text-right">
              <br>
              <br>
            </p>
            </a>
            <div class="row">
              <a href="">
              </a>
              <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                <a href="">
                </a>
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