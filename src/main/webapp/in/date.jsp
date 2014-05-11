<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Date nouveau projet</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
      	<form class="form-signin1" role="form" method=post action="new">
	        <h2 class="form-signin1-heading">Nouveau projet</h2>
	        <h2 class="form-signin1-heading">Date de l'évènement </h2>
	        <input type="date" class="form-control" style="margin-top:25px; margin-bottom:10px;" placeholder="Date" id="date" name="date" required="" >
	        <button class="btn btn-lg btn-success btn-block" type="submit">Valider</button>
	        <button type="reset" class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Réinitialiser</button>
      	</form>
      <div class="form-signin1" style="padding-top:10px;">
			<a href="../index"><button class="btn btn-lg btn-warning btn-block" style="margin-top:5px;">Retour accueil</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 