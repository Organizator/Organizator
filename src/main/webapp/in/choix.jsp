<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Choix de l'évènement</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
		<div class="list-group">
			
		  <a href="#" class="list-group-item active">
		    <h4 class="list-group-item-heading" align="center">Vos évènements</h4>
		  </a>
		  
		  <c:forEach var="event" items="${events}">
				<a href="gestion" class="list-group-item">
		    		<h4 class="list-group-item-heading"><span class="label label-default" style="margin-right:10px;">${event.date}</span>${event.typeevent} par ${event.asso}</h4>
		  		</a>
			</c:forEach>
			
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 