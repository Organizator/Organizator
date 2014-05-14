	<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Association"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Inscription</title>
    <%@include file="../../include/linksRacine.jsp" %>
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
		<c:if test="${!empty erreurs}">
		  	<div class="alert alert-${empty erreurs ? 'success' : 'warning'}">
	        	<strong>${resultat}</strong> ${erreurs['mail']} ${erreurs['motDePasse']} ${erreurs['confirmation']} ${empty erreurs ? '<a href="index"><button type="button" class="btn btn-xs btn-success" style="float:right;">Organiser un évènement (Reconnexion nécessaire)</button></a>' : ''}
	      	</div>
	    </c:if>
      	<form class="form-signin1" role="form" method=post action="inscription" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">
	        <h2 class="form-signin1-heading" align="center">Inscription </h2>
	        <input type="email" class="form-control start" placeholder="Adresse e-mail HEI" id="mail" name="mail" value="<c:out value="${param.mail}"/>" required="" autofocus="">
	        <input type="password" class="form-control mid" placeholder="Mot de passe" id="motDePasse" name="motDePasse" required="">
	        <input type="password" class="form-control end" placeholder="Répétez le mot de passe" id="confirmation" name="confirmation" required="">
	        <select class="form-control start" required="" id="pole" name="pole">
	        	<option value="0">Pôle BDE/BDS</option>
	        	<c:forEach var="pole" items="${poles}">
					<option value="${pole.nom}">${pole.nom}</option>
				</c:forEach>
	        </select>
	        <select class="form-control mid" required=""  id="asso" name="asso">
	        	<option value="0">Association</option>
				<c:forEach var="association" items="${associations}">
					<option value="${association.nom}">${association.nom}</option>
				</c:forEach>
	        </select>
	        <select class="form-control end" required=""  id="resp" name="resp">
	        	<option value="0">Responsabilité</option>
				<option value="Président">Président</option>
				<option value="Vice Président">Vice Président</option>
				<option value="Communication">Communication</option>
				<option value="Trésorier">Projet</option>
				<option value="Evènementiel">Projet</option>
				<option value="Projet">Projet</option>
				<option value="Secrétaire">Secrétaire</option>
				<option value="Autre">Autre</option>
	        </select>
	        <button class="btn btn-lg btn-success btn-block" type="submit">Valider</button>
	        <button type="reset" class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Réinitialiser</button>
      	</form>
      <form class="form-signin1" role="form" method=post action="index">
      <button type="submit" class="btn btn-lg btn-warning btn-block">Retour Accueil</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 