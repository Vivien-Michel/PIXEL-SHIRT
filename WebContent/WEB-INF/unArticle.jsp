<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<div class="navbar navbar-default navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"><span>Pixel-Shirt</span></a>
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
                    <input class="btn-success" name="commit" type="submit" value="Create">
                  </fieldset>
                </form>
              </div>
            </li>
            <li class="active">
              <a href="#"><div style="text-align: center;"><font face="FontAwesome" style="line-height: 21px; display: inline !important;">Panier : </font><span class="badge">0</span></div></a>
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
          <div class="col-md-6">
            <h1 class="text-danger">10,99€</h1>
            <img src="https://unsplash.imgix.net/photo-1415871989540-61fe9268d3c8?w=1024&amp;q=50&amp;fm=jpg&amp;s=d4ccd3c8661437d6e3ea5e88c63c647f" class="center-block img-responsive img-thumbnail">
            <a href="#"><img class="img-responsive" src="https://unsplash.imgix.net/photo-1421986527537-888d998adb74?w=1024&amp;q=50&amp;fm=jpg&amp;s=e633562a1da53293c4dc391fd41ce41d" width="10%"></a>
          </div>
          <div class="col-md-6">
            <h1>Tee-Shirt</h1>
            <form class="form-horizontal" role="form">
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Taille</label>
                </div>
                <div class="col-sm-10">
                  <select class="dropdown">
                    <option value="" class="label">XS</option>
                    <option value="1">S</option>
                    <option value="2">M</option>
                    <option value="3">L</option>
                    <option value="4">XL</option>
                    <option value="5">XXL</option>
                  </select>
                </div>
              </div>
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Modèle</label>
                </div>
                <div class="col-sm-10">
                  <select class="dropdown">
                    <option value="" class="label">Simple</option>
                    <option value="1">Col rond</option>
                    <option value="2">Col V</option>
                  </select>
                </div>
              </div>
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Couleur</label>
                </div>
                <div class="col-sm-10">
                  <select class="dropdown">
                    <option value="" class="label">Blanc</option>
                    <option value="1">Noir</option>
                    <option value="2">Vert</option>
                    <option value="3">Bleu</option>
                    <option value="4">Jaune</option>
                    <option value="5">Rose</option>
                    <option value="6">Rouge</option>
                    <option value="7">Orange</option>
                  </select>
                </div>
              </div>
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Quantité</label>
                </div>
                <div class="col-sm-10">
                  <select class="dropdown">
                    <option value="0" class="label">0</option>
                    <option value="1">1</option>
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
                  <button type="submit" class="btn btn-block btn-lg btn-primary">
                    <i class="fa fa-fw fa-plus-square"></i>Ajouter</button>
                </div>
              </div>
            </form>
            <h3>Description :</h3>
            <p class="text-left">adz dzadzadzzaddadza zadzaazeadzadzadzadzdzadzazeazjhezbrze
              <br>rdzadzdzaadz
              <br>zezdzaadadzadzazdddazazdzadazdazda
              <br>azddzadzadzazad azzda
              <br>zeazzdaazazd&nbsp;
              <br>fddazdzaazddzadza
              <br>zeazaazdzazadadzazdzadzadzazadzadzadza
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
              <li class="list-group-item">Machin : Bstarch le truc la</li>
              <li class="list-group-item">Toto : ezjkzbrkjzebrkzjber zkjbrzkjebrkzjebrkjzebr zjzezerjbkzejjrzakbr
                zeajkrbz kejrbzkjebrkjz erkjzb kjzbrkjzebrkjzebrkjbzerjbzbjer zejr zrjbzkjerb
                ez f f ez fez ez fez zef z ef z ef ze f ze f ze f ez zef ze f ze f ze fze
                f ze f ze f ze f ze fez f ze f ze fz e</li>
              <li class="list-group-item">Morbi leo risus</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    
    
    <%@ include file="footer.jsp"%>



</body>
</html>