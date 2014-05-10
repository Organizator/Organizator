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
	  <div class="alert alert-warning">
        <strong>Attention !</strong> Ne quittez pas cette page ou vous devrez recommencer du début !
      </div>
      	<form class="form-signin1" role="form" method=post action="confirmation">
	        <h2 class="form-signin1-heading">Nouveau projet - Confirmation </h2>
	   <div class="alert alert-danger">
        <center><strong>Vérifiez les informations</strong> avant de valider la création de l'évènement !</center>
       </div>
	        <input type="email" class="form-control start" placeholder="${sessionScope.sessionUtilisateur.mail}" disabled="disabled">
	        <input type="hidden" id="organisateur" name="organisateur" value="${sessionScope.sessionUtilisateur.mail}">
	        <input type="text" class="form-control mid" placeholder="${date}" required="" autofocus="" disabled="disabled">
	        <input type="hidden" id="date" name="date" value="${date}">
	        <input type="text" class="form-control mid" placeholder="${type}" required="" autofocus="" disabled="disabled">
	        <input type="hidden" id="type" name="type" value="${type}">
	        <input type="text" class="form-control end" placeholder="de ${debut} à ${fin}" required="" autofocus="" disabled="disabled">
	        <input type="hidden" id="debut" name="debut" value="${debut}">
	        <input type="hidden" id="fin" name="fin" value="${fin}">
	        <input type="hidden" id="hei" name="hei" value="${hei}">
	        <input type="hidden" id="batiment" name="batiment" value="${batiment}">
	        <input type="hidden" id="effectif" name="effectif" value="${effectif}">
	        <button class="btn btn-lg btn-success btn-block" type="submit">Valider</button>
	        <p></p>	
	        <div class="alert alert-success">
        	<center>Vous pourrez ensuite accéder à l'interface de gestion de votre évènement !</center>
      		</div>
	        <button type="reset" class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Annuler</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="date">
      <button type="submit" class="btn btn-lg btn-warning btn-block">Retour</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 