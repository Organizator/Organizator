<%@page contentType="text/html" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %><!DOCTYPE html><html>  <head>    <title>Organizator</title>        <%@include file="../include/links.jsp" %>        <meta name="viewport" content="width=device-width, initial-scale=1.0">    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    <!-- Bootstrap -->    <link href="css/bootstrap.min.css" rel="stylesheet">    <link href="css/bootstrap-theme.min.css" rel="stylesheet">    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->    <link rel="stylesheet" type="text/css" href="css/signin.css">  </head>  <body>	<!-- Menu de navigation --><%--   	<jsp:include page="menu.jsp">	    <jsp:param name="pageSelectionnee" value="jeu"/>	</jsp:include> --%>	<div class="container">       <form class="form-signin1" role="form" method=post action="annulationadmin">	        <h2 class="form-signin1-heading" style="margin-bottom:65px;" >Annulation du projet en cours</h2>		   <div class="alert alert-danger" role="alert">	        <center><strong>Attention !</strong> Vous êtes sur point de supprimer toutes les informations relatives au projet !</center>	       </div>		   <div class="alert alert-danger" role="alert">	        <center><strong>Vérifiez les informations</strong> afin d'être sûr de supprimer le bon projet !</center>	       </div>	        <input type="text" class="form-control start" placeholder="${organisateur}" disabled="disabled">	        <input type="text" class="form-control mid" placeholder="${nom}" disabled="disabled">	        <input type="text" class="form-control mid" placeholder="${date}" required="" autofocus="" disabled="disabled">	        <input type="text" class="form-control end" placeholder="${type}" required="" autofocus="" disabled="disabled">	        <input type="hidden" id="idEvent" name="idEvent" value="${idEvent}">	        <button class="btn btn-lg btn-danger btn-block" style="margin-top:25px; type="submit">Annuler le projet</button>	   </form>    <form class="form-signin1" role="form" method=post action="gestionadmin">      <button type="submit" class="btn btn-lg btn-success btn-block">Retour</button>      </form>    </div>	<%-- <%@include file="footer.jsp" %> --%>  </body></html> 