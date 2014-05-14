<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
    <%@include file="../../include/linksRacine.jsp" %>
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<script type="text/javascript">
					function precedent() {
						window.history.back(-1);
					}
	</script>
	
	<div class="container">
		<div class="page-header">
	        <h1>A propos</h1>
	    </div>
	    <div class="well">
	        <p>Organizator s'adresse aux étudiants de l'école d'ingénieurs HEI (Hautes Etudes d'Ingénieur).</p>
	        <p>C'est un projet indépendant, réalisé par des étudiants de l'école, dans le but de fournir aux élèves un outil d'assistance dans la création d'évènements pour leur association.</p>
     		<p>Organizator guide l'utilisateur dans sa démarche, de l'idée de la création de son évènement jusqu'à sa réalisation.</p>
     		<p>Il permet également au BDE de gérer l'emploi du temps de la vie associative.</p>
     	</div>
    </div>
    
    
    <div class="container">
          <div class="form-signin" style="padding-top:5px;">
        <a onclick="return precedent()"><button class="btn btn-lg btn-primary btn-block">Retour</button></a>
        <c:if test="${!empty sessionScope.sessionMembre}">
	        <a href="deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
	    </c:if>
		</div>
	</div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>