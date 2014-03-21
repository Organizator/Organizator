<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="css/signin.css">
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js "></script>
  </head>
  <body style="padding-top:0px;">
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	<div class="navbar navbar-inverse">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Organizator</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="index">Accueil</a></li>
              <li><a href="about">A propos</a></li>
              <li><a href="#contact">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Evènements <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Petit déjeuner le 28/04</a></li>
                  <li><a href="#">Afterwork le 38/14</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
	<div class="container">
		
	     <div class="alert alert-warning">
	        <strong>Attention !</strong> Plus que 11 jours avant l'évènement. Avez-vous pensé à tout? <button type="button" class="btn btn-xs btn-warning" style="float:right;">Liste des tâches</button>
	     </div>
	     <h4>Progression de l'évènement: </h4>
	     <div class="progress">
	        <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
	        <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
	        <div class="progress-bar progress-bar-danger" style="width: 45%"><span class="sr-only">10% Complete (danger)</span></div>
     	</div>
	     <div class="form-signin" style="padding-top:5px;">
	        <a href="gestion"><button class="btn btn-lg btn-info btn-block">Etat de l'évènement</button></a>
	        <a href="gestion"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Date / Heure</button></a>
	        <a href="gestion"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Communication</button></a>
	        <a href="gestion"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Autres services</button></a>
	        <a href="index"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>