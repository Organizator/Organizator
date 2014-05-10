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
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
			<div class="container">						
						
<div class="list-group">
  <a href="#" class="list-group-item active">
    <h4 class="list-group-item-heading" align="center">Evènements à venir prochainement</h4>
  </a>
  <a href="eventadmin" class="list-group-item">
    <h4 class="list-group-item-heading"><span class="label label-default" style="margin-right:10px;">2 jours</span>RAID HEI</h4>
    
  </a>
  <a href="#3" class="list-group-item">
    <h4 class="list-group-item-heading"><span class="label label-default" style="margin-right:10px;">10 jours</span>OrgHEI !</h4>
  </a>
</div>
						
						
						
			<h2 class="form-signin1-heading" align="center">Page d'administration : accueil</h2>
	     
	     <div class="form-signin" style="padding-top:5px;">
	     	<a href="planningadmin"><button class="btn btn-lg btn-success btn-block">Planning</button></a>
	        <a href="batimentshei"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Bâtiments</button></a>
	        <a href="gestionassos"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Associations</button></a>
	        <a href="gestioncomm"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Communication</button></a>
	        <a href="gestionpoles"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Pôles</button></a>	
	        <a href="blocdate"><button class="btn btn-lg btn-warning btn-block" style="margin-top:5px;">Blocage de date</button></a>	
		</div>

     	<div class="form-signin" style="padding-top:5px;">
	        <a href="materiel"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Mon compte</button></a>	
	        <a href="index"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>