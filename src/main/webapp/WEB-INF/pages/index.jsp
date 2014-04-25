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
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/bootstrap-theme.min.css"/>" rel="stylesheet">
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/signin.css"/>">
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
	    <c:if test="${!empty form.erreurs['mail']}">
	        <div class="alert alert-warning"><strong>${form.resultat}</strong> ${form.erreurs['mail']}</div>
	    </c:if>
	    <c:if test="${!empty form.erreurs['motDePasse']}">
	        <div class="alert alert-warning"><strong>${form.resultat}</strong> ${form.erreurs['motDePasse']}</div>
	    </c:if>
      <form class="form-signin" role="form" method=post action="index">
	        <h2 class="form-signin-heading" style="padding-bottom:15px;">Entrez vos identifiants</h2>
	        <input type="email" class="form-control" placeholder="Adresse e-mail HEI" required="" autofocus="" id="mail" name="mail" >
	        <p></p>
	        <input type="password" class="form-control" placeholder="Mot de passe" required="" id="motDePasse" name="motDePasse" >
	        <label class="checkbox">
	          <input type="checkbox" value="remember-me"> Resté connecté ?
	        </label>
	        <button class="btn btn-lg btn-success btn-block" type="submit">Connexion</button>
      </form>
      <div class="form-signin" style="padding-top:5px;">
        <a href="new1"><button class="btn btn-lg btn-primary btn-block">Inscription</button></a>
        <c:if test="${!empty sessionScope.sessionMembre}">
	        <a href="deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
	    </c:if>
        <a href="about"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">A propos</button></a>
        <a href="indexAdmin"><button class="btn btn-lg btn-link btn-block" href="test">Administration</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>