<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Inscription</title>
    <%@include file="../include/links.jsp" %>
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
      	<form class="form-signin1" role="form" method=post action="index">
	        <h2 class="form-signin1-heading" style="margin-bottom:65px;" >Annulation du projet en cours</h2>
	   <div class="alert alert-danger">
        <center><strong>Attention !</strong> Vous êtes sur le supprimer toutes les informations relatives à votre projet !</center>
       </div>
       <div class="alert alert-danger">
        <center><strong>Votre compte sera supprimé</strong></center>
       </div>
	        <button class="btn btn-lg btn-danger btn-block" style="margin-top:25px; type="submit">Annuler le projet</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="etat">
      <button type="submit" class="btn btn-lg btn-success btn-block">Retour</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 