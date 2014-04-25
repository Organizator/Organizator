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
	  <div class="alert alert-warning">
        <strong>Attention !</strong> Ne quittez pas cette page ou vous devrez recommencer du début !
      </div>
      	<form class="form-signin1" role="form" method=post action="index">
	        <h2 class="form-signin1-heading">Nouveau projet - 5/? </h2>
	        <h2 class="form-signin1-heading">Confirmation </h2>
	   <div class="alert alert-danger">
        <center><strong>Attention !</strong> Vous êtes sur le point de créer un nouvel évènement !</center>
       </div>
	        <input type="date" class="form-control start" placeholder="${sessionScope.sessionMembre.date}" required="" autofocus="" disabled="disabled">
	        <input type="hidden" id="date" name="date" value="${date}">
	        <p></p>
	        <input type="text" class="form-control end" placeholder="${type}" required="" autofocus="" disabled="disabled">
	        <input type="hidden" id="type" name="type" value="${type}">
	        <button class="btn btn-lg btn-success btn-block" type="submit">Valider</button>
	        <p></p>	
	        <div class="alert alert-success">
        	<center>Vous devrez vous reconnecter après avoir validé !</center>
      		</div>
	        <button type="button" class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Annuler</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="new3">
      <button type="submit" class="btn btn-lg btn-warning btn-block">Retour</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 