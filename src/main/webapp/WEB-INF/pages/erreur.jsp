<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Inscription</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="css/signin.css">
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">

	  	<div class="alert alert-${empty erreurs ? 'success' : 'warning'}">
        	<strong>${resultat}</strong> ${erreurs['mail']} ${erreurs['motDePasse']} ${erreurs['confirmation']} ${empty erreurs ? '<button type="button" class="btn btn-xs btn-success" style="float:right;">Organiser un évènement</button>' : ''}
      	</div>
      	<span class="glyphicon glyphicon-search"></span>
      	<form class="form-signin1" role="form" method=post action="new3">
	        <h2 class="form-signin1-heading">Nouveau projet</h2>
	        <h2 class="form-signin1-heading" >Avertissement </h2>
	  <div class="alert alert-danger" style="margin-top:55px;">
        <center><strong>Attention !</strong> Evènement déjà existent à cette date !</center>
      </div>
      <div class="alert alert-warning" style="margin-bottom:55px;">
        <center>Association concernée : (mon cul)</center>
      </div>
	        <button class="btn btn-lg btn-warning btn-block" style="margin-top:25px;" type="submit">Ignorer / Continuer</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="date">
      <button type="submit" class="btn btn-lg btn-success btn-block">Retour / Modifier la date</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 