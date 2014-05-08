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
      	<form class="form-signin1" role="form" method=post action="new3">
	        <h2 class="form-signin1-heading">Nouveau projet</h2>
	        <h2 class="form-signin1-heading">Date de l'évènement </h2>
	        <input type="date" class="form-control" style="margin-top:25px; placeholder="Date" id="date" name="date" required="">
	        <button class="btn btn-lg btn-success btn-block" style="margin-top:25px; type="submit">Etape suivante</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="new2">
      <button type="submit" class="btn btn-lg btn-warning btn-block">Retour</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 