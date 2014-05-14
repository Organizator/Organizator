<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Membre"%>

<%	Membre membre = (Membre) request.getAttribute("membre"); %>

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
	
	<div class="container">
		<c:if test="${!empty sessionScope.sessionUtilisateur}">
	        <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
	        <div class="alert alert-success"><strong>${form.resultat}</strong> Connecté(e) avec l'adresse : <strong>${sessionScope.sessionUtilisateur.mail}</strong> <a href="in/date"><button type="button" class="btn btn-xs btn-success" style="float:right;">Organiser un nouvel évènement</button></a></div>
	    </c:if>
	    <c:if test="${!empty form.erreurs['mail']}">
	        <div class="alert alert-warning"><strong>${form.resultat}</strong> ${form.erreurs['mail']}</div>
	    </c:if>
	    <c:if test="${!empty form.erreurs['motDePasse']}">
	        <div class="alert alert-warning"><strong>${form.resultat}</strong> ${form.erreurs['motDePasse']}</div>
	    </c:if>
	    <c:if test="${empty sessionScope.sessionUtilisateur}">
	        <%-- Si l'utilisateur n'existe en session, formulaire de connexion. --%>
	        <form class="form-signin" role="form" method=post action="index" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">
		        <h2 class="form-signin-heading" style="padding-bottom:15px;" align="center">Connexion</h2>
		        <input type="email" class="form-control" placeholder="Adresse e-mail HEI" required="" autofocus="" id="mail" name="mail" >
		        <input type="password" class="form-control" placeholder="Mot de passe" required="" id="motDePasse" name="motDePasse" >
		        <!-- <label class="checkbox">
		          <input type="checkbox" value="remember-me"> Resté connecté ?
		        </label> -->
		        <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
		        <button class="btn btn-lg btn-success btn-block" type="submit">Connexion</button>
      		</form>
	      	<div class="form-signin" style="padding-top:5px;">
	        	<a href="inscription"><button class="btn btn-lg btn-primary btn-block">Inscription</button></a>
	        	<a href="about"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">A propos</button></a>
	    </c:if>
      
        <c:if test="${!empty sessionScope.sessionUtilisateur}">
        	<div class="form-signin" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">
        		<h2 style="padding-bottom:15px;" align="center">Options disponibles</h2>
	        	<a href="in/date"><button class="btn btn-lg btn-success btn-block">Nouvel évènement</button></a>
	        	<a href="in/choix"><button class="btn btn-lg btn-primary btn-block" style="margin-top:5px;">Gérer mes évènements</button></a>
	        	<a href="in/compte"><button class="btn btn-lg btn-primary btn-block" style="margin-top:5px;">Gérer mon compte</button></a>
	        	<a href="about"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">A propos</button></a>
	        	<a href="deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
	        	 <c:if test="${membre.admin == \"oui\"}"><a href="admin/gestionadmin"><button class="btn btn-lg btn-link btn-block" href="test">Administration</button></a></c:if>
	    </c:if>
        
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>