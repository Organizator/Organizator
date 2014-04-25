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
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
		<div class="page-header">
	        <h1>A propos</h1>
	    </div>
	    <div class="well">
	        <p>Organizator s'adresse aux étudiants de l'école d'ingénieurs HEI (Hautes Etudes d'Ingénieur).</p>
	        <p>C'est un projet indépendant, réalisé par des étudiants de l'école, dans le but de fournir aux élèves un outil d'assistance dans la création d'évènements pour leur association.</p>
     		<p>Organizator guide l'utilisateur dans sa démarche, de l'idée de la création de son évènement jusqu'à sa réalisation.</p>
     	</div>
    </div>
    
    
    <div class="container">
          <div class="form-signin" style="padding-top:5px;">
        <a href="index"><button class="btn btn-lg btn-primary btn-block">Retour Accueil</button></a>
        <c:if test="${!empty sessionScope.sessionMembre}">
	        <a href="deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
	    </c:if>
		</div>
	</div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>