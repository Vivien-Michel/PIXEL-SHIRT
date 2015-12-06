<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script src="bs_leftnavi.js"></script>
        <link href="designCreateA.css" rel="stylesheet" type="text/css">
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
							action="/sessions" method="post">
							<div style="margin: 0; padding: 0; display: inline">
								<input name="utf8" type="hidden" value="✓"> <input
									name="authenticity_token" type="hidden"
									value="4L/A2ZMYkhTD3IiNDMTuB/fhPRvyCNGEsaZocUUpw40=">
							</div>
							

							 
							<c:choose>
							<c:when test="${empty sessionScope.panier.client}">
							
							<fieldset class="textbox" style="padding: 10px">
								<input style="margin-top: 8px" type="email" placeholder="Mail"  id="email" name="email" value="<c:out value="${param.email}"/>"/>
								<span class="erreur">${form.erreurs['email']}</span>					
								
								
								<input type="password" style="margin-top: 8px" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20"  placeholder="Passsword"/>
								<span class="erreur">${form.erreurs['motdepasse']}</span>
								
								<input class="btn-primary" name="commit" type="submit" value="Connexion">
								<a href="createA.html">Create</a>	
									
								
							</fieldset>
							</c:when>
							
							<c:otherwise>
        						
    						</c:otherwise>
							
							
							</c:choose>
							</form>
					</div></li>
				<li class="active"><a href="indexPanier.html">
				<div style="text-align: center;">
					<font face="FontAwesome" style="line-height: 21px; display: inline !important;">Panier : </font><span class="badge">0</span>
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
                    <div class="col-md-12">
                        <div class="section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h1 class="text-center">Subscribe</h1>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3">
                                        <form role="form">
                                            <div class="form-group">
                                                <label class="control-label">Age</label>
                                                <select class="form-control">
                                                    <option>M</option>
                                                    <option>Mme</option>
                                                </select>
                                            </div>
                                            
                                             <div class="form-group has-feedback">                                             	 
                                                <input class="form-control" type="text" placeholder="Nom" value="<c:out value="${utilisateur.nom}"/>" id="nom" name="nom">
                                                <span class="erreur">${form.erreurs['nom']}</span>
                                                <span class="fa fa-check form-control-feedback"></span>                                               
                                                
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input class="form-control" type="text" placeholder="Prénom" id="prenom" name="prenom" value="<c:out value="${utilisateur.prenom}"/>">
                                                 <span class="fa fa-check form-control-feedback"></span>                        
                                                <span class="erreur">${form.erreurs['prenom']}</span>
                                                
                                            </div>
                                            <div class="form-group has-feedback">
                                                <input class="form-control" type="text" placeholder="Email" type="email" id="email" name="email" value="<c:out value="${utilisateur.mail}"/>" >
                                                <span class="erreur">${form.erreurs['email']}</span>
                                            </div>
                                            
                                            
                                            
                                            <div class="form-group">
                                                <label class="control-label">Age</label>
                                                <select class="form-control">
                                                	<option value="13" ${"1"== utilisateur.age ? 'selected="selected"' : ''}>13</option>
                                                    <option>13</option>
                                                    <option>14</option>
                                                    <option>15</option>
                                                    <option>16</option>
                                                    <option>17</option>
                                                    <option>18</option>
                                                    <option>19</option>
                                                    <option>20</option>
                                                    <option>21</option>
                                                    <option>22</option>
                                                    <option>23</option>
                                                    <option>24</option>
                                                    <option>25</option>
                                                    <option>26</option>
                                                    <option>27</option>
                                                    <option>28</option>
                                                    <option>29</option>
                                                    <option>30</option>
                                                    <option>31</option>
                                                    <option>32</option>
                                                    <option>33</option>
                                                    <option>34</option>
                                                    <option>35</option>
                                                    <option>36</option>
                                                    <option>37</option>
                                                    <option>38</option>
                                                    <option>39</option>
                                                    <option>40</option>
                                                    <option>41</option>
                                                    <option>42</option>
                                                    <option>43</option>
                                                    <option>44</option>
                                                    <option>45</option>
                                                    <option>46</option>
                                                    <option>47</option>
                                                    <option>48</option>
                                                    <option>49</option>
                                                    <option>50</option>
                                                    <option>51</option>
                                                    <option>52</option>
                                                    <option>53</option>
                                                    <option>54</option>
                                                    <option>55</option>
                                                    <option>56</option>
                                                    <option>57</option>
                                                    <option>58</option>
                                                    <option>59</option>
                                                    <option>60</option>
                                                    <option>61</option>
                                                    <option>62</option>
                                                    <option>63</option>
                                                    <option>64</option>
                                                    <option>65</option>
                                                    <option>66</option>
                                                    <option>67</option>
                                                    <option>68</option>
                                                    <option>69</option>
                                                    <option>70</option>
                                                    <option>71</option>
                                                    <option>72</option>
                                                    <option>73</option>
                                                    <option>74</option>
                                                    <option>75</option>
                                                    <option>76</option>
                                                    <option>77</option>
                                                    <option>78</option>
                                                    <option>79</option>
                                                    <option>80</option>
                                                    <option>81</option>
                                                    <option>82</option>
                                                    <option>83</option>
                                                    <option>84</option>
                                                    <option>85</option>
                                                    <option>86</option>
                                                    <option>87</option>
                                                    <option>88</option>
                                                    <option>89</option>
                                                    <option>90</option>
                                                    <option>91</option>
                                                    <option>92</option>
                                                    <option>93</option>
                                                    <option>94</option>
                                                    <option>95</option>
                                                    <option>96</option>
                                                    <option>97</option>
                                                    <option>98</option>
                                                </select>
                                            </div>

                                            <div class="form-group has-feedback">
                                            	<input class="form-control" type="text" placeholder="Adresse" value="<c:out value="${utilisateur.adresse}"/>" id="adresse" name="adresse">
