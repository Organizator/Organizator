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
      	<form class="form-signin1" role="form" method=post action="new1">
	        <h2 class="form-signin1-heading">Nouveau projet - 1/? </h2>
	        <input type="email" class="form-control start" placeholder="Adresse e-mail HEI" id="mail" name="mail" value="<c:out value="${param.mail}"/>" required="" autofocus="">
	        <p></p>
	        <input type="password" class="form-control mid" placeholder="Mot de passe" id="motDePasse" name="motDePasse" required="">
	        <p></p>
	        <input type="password" class="form-control end" placeholder="Répétez le mot de passe" id="confirmation" name="confirmation" required="">
<!-- 	        <select class="form-control start" required=""  id="asso" name="asso"> -->
<!-- 	        	<option value="0">Association</option> -->
<!-- 				<option value="WhEI">Whei</option> -->
<!-- 				<option value="Declic">Declic</option> -->
<!-- 				<option value="Autre">Autre</option> -->
<!-- 	        </select>	 -->
<!-- 	        <select class="form-control mid" required="" id="pole" name="pole"> -->
<!-- 	        	<option value="0">Pôle BDE/BDS</option> -->
<!-- 				<option value="PES">PES</option> -->
<!-- 				<option value="BDA">BDA</option> -->
<!-- 				<option value="Cap'so">Cap'so</option> -->
<!-- 				<option value="PET">PET</option> -->
<!-- 				<option value="BDS">BDS</option> -->
<!-- 	        </select> -->
<!-- 	        <select class="form-control end" required=""  id="resp" name="resp"> -->
<!-- 	        	<option value="0">Responsabilité</option> -->
<!-- 				<option value="Président">Président</option> -->
<!-- 				<option value="Communication">Communication</option> -->
<!-- 				<option value="Autre">Autre</option> -->
<!-- 	        </select>		 -->
	        <button class="btn btn-lg btn-success btn-block" type="submit">Etape suivante</button>
	        <button type="reset" class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Réinitialiser</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="index">
      <button type="submit" class="btn btn-lg btn-warning btn-block">Retour Accueil</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 