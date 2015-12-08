<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
    </head><body>
    
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
                                                <label class="control-label">Civilité</label>
                                                <select class="form-control" name="civilite">
                                                    <option value="M" ${"M"== sessionScope.panier.client.civilite ? 'selected="selected"' : ''}>M</option>
                              						 <option value="Mme" ${"Mme"== sessionScope.panier.client.civilite ? 'selected="selected"' : ''}>Mme</option>
                                                </select>
                                            </div>
                                             <div class="form-group has-feedback">                                             	 
                                                <input class="form-control" type="text" placeholder="Nom" value="<c:out value="${utilisateur.nom}"/>" id="nom" name="nom">
                                                <span class="erreur">${form.erreurs['nom']}</span>
<!--                                                 <span class="fa fa-check form-control-feedback"></span>                                                -->
                                                
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input class="form-control" type="text" placeholder="Prénom" id="prenom" name="prenom" value="<c:out value="${utilisateur.prenom}"/>">
<!--                                                  <span class="fa fa-check form-control-feedback"></span>                         -->
                                                <span class="erreur">${form.erreurs['prenom']}</span>
                                                
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input class="form-control" type="text" placeholder="Email" type="email" id="email" name="email" value="<c:out value="${utilisateur.mail}"/>" >
                                                <span class="erreur">${form.erreurs['email']}</span>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Age</label>
                                                <select class="form-control">
                                                	<option value="18" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>18</option> 
                                                    <option value="19" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>19</option>
                                                    <option value="20" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>20</option>
                                                    <option value="21" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>21</option>
                                                    <option value="22" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>22</option>
                                                    <option value="23" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>23</option>
                                                    <option value="24" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>24</option>
                                                    <option value="25" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>25</option>
                                                    <option value="26" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>26</option>
                                                    <option value="27" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>27</option>
                                                    <option value="28" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>28</option>
                                                    <option value="29" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>29</option>
                                                    <option value="30" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>30</option>
                                                    <option value="31" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>31</option>
                                                    <option value="32" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>32</option>
                                                    <option value="33" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>33</option>
                                                    <option value="34" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>34</option>
                                                    <option value="35" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>35</option>
                                                    <option value="36" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>36</option>
                                                    <option value="37" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>37</option>
                                                    <option value="38" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>38</option>
                                                    <option value="39" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>39</option>
                                                    <option value="40" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>40</option>
                                                    <option value="41" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>41</option>
                                                    <option value="42" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>42</option>
                                                    <option value="43" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>43</option>
                                                    <option value="44" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>44</option>
                                                    <option value="45" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>45</option>
                                                    <option value="46" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>46</option>
                                                    <option value="47" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>47</option>
                                                    <option value="48" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>48</option>
                                                    <option value="49" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>49</option>
                                                    <option value="50" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>50</option>
                                                    <option value="51" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>51</option>
                                                    <option value="52" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>52</option>
                                                    <option value="53" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>53</option>
                                                    <option value="54" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>54</option>
                                                    <option value="55" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>55</option>
                                                    <option value="56" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>56</option>
                                                    <option value="57" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>57</option>
                                                    <option value="58" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>58</option>
                                                    <option value="59" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>59</option>
                                                    <option value="60" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>60</option>
                                                    <option value="61" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>61</option>
                                                    <option value="62" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>62</option>
                                                    <option value="63" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>63</option>
                                                    <option value="64" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>64</option>
                                                    <option value="65" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>65</option>
                                                    <option value="66" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>66</option>
                                                    <option value="67" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>67</option>
                                                    <option value="68" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>68</option>
                                                    <option value="69" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>69</option>
                                                    <option value="70" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>70</option>
                                                    <option value="71" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>71</option>
                                                    <option value="72" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>72</option>
                                                    <option value="73" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>73</option>
                                                    <option value="74" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>74</option>
                                                    <option value="75" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>75</option>
                                                    <option value="76" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>76</option>
                                                    <option value="77" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>77</option>
                                                    <option value="78" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>78</option>
                                                    <option value="79" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>79</option>
                                                    <option value="80" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>80</option>
                                                    <option value="81" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>81</option>
                                                    <option value="82" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>82</option>
                                                    <option value="83" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>83</option>
                                                    <option value="84" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>84</option>
                                                    <option value="85" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>85</option>
                                                    <option value="86" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>86</option>
                                                    <option value="87" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>87</option>
                                                    <option value="88" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>88</option>
                                                    <option value="89" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>89</option>
                                                    <option value="90" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>90</option>
                                                    <option value="91" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>91</option>
                                                    <option value="92" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>92</option>
                                                    <option value="93" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>93</option>
                                                    <option value="94" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>94</option>
                                                    <option value="95" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>95</option>
                                                    <option value="96" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>96</option>
                                                    <option value="97" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>97</option>
                                                    <option value="98" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>98</option>
                                                </select>
                                            </div>

                                            <div class="form-group has-feedback">
                                            	<input class="form-control" type="text" placeholder="Adresse" value="<c:out value="${utilisateur.adresse}"/>" id="adresse" name="adresse">
													<span class="erreur">${form.erreurs['adresse']}</span>
														
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<input class="form-control" type="text" placeholder="Code Postal" value="<c:out value="${utilisateur.codePostal}"/>" id="codePostal" name="codePostal">
													  <span class="erreur">${form.erreurs['codePostal']}</span>
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<input class="form-control" type="text" placeholder="Ville" value="<c:out value="${utilisateur.ville}"/>" id="ville" name="ville">
													<span class="erreur">${form.erreurs['ville']}</span>
                                            </div>                                            
                                            <div class="form-group has-feedback">
                                                <input class="form-control" type="password" placeholder="Mot de passe" id="motdepasse" name="motdepasse" value="">
<!--                                                  <span class="fa fa-check form-control-feedback"></span>  -->
                                                                                        
												<span class="erreur">${form.erreurs['motdepasse']}</span>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input class="form-control" type="password" placeholder="Confirmation Mot de passe" id="confirmation" name="confirmation" value="">
                                                <span class="fa fa-check form-control-feedback"></span>
                                                <span class="erreur">${form.erreurs['confirmation']}</span>
                                            </div>
<!--                                              <input type="submit" value="" class="myButtonForm pull-right"/>   -->
                                             <button type="submit" class="pull-right transparent-button"><i class="fa fa-5x fa-check-circle fa-fw text-success"></i></button>
						                 </form>                                 	
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@ include file="footer.jsp" %>
    

</body></html>