<!--                                                 <input class="form-control" type="text" placeholder="Adresse"> -->
<!--                                                 <span class="fa fa-check form-control-feedback"></span> -->
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<input class="form-control" type="text" placeholder="Code Postal" value="<c:out value="${utilisateur.codePostal}"/>" id="codePostal" name="codePostal">
<!--                                                 <input class="form-control" type="text" placeholder="Code Postal"> -->
<!--                                                 <span class="fa fa-check form-control-feedback"></span> -->
                                            </div>
                                            <div class="form-group has-feedback">
                                            	<input class="form-control" type="text" placeholder="Ville" value="<c:out value="${utilisateur.ville}"/>" id="adresse" name="ville">
<!--                                                 <input class="form-control" type="text" placeholder="Ville"> -->
<!--                                                 <span class="fa fa-check form-control-feedback"></span> -->
                                            </div>                                            
                                            <div class="form-group has-feedback">
                                                <input class="form-control" type="password" placeholder="Mot de passe" id="motdepasse" name="motdepasse" value="">
                                                 <span class="fa fa-check form-control-feedback"></span> 
                                                                                        
												<span class="erreur">${form.erreurs['motdepasse']}</span>
                                                
                                            </div><div class="form-group has-feedback">
                                                <input class="form-control" type="password" placeholder="Confirmation Mot de passe" id="confirmation" name="confirmation" value="">
                                                <span class="fa fa-check form-control-feedback"></span>

                                                <span class="erreur">${form.erreurs['confirmation']}</span>
                                                
												
                                                
                                                
                                            </div>



                                        </form>
                                        <input type="submit" value="Inscription" class="sansLabel" />
                                        <a href="#"><i class="fa fa-5x fa-check-circle fa-fw pull-right text-success"></i></a>
                                    </div>
                                </div>
                            </div>
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