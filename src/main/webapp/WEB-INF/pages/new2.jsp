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
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
	  <div class="alert alert-warning">
        <strong>Attention !</strong> Ne quittez pas cette page ou vous devrez recommencer du début !
      </div>
      <form class="form-signin1" role="form" method=post action="date">
	        <h2 class="form-signin1-heading">Nouveau projet - 2/?</h2>
	        <h2 class="form-signin1-heading">Détails organisateur</h2>
	        <input type="email" class="form-control" placeholder="${mail}" required="" autofocus="" disabled="disabled" style="margin-bottom:15px" >
	        <input type="hidden" id="mail" name="mail" value="${mail}">
	        <input type="text" class="form-control start" placeholder="NOM" id="NOM" name="NOM" required="">
	        <input type="text" class="form-control end" placeholder="Prenom" id="Prenom" name="Prenom" required="">
	        <select class="form-control start" required="" id="classe" name="classe">
	        	<option value="0">Classe</option>
	        	<option value="32">32</option>
				<option value="33">33</option>
				<option value="34">33</option>
				<option value="35">35</option>
				<option value="42">35</option>
	        </select>
	        <select class="form-control mid" required="" id="pole" name="pole">
	        	<option value="0">Pôle BDE/BDS</option>
				<option value="PES">PES</option>
				<option value="BDA">BDA</option>
				<option value="Cap'so">Cap'so</option>
				<option value="PET">PET</option>
				<option value="BDS">BDS</option>
	        </select>
	        <select class="form-control mid" required=""  id="asso" name="asso">
	        	<option value="0">Association</option>
				<option value="WhEI">Whei</option>
				<option value="WhEI">Déclic HEI</option>
				<option value="WhEI">Rock HEI</option>
				<option value="WhEI">42</option>
				<option value="WhEI">42</option>
	        </select>	
	        <select class="form-control end" required=""  id="resp" name="resp">
	        	<option value="0">Responsabilité</option>
				<option value="Président">Président</option>
				<option value="Communication">Communication</option>
				<option value="Autre">Autre</option>
	        </select>	
	        <button class="btn btn-lg btn-success btn-block" type="submit">Etape suivante</button>
	        <button type="reset" class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Réinitialiser</button>
	        
      </form>
      <form class="form-signin1" role="form" method=post action="new1">
      <button type="submit" class="btn btn-lg btn-warning btn-block">Retour</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>