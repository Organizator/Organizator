<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Interface de gestion de votre évènement ${event.nom}</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<!-- Menu de navigation -->
   	<%@include file="../include/navbar.jsp" %>

	<div class="container" id="pilepapier">
		<c:if test="${days > -1}">
			<h4><span class="glyphicon glyphicon-stats"></span> Progression globale de l'évènement <strong>${event.nom}</strong> : </h4>
		     <div class="progress">
		        <div class="progress-bar progress-bar-success" style="width: ${tauxvert}%">${tauxvert}%</div>
		        <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width: ${tauxorange}%">${tauxorange}%</span></div>
		        <div class="progress-bar progress-bar-danger" style="width: ${100-tauxvert-tauxorange}%">${100-tauxvert-tauxorange}%</span></div>
	     	</div>
		     <div class="alert alert-warning" role="alert">
		        <strong>J-${days}</strong> avant l'évènement. Avez-vous pensé à tout? <a href="listetaches"><button type="button" class="btn btn-xs btn-warning" style="float:right;">Liste des tâches</button></a>
		     </div>
		 </c:if>
		 <c:if test="${days < 0}">
		     <div class="alert alert-info alert-dismissible" role="alert">
		        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        Votre évènement est passé depuis ${-days} jours
		     </div>
		 </c:if>
	     		<h2 class="form-signin1-heading" align="center"><span class="glyphicon glyphicon-home"></span> - Panneau de gestion</h2>
	     
	     <div class="form-signin" style="padding-top:5px;">
	     	<a href="time"><button class="btn btn-lg btn-info btn-block">Modification date / lieu</button></a>
	        <a href="etat"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Statuts Administratifs</button></a>
	        <a href="comm"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Communication</button></a>
	        <a href="couverture"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Couverture photo - vidéo</button></a>
	        <a href="materiel"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Matériel</button></a>	
	        <a href="listetaches"><button class="btn btn-lg btn-warning btn-block" style="margin-top:5px;">Tous les paramètres</button></a>	
		</div>

     	<div class="form-signin" style="padding-top:5px;">
			
			<a href="choix"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Retour</button></a>
			<a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
			
		</div>
    </div>
  </body>
</html>