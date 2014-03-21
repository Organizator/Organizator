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
      <form class="form-signin" role="form" method=post action="gestion">
	        <h2 class="form-signin-heading">Entrez vos identifiants</h2>
	        <input type="email" class="form-control" placeholder="Adresse e-mail HEI" required="" autofocus="">
	        <input type="password" class="form-control" placeholder="Mot de passe" required="">
	        <label class="checkbox">
	          <input type="checkbox" value="remember-me"> Rester connecté?
	        </label>
	        <button class="btn btn-lg btn-success btn-block" type="submit">Connexion</button>
      </form>
      <div class="form-signin" style="padding-top:5px;">
        <a href="new1"><button class="btn btn-lg btn-primary btn-block">Nouveau Projet</button></a>
        <a href="about"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">A propos</button></a>
        <button class="btn btn-lg btn-link btn-block" href="test">Administration</button>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>