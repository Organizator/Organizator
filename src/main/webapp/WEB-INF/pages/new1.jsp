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
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
      <form class="form-signin1" role="form" method=post action="new2">
	        <h2 class="form-signin1-heading">Inscription - page 1 </h2>
	        <input type="email" class="form-control start" placeholder="Adresse e-mail HEI" id="mail" name="mail" required="" autofocus="">
	        <input type="password" class="form-control mid" placeholder="Mot de passe" required="">
	        <input type="password" class="form-control end" placeholder="Retapez le mot de passe" required="">
	        <button class="btn btn-lg btn-success btn-block" type="submit">Etape suivante</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>