<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Membre"%>
<%@page import="hei.devweb.model.Communication"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Modification ${membre.mail}</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<!-- Menu de navigation -->
	<%@include file="../include/navbar.jsp" %>

	<div class="container">
		<c:if test="${message != null}">
		  	<div class="alert alert-success">${message}	</div>
	    </c:if>
      <form class="form-signin1" role="form" method=post action="compte" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">
	        <h2 class="form-signin1-heading" align="center">Modifier compte </h2>
	        <h3 class="form-signin1-heading" align="center">Paramètres utilisateur</h3>
	        <input type="email" class="form-control start" value="${membre.mail}" required="" disabled="disabled">
	        <input type="password" class="form-control end" value="${membre.motDePasse}" required="" disabled="disabled">
			<select class="form-control start" required=""  id="pole" name="pole">
				<option value="${membre.pole}">${membre.pole}</option>
	        	<c:forEach var="pole" items="${poles}">
					<option value="${pole.nom}">${pole.nom}</option>
				</c:forEach>
	        </select>
	        <select class="form-control mid" required=""  id="asso" name="asso">
				<option value="${membre.asso}">${membre.asso}</option>
	        	<c:forEach var="association" items="${associations}">
					<option value="${association.nom}">${association.nom}</option>
				</c:forEach>
	        </select>
	        <select class="form-control end" required="" id="resp" name="resp">
	        	<option value="${membre.resp}">${membre.resp}</option>
				<option value="Président">Président</option>
				<option value="Vice Président">Vice Président</option>
				<option value="Communication">Communication</option>
				<option value="Trésorier">Projet</option>
				<option value="Evènementiel">Projet</option>
				<option value="Projet">Projet</option>
				<option value="Secrétaire">Secrétaire</option>
				<option value="Autre">Autre</option>
	        </select>
	        <button class="btn btn-lg btn-success btn-block" type="submit" style="margin-top:10px;">Valider les modifications</button>
      </form>

<script type="text/javascript">

					function valider() {
							if (confirm("Etes-vous sur de vouloir supprimer votre compte ? Tous les évènements liés à ce compte seront également supprimés !!! Cette action est définitive")) {
								// sinon on affiche un message
								// et on indique de ne pas envoyer le formulaire
								return true;
							}
							else {return false;}

					}
					
</script>      
      
      <form class="form-signin1" role="form" method=post action="compte" onsubmit="return valider()">		
      		<input type="hidden" class="form-control start" value="oui" id="supprimer" name="supprimercompte">
       		<button class="btn btn-lg btn-danger btn-block" type="submit" style="margin-top:5px;">Supprimer le compte</button>
      </form>
      <div class="form-signin1" style="padding-top:10px;">
			<a href="../"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour accueil</button></a>
			<a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
      </div>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 