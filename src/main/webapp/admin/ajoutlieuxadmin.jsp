<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Ajouter un nouveau lieu</h2>
     	</div>

<form class="form-signin1" role="form" method=post action="lieuxhei">
	        <h3 class="form-signin1-heading" align="center">Désignation </h3>
	        <input type="text" class="form-control start" style="margin-top:15px; placeholder="Nom" id="nom" name="nom" required="">
	        <h3 class="form-signin1-heading" align="center">Bâtiment </h3>
	        <select class="form-control mid" required="" id="batiment" name="batiment">
	        	<option value="0">Bâtiment</option>
				<option value="PES">PES</option>
				<option value="BDA">BDA</option>
				<option value="Cap'so">Cap'so</option>
				<option value="PET">PET</option>
				<option value="BDS">BDS</option>
	        </select>	        
			<h3 class="form-signin1-heading" align="center">Capacité </h3>
	        <input type="number" class="form-control start" style="margin-top:15px; placeholder="Nom" id="nom" name="nom" required="">
	        <button class="btn btn-lg btn-success btn-block" style="margin-top:25px; type="submit">Valider</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="lieuxhei">
      <button type="post" class="btn btn-lg btn-warning btn-block">Annuler</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>