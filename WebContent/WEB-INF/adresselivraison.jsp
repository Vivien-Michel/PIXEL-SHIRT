<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Adresse de livraison</title>
</head>
<body>
<%@ include file="menu.jsp" %>
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
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   <%@ include file="footer.jsp" %>
</body>
</html>