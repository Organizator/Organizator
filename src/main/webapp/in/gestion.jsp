<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<!-- Menu de navigation -->
   	<%@include file="../include/navbar.jsp" %>

	<div class="container" id="pilepapier">
		<h4><span class="glyphicon glyphicon-stats"></span> Progression globale de l'évènement: </h4>
	     <div class="progress">
	        <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
	        <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
	        <div class="progress-bar progress-bar-danger" style="width: 45%"><span class="sr-only">10% Complete (danger)</span></div>
     	</div>
	     <div class="alert alert-warning">
	        <strong>Attention !</strong> Plus que ${days} jours avant l'évènement. Avez-vous pensé à tout? <button type="button" class="btn btn-xs btn-warning" style="float:right;">Liste des tâches</button>
	     </div>
	     		<h2 class="form-signin1-heading" align="center"><span class="glyphicon glyphicon-home"></span> - Panneau de gestion</h2>
	     
	     <div class="form-signin" style="padding-top:5px;">
	        <a href="etat"><button class="btn btn-lg btn-info btn-block">Statuts Administratifs</button></a>
	        <a href="time"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Modification date / lieu</button></a>
	        <a href="comm"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Communication</button></a>
	        <a href="couverture"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Couverture photo - vidéo</button></a>
	        <a href="materiel"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Matériel</button></a>	
		</div>

     	<div class="form-signin" style="padding-top:5px;">
			
			<a href="choix"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Retour</button></a>
			<a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
			
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>