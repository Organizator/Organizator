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
<script type="text/javascript">

					function validerEvent(id) {
						document.location.href="choix?id="+id;
					}

</script>
	<div class="container">
		<div class="alert alert-info">Voici la liste de vos évènements. Cliquez sur celui que vous souhaitez modifier. </div>
		<div class="list-group">
			
		  <a href="#" class="list-group-item active">
		    <h4 class="list-group-item-heading" align="center">Vos évènements</h4>
		  </a>
		  
		  <c:forEach var="event" items="${events}">
				<a href="#" class="list-group-item" onclick="return validerEvent(${event.id})">
		    		<h4 class="list-group-item-heading">${event.typeevent} - ${event.nom}<span class="label label-default" style="margin-right:10px; float:right">${event.date}</span></h4>
		  		</a>
			</c:forEach>
			
		</div>
		<div class="form-signin" style="padding-top:10px;">
			<a href="../index"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Retour</button></a>
			<a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
		 </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 