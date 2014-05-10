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
	
	<div class="container">
		<c:if test="${!empty sessionScope.sessionUtilisateur}">
	        <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
	        <div class="alert alert-success"><strong>${form.resultat}</strong> Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.mail} <a href="in/date"><button type="button" class="btn btn-xs btn-success" style="float:right;">Organiser un évènement</button></a></div>
	    </c:if>
	    <c:if test="${!empty form.erreurs['mail']}">
	        <div class="alert alert-warning"><strong>${form.resultat}</strong> ${form.erreurs['mail']}</div>
	    </c:if>
	    <c:if test="${!empty form.erreurs['motDePasse']}">
	        <div class="alert alert-warning"><strong>${form.resultat}</strong> ${form.erreurs['motDePasse']}</div>
	    </c:if>
	    <c:if test="${empty sessionScope.sessionUtilisateur}">
	        <%-- Si l'utilisateur n'existe en session, formulaire de connexion. --%>
	        <form class="form-signin" role="form" method=post action="index">
		        <h2 class="form-signin-heading" style="padding-bottom:15px;">Entrez vos identifiants</h2>
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
	        	<a href="indexAdmin"><button class="btn btn-lg btn-link btn-block" href="test">Administration</button></a>
	    </c:if>
      
        <c:if test="${!empty sessionScope.sessionUtilisateur}">
        	<div class="form-signin" style="padding-top:5px;">
	        	<a href="in/date"><button class="btn btn-lg btn-success btn-block">Nouvel évènement</button></a>
	        	<a href="in/choix"><button class="btn btn-lg btn-primary btn-block" style="margin-top:5px;">Gérer vos évènements</button></a>
	        	<a href="about"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">A propos</button></a>
	        	<a href="deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
	        	<a href="admin/gestionadmin"><button class="btn btn-lg btn-link btn-block" href="test">Administration</button></a>
	    </c:if>
        
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>