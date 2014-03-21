<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="css/signin.css">
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js "></script>
	
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
	  <div class="alert alert-warning">
        <strong>Attention !</strong> Ne quittez pas cette page ou vous devrez recommencer à 0.
      </div>
      <form class="form-signin1" role="form" method=post action="new3">
	        <h2 class="form-signin1-heading">Inscription - page 2</h2>
	        <input type="email" class="form-control" placeholder="${mail}" required="" autofocus="" disabled="disabled" style="margin-bottom:15px" >
	        <input type="hidden" id="mail" name="mail" value="${mail}">
			<select class="form-control start" required="">
	        	<option value="0">Pôle BDE/BDS</option>
				<option value="42">42</option>
	        </select>
	        <select class="form-control mid" required=""  id="asso" name="asso">
	        	<option value="0">Association</option>
				<option value="WhEI">42</option>
	        </select>	
	        <select class="form-control mid" required="">
	        	<option value="0">Responsabilité</option>
				<option value="42">42</option>
	        </select>		
	        <select class="form-control end" required="">
	        	<option value="0">Date</option>
				<option value="42">42</option>
	        </select>
	        <button class="btn btn-lg btn-success btn-block" type="submit">Etape suivante</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>