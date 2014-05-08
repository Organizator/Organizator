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
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Ajouter un nouveau pôle</h2>
     	</div>

<form class="form-signin1" role="form" method=post action="gestionpoles">

	        <h3 class="form-signin1-heading" align="center">Nom </h3>
	        
	        <input type="text" class="form-control start" style="margin-top:15px;"  id="nom" name="nom" placeholder="nom" required>
	        
	        <button class="btn btn-lg btn-success btn-block" style="margin-top:25px; type="submit">Valider</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="gestionpoles">
      
      <button type="post" class="btn btn-lg btn-warning btn-block">Annuler</button>
      
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>