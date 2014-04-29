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
      	<form class="form-signin1" role="form" method=post action="gestionadmin">
	        <h2 class="form-signin1-heading" style="margin-bottom:65px;" >Annulation du projet en cours</h2>
	   <div class="alert alert-danger">
        <center><strong>Attention !</strong> Vous êtes sur le supprimer toutes les informations relatives au projet !</center>
       </div>
       <div class="alert alert-danger">
        <center><strong>Le compte utilisateur sera supprimé</strong></center>
       </div>
	        <button class="btn btn-lg btn-danger btn-block" style="margin-top:25px; type="submit">Annuler le projet</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="gestionadmin">
      <button type="submit" class="btn btn-lg btn-success btn-block">Retour</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 