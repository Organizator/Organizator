<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<!DOCTYPE html>
<html>

  <head>
    <title>Organizator - Administration</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
  
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
			<div class="container">						
						
						
						
			<div class="form-signin1" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">			
			<h2 class="form-signin1-heading" align="center">Administration</h2>
			<h3 class="form-signin1-heading" align="center">Accueil</h3>
	     
	     	<a href="planningadmin"><button class="btn btn-lg btn-success btn-block" style="margin-top:15px;">Planning</button></a>
	        <a href="batimentshei"><button class="btn btn-lg btn-info btn-block" style="margin-top:10px;">Bâtiments</button></a>
	        <a href="gestionassos"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Associations</button></a>
	        <a href="gestioncomm"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Communication</button></a>
	        <a href="gestionpoles"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Pôles</button></a>	

	        <a href="admin"><button class="btn btn-lg btn-warning btn-block" style="margin-top:10px;">Administrateurs</button></a>	
	        <a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:15px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>