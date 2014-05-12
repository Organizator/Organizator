<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Event"%>

<%	Event event = (Event) request.getAttribute("event"); %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accords ${event.nom}</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<!-- Menu de navigation -->
	<%@include file="../include/navbar.jsp" %>
	
	<div class="container">
				<h4>Progression globale de l'évènement: </h4>
	     <div class="progress">
	        <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
	        <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
	        <div class="progress-bar progress-bar-danger" style="width: 45%"><span class="sr-only">10% Complete (danger)</span></div>
     	</div>
	     <div class="alert alert-warning">
	        <strong>Attention !</strong> Plus que 11 jours avant l'évènement. Avez-vous pensé à tout? <button type="button" class="btn btn-xs btn-warning" style="float:right;">Liste des tâches</button>
	     </div>
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center">Situation administrative</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
    <span class="sr-only">40% Complete (success)</span>
  </div>
</div>
     	</div>


		
		
	<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Suivi des accords relatifs à la mise en place de votre évènement</div>
  <div class="panel-body">
    <p><center>Mettez ici à jour les statuts des différents accords en cliquant sur : <span class="glyphicon glyphicon-ok"></span> ou <span class="glyphicon glyphicon-remove"></span></center></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Statut </TH> 
 <TH> Ignorer ? </TH>
 <TH> Actions </TH> 
  	</TR> 
  <TR> 
  
 <c:if test="${event.ignoreLieu == null || event.ignoreLieu == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Accord Lieu</span> </TD> 
 <c:if test="${event.statutLieu == null || event.statutLieu == \"pasok\" }"><TD> <a href="etat?par=statutLieu&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLieu == \"encours\"}"><TD> <a href="etat?par=statutLieu&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLieu == \"ok\"}"><TD> <a href="etat?par=statutLieu&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreLieu == null || event.ignoreLieu == \"off\" }"><TD><a href="etat?par=ignoreLieu&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreLieu == \"on\" }"><TD><a href="etat?par=ignoreLieu&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Lieu\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignorePole == null || event.ignorePole == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Accord Pôle</span> </TD> 
 <c:if test="${event.statutPole == null || event.statutPole == \"pasok\" }"><TD> <a href="etat?par=statutPole&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPole == \"encours\"}"><TD> <a href="etat?par=statutPole&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPole == \"ok\"}"><TD> <a href="etat?par=statutPole&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignorePole == null || event.ignorePole == \"off\" }"><TD><a href="etat?par=ignorePole&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignorePole == \"on\" }"><TD><a href="etat?par=ignorePole&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Pole\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreAdmin == null || event.ignoreAdmin == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Accord Administration</span> </TD> 
 <c:if test="${event.statutAdmin == null || event.statutAdmin == \"pasok\" }"><TD> <a href="etat?par=statutAdmin&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAdmin == \"encours\"}"><TD> <a href="etat?par=statutAdmin&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAdmin == \"ok\"}"><TD> <a href="etat?par=statutAdmin&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreAdmin == null || event.ignoreAdmin == \"off\" }"><TD><a href="etat?par=ignoreAdmin&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreAdmin == \"on\" }"><TD><a href="etat?par=ignoreAdmin&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Admin\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>  </TR>
  </c:if>
  
  </table>
  
  <div class="panel-body">
    <p><center>Moyens de communication ignorés. Cliquez sur <span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span> si vous souhaitez finalement les prendre en compte</center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Ignorer ? </TH>
  	</TR> 
 
 <c:if test="${event.ignoreLieu == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Accord Lieu</span> </TD> 
 <c:if test="${event.ignoreLieu == null || event.ignoreLieu == \"off\" }"><TD><a href="etat?par=ignoreLieu&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreLieu == \"on\" }"><TD><a href="etat?par=ignoreLieu&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignorePole == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Accord Pôle</span> </TD> 
 <c:if test="${event.ignorePole == null || event.ignorePole == \"off\" }"><TD><a href="etat?par=ignorePole&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignorePole == \"on\" }"><TD><a href="etat?par=ignorePole&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAdmin == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Accord Administration</span> </TD> 
 <c:if test="${event.ignoreAdmin == null || event.ignoreAdmin == \"off\" }"><TD><a href="etat?par=ignoreAdmin&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreAdmin == \"on\" }"><TD><a href="etat?par=ignoreAdmin&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  </table>
  
</div>

       	<div class="form-signin" style="padding-top:10px;">
			<a href="gestion"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour panneau de gestion</button></a>
			<a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>