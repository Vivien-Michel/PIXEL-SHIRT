<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@ include file="menu.jsp"%>
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