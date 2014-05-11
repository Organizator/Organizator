<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
	<%@include file="../include/links.jsp" %>
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
	  <div class="alert alert-warning">
        <strong>Attention !</strong> Ne quittez pas cette page ou vous devrez recommencer du début !
      </div>
      <form class="form-signin1" role="form" method=post action="confirmation" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">
	        <h2 class="form-signin1-heading" align="center">Nouveau projet </h2>
	        <h3 class="form-signin1-heading" align="center">Détails évènement</h2>
	        <input type="email" class="form-control start" value="${sessionScope.sessionUtilisateur.mail}" required="" autofocus="" disabled="disabled">
	        <input type="text" class="form-control end" value="${date}" required="" autofocus="" disabled="disabled">
	        <input type="hidden" id="date" name="date" value="${date}">
	        <input type="hidden" id="etape" name="etape" value="un">
	        <h4 class="form-signin1-heading" align="center">Champs à remplir</h4>
	        <input type="text" class="form-control start" placeholder="Nom de l'évènement" id="nom" name="nom" required="">
			<select class="form-control mid" required=""  id="type" name="type">
				<option value="0">Type d'évènement :</option>
	        	<option value="Petit déjeuner">Petit déjeuner</option>
				<option value="Afterwork">Afterwork</option>
				<option value="Autre">Autre</option>
	        </select>
	        <input type="number" class="form-control end" placeholder="Nombre de personnes attendues" id="effectif" name="effectif">
	        <select class="form-control start" required=""  id="hei" name="hei">
				<option value="0">Dans HEI ?</option>
	        	<option value="Oui">Oui</option>
				<option value="Non">Non</option>
	        </select>
	        <select class="form-control end" required="" id="batiment" name="batiment">
	        	<option value="Bâtiment (si dans HEI)">Bâtiment (si dans HEI)</option>
				<c:forEach var="batiment" items="${batiments}">
					<option value="${batiment.nom}">${batiment.nom}</option>
				</c:forEach>
	        </select>
	        <input type="time" class="form-control start" placeholder="Time" id="debut" name="debut" required="">
	        <input type="time" class="form-control end" placeholder="Time" id="fin" name="fin">
	        <button class="btn btn-lg btn-success btn-block" type="submit">Etape suivante</button>
      </form>
       	<div class="form-signin1" style="padding-top:10px;">
			<a href="../index"><button class="btn btn-lg btn-warning btn-block" style="margin-top:5px;">Retour accueil</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>