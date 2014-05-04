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
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="../css/signin.css">
    <script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js "></script>
	
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
      <form class="form-signin1" role="form" method=post action="new4">
	        <h2 class="form-signin1-heading">Nouveau projet - 4/? </h2>
	        <h2 class="form-signin1-heading">Détails évènement</h2>
	        <input type="email" class="form-control start" placeholder="${sessionScope.sessionMembre.mail}" required="" autofocus="" disabled="disabled">
	        <input type="hidden" id="mail" name="mail" value="${mail}">
	        <input type="text" class="form-control end" placeholder="${asso}" required="" autofocus="" disabled="disabled">
	        <input type="hidden" id="asso" name="asso" value="${asso}">
	        <h4 class="form-signin1-heading" align="center">Heure Début / Fin</h4>
	        <input type="time" class="form-control start" placeholder="Time" id="time" name="time" required="">
	        <input type="time" class="form-control end" placeholder="Time" id="time" name="time" required="">
			<select class="form-control start" required="" >
				<option value="0">Type d'évènement :</option>
	        	<option value="Petit dejeuner">Petit dejeuner</option>
				<option value="Afterwork">Afterwork</option>
				<option value="Autre">Autre</option>
	        </select>
	        <select class="form-control mid" required="" >
				<option value="0">Alcool</option>
	        	<option value="Oui">Oui</option>
				<option value="Non">Non</option>
	        </select>
	        <input type="number" class="form-control end" placeholder="Nombre de personnes attendues" id="effectif" name="effectif">
	        <select class="form-control start" required="" >
				<option value="0">Dans HEI</option>
	        	<option value="Oui">Oui</option>
				<option value="Non">Non</option>
	        </select>
	        <select class="form-control mid" required="" id="batiment" name="batiment">
	        	<option value="0">Bâtiment</option>
				<option value="PES">PES</option>
				<option value="BDA">BDA</option>
				<option value="Cap'so">Cap'so</option>
				<option value="PET">PET</option>
				<option value="BDS">BDS</option>
	        </select>
	        <select class="form-control end" required="" id="salle" name="salle">
	        	<option value="0">Salle</option>
				<option value="PES">PES</option>
				<option value="BDA">BDA</option>
				<option value="Cap'so">Cap'so</option>
				<option value="PET">PET</option>
				<option value="BDS">BDS</option>
	        </select>
	        <button class="btn btn-lg btn-success btn-block" type="submit">Etape suivante</button>
      </form>
      <form class="form-signin1" role="form" method=post action="date">
      <button type="submit" class="btn btn-lg btn-warning btn-block">Retour</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>