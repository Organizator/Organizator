<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil Membre</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="../css/signin.css">
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
		<c:if test="${!empty sessionScope.sessionMembre}">
	        <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
	        <div class="alert alert-success"><strong>${form.resultat}</strong> Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionMembre.mail}</div>
	    </c:if>
	    <c:if test="${!empty sessionScope.sessionMembre}">
	        <a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
	    </c:if>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>