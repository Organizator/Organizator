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
      	<form class="form-signin1" role="form" method=post action="gestion">
	        <h2 class="form-signin1-heading" align="center">Situation de l'évènement : modification</h2>
	        <h3 class="form-signin1-heading" align="center">Date </h3>
	        <input type="date" class="form-control start" style="margin-top:25px; placeholder="Date" id="date" name="date" required="">
	        <h3 class="form-signin1-heading" align="center">Heure </h3>
	        <input type="time" class="form-control start" style="margin-top:25px; placeholder="Time" id="time" name="time" required="">
	        <h3 class="form-signin1-heading" align="center">Lieu </h3>
	        <select class="form-control end" required="" >
				<option value="0">Dans HEI</option>
	        	<option value="Oui">Oui</option>
				<option value="Non">Non</option>
	        </select>
	        <p></p>
	        <select class="form-control mid" required="" id="batiment" name="batiment">
	        	<option value="0">Bâtiment</option>
				<option value="PES">PES</option>
				<option value="BDA">BDA</option>
				<option value="Cap'so">Cap'so</option>
				<option value="PET">PET</option>
				<option value="BDS">BDS</option>
	        </select>
	        <p></p>
	        <select class="form-control mid" required="" id="salle" name="salle">
	        	<option value="0">Salle</option>
				<option value="PES">PES</option>
				<option value="BDA">BDA</option>
				<option value="Cap'so">Cap'so</option>
				<option value="PET">PET</option>
				<option value="BDS">BDS</option>
	        </select>
	        <button class="btn btn-lg btn-success btn-block" style="margin-top:25px; type="submit">Valider</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="gestion">
      <button type="post" class="btn btn-lg btn-warning btn-block">Annuler</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 