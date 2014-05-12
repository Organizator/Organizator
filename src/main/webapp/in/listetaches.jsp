<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Event"%>
<%@page import="hei.devweb.model.Communication"%>
<%@page import="java.util.List"%>

<%	Event event = (Event) request.getAttribute("event"); %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Tâches ${event.nom}</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<!-- Menu de navigation -->
	<%@include file="../include/navbar.jsp" %>

	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center">Tâches liées à l'évènement</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
<!--     <span class="sr-only">40% Complete (success)</span> -->
  </div>
</div>
     	</div>


		
		
		<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Suivi de tous les paramètres mis en place</div>
  <div class="panel-body">
    <p><center>Mettez ici à jour les statuts des paramètres disponibles : <span class="glyphicon glyphicon-ok"></span> ou <span class="glyphicon glyphicon-remove"></span></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Statut </TH> 
 <TH> Ignorer ? </TH>
 <TH> Actions </TH> 
  	</TR> 
 
 <c:if test="${event.ignoreTV == null || event.ignoreTV == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Télévisions</span> </TD> 
 <c:if test="${event.statutTV == null || event.statutTV == \"pasok\" }"><TD> <a href="listetaches?par=statutTV&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutTV == \"encours\"}"><TD> <a href="listetaches?par=statutTV&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutTV == \"ok\"}"><TD> <a href="listetaches?par=statutTV&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreTV == null || event.ignoreTV == \"off\" }"><TD><a href="listetaches?par=ignoreTV&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreTV == \"on\" }"><TD><a href="listetaches?par=ignoreTV&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"TV\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAffiche == null || event.ignoreAffiche == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Affiches</span> </TD> 
 <c:if test="${event.statutAffiche == null || event.statutAffiche == \"pasok\" }"><TD> <a href="listetaches?par=statutAffiche&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAffiche == \"encours\"}"><TD> <a href="listetaches?par=statutAffiche&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAffiche == \"ok\"}"><TD> <a href="listetaches?par=statutAffiche&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreAffiche == null || event.ignoreAffiche == \"off\" }"><TD><a href="listetaches?par=ignoreAffiche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreAffiche == \"on\" }"><TD><a href="listetaches?par=ignoreAffiche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Affiche\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR> 
  </c:if>
  
  <c:if test="${event.ignoreReseau == null || event.ignoreReseau == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Réseaux sociaux</span> </TD> 
 <c:if test="${event.statutReseau == null || event.statutReseau == \"pasok\" }"><TD> <a href="listetaches?par=statutReseau&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutReseau == \"encours\"}"><TD> <a href="listetaches?par=statutReseau&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutReseau == \"ok\"}"><TD> <a href="listetaches?par=statutReseau&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreReseau == null || event.ignoreReseau == \"off\" }"><TD><a href="listetaches?par=ignoreReseau&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreReseau == \"on\" }"><TD><a href="listetaches?par=ignoreReseau&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Reseau\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreRadio == null || event.ignoreRadio == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Radio HEI</span> </TD> 
 <c:if test="${event.statutRadio == null || event.statutRadio == \"pasok\" }"><TD> <a href="listetaches?par=statutRadio&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutRadio == \"encours\"}"><TD> <a href="listetaches?par=statutRadio&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutRadio == \"ok\"}"><TD> <a href="listetaches?par=statutRadio&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreRadio == null || event.ignoreRadio == \"off\" }"><TD><a href="listetaches?par=ignoreRadio&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreRadio == \"on\" }"><TD><a href="listetaches?par=ignoreRadio&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Radio\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreNewsletter == null || event.ignoreNewsletter == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Newsletter</span> </TD> 
 <c:if test="${event.statutNewsletter == null || event.statutNewsletter == \"pasok\" }"><TD> <a href="listetaches?par=statutNewsletter&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutNewsletter == \"encours\"}"><TD> <a href="listetaches?par=statutNewsletter&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutNewsletter == \"ok\"}"><TD> <a href="listetaches?par=statutNewsletter&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreNewsletter == null || event.ignoreNewsletter == \"off\" }"><TD><a href="listetaches?par=ignoreNewsletter&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreNewsletter == \"on\" }"><TD><a href="listetaches?par=ignoreNewsletter&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Newsletter\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreDepeche == null || event.ignoreDepeche == \"off\" }">  
  <TR> 
 <TD> <span class="label label-default">Dépêche HEI</span>	 </TD> 
 <c:if test="${event.statutDepeche == null || event.statutDepeche == \"pasok\" }"><TD> <a href="listetaches?par=statutDepeche&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutDepeche == \"encours\"}"><TD> <a href="listetaches?par=statutDepeche&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutDepeche == \"ok\"}"><TD> <a href="listetaches?par=statutDepeche&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreDepeche == null || event.ignoreDepeche == \"off\" }"><TD><a href="listetaches?par=ignoreDepeche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreDepeche == \"on\" }"><TD><a href="listetaches?par=ignoreDepeche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Depeche\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreFlyers == null || event.ignoreFlyers == \"off\" }">
   <TR> 
 <TD> <span class="label label-default">Flyers</span> </TD> 
 <c:if test="${event.statutFlyers == null || event.statutFlyers == \"pasok\" }"><TD> <a href="listetaches?par=statutFlyers&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutFlyers == \"encours\"}"><TD> <a href="listetaches?par=statutFlyers&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutFlyers == \"ok\"}"><TD> <a href="listetaches?par=statutFlyers&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreFlyers == null || event.ignoreFlyers == \"off\" }"><TD><a href="listetaches?par=ignoreFlyers&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreFlyers == \"on\" }"><TD><a href="listetaches?par=ignoreFlyers&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Flyers\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
  <c:if test="${event.ignorePhoto == null || event.ignorePhoto == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Photo</span> </TD> 
 <c:if test="${event.statutPhoto == null || event.statutPhoto == \"pasok\" }"><TD> <a href="listetaches?par=statutPhoto&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPhoto == \"encours\"}"><TD> <a href="listetaches?par=statutPhoto&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPhoto == \"ok\"}"><TD> <a href="listetaches?par=statutPhoto&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignorePhoto == null || event.ignorePhoto == \"off\" }"><TD><a href="listetaches?par=ignorePhoto&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignorePhoto == \"on\" }"><TD><a href="listetaches?par=ignorePhoto&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Photo\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreVideo == null || event.ignoreVideo == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Vidéo</span> </TD> 
 <c:if test="${event.statutVideo == null || event.statutVideo == \"pasok\" }"><TD> <a href="listetaches?par=statutVideo&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutVideo == \"encours\"}"><TD> <a href="listetaches?par=statutVideo&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutVideo == \"ok\"}"><TD> <a href="listetaches?par=statutVideo&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreVideo == null || event.ignoreVideo == \"off\" }"><TD><a href="listetaches?par=ignoreVideo&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreVideo == \"on\" }"><TD><a href="listetaches?par=ignoreVideo&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Video\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>  </TR>
  </c:if>
  
  <c:if test="${event.ignoreSon == null || event.ignoreSon == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Son</span> </TD> 
 <c:if test="${event.statutSon == null || event.statutSon == \"pasok\" }"><TD> <a href="listetaches?par=statutSon&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutSon == \"encours\"}"><TD> <a href="listetaches?par=statutSon&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutSon == \"ok\"}"><TD> <a href="listetaches?par=statutSon&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreSon == null || event.ignoreSon == \"off\" }"><TD><a href="listetaches?par=ignoreSon&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreSon == \"on\" }"><TD><a href="listetaches?par=ignoreSon&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Son\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreLumiere == null || event.ignoreLumiere == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Lumière</span> </TD> 
 <c:if test="${event.statutLumiere == null || event.statutLumiere == \"pasok\" }"><TD> <a href="listetaches?par=statutLumiere&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLumiere == \"encours\"}"><TD> <a href="listetaches?par=statutLumiere&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLumiere == \"ok\"}"><TD> <a href="listetaches?par=statutLumiere&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreLumiere == null || event.ignoreLumiere == \"off\" }"><TD><a href="listetaches?par=ignoreLumiere&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreLumiere == \"on\" }"><TD><a href="listetaches?par=ignoreLumiere&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Lumiere\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>  </TR>
  </c:if>
  
   <c:if test="${event.ignoreLieu == null || event.ignoreLieu == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Accord Lieu</span> </TD> 
 <c:if test="${event.statutLieu == null || event.statutLieu == \"pasok\" }"><TD> <a href="listetaches?par=statutLieu&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLieu == \"encours\"}"><TD> <a href="listetaches?par=statutLieu&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLieu == \"ok\"}"><TD> <a href="listetaches?par=statutLieu&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreLieu == null || event.ignoreLieu == \"off\" }"><TD><a href="listetaches?par=ignoreLieu&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreLieu == \"on\" }"><TD><a href="listetaches?par=ignoreLieu&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Lieu\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignorePole == null || event.ignorePole == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Accord Pôle</span> </TD> 
 <c:if test="${event.statutPole == null || event.statutPole == \"pasok\" }"><TD> <a href="listetaches?par=statutPole&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPole == \"encours\"}"><TD> <a href="listetaches?par=statutPole&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPole == \"ok\"}"><TD> <a href="listetaches?par=statutPole&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignorePole == null || event.ignorePole == \"off\" }"><TD><a href="listetaches?par=ignorePole&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignorePole == \"on\" }"><TD><a href="listetaches?par=ignorePole&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Pole\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreAdmin == null || event.ignoreAdmin == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Accord Administration</span> </TD> 
 <c:if test="${event.statutAdmin == null || event.statutAdmin == \"pasok\" }"><TD> <a href="listetaches?par=statutAdmin&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAdmin == \"encours\"}"><TD> <a href="listetaches?par=statutAdmin&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAdmin == \"ok\"}"><TD> <a href="listetaches?par=statutAdmin&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreAdmin == null || event.ignoreAdmin == \"off\" }"><TD><a href="listetaches?par=ignoreAdmin&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreAdmin == \"on\" }"><TD><a href="listetaches?par=ignoreAdmin&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Admin\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>  </TR>
  </c:if>
  
  </table>
  
  <div class="panel-body">
    <p><center>Paramètres ignorés. Cliquez sur <span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span> si vous souhaitez finalement les prendre en compte</center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Ignorer ? </TH>
  	</TR> 
 
 <c:if test="${event.ignoreTV == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Télévisions</span> </TD> 
 <c:if test="${event.ignoreTV == null || event.ignoreTV == \"off\" }"><TD><a href="listetaches?par=ignoreTV&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreTV == \"on\" }"><TD><a href="listetaches?par=ignoreTV&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAffiche == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Affiches</span> </TD> 
 <c:if test="${event.ignoreAffiche == null || event.ignoreAffiche == \"off\" }"><TD><a href="listetaches?par=ignoreAffiche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreAffiche == \"on\" }"><TD><a href="listetaches?par=ignoreAffiche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR> 
  </c:if>
  
  <c:if test="${event.ignoreReseau == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Réseaux sociaux</span> </TD> 
 <c:if test="${event.ignoreReseau == null || event.ignoreReseau == \"off\" }"><TD><a href="listetaches?par=ignoreReseau&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreReseau == \"on\" }"><TD><a href="listetaches?par=ignoreReseau&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreRadio == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Radio HEI</span> </TD> 
 <c:if test="${event.ignoreRadio == null || event.ignoreRadio == \"off\" }"><TD><a href="listetaches?par=ignoreRadio&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreRadio == \"on\" }"><TD><a href="listetaches?par=ignoreRadio&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreNewsletter == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Newsletter</span> </TD> 
 <c:if test="${event.ignoreNewsletter == null || event.ignoreNewsletter == \"off\" }"><TD><a href="listetaches?par=ignoreNewsletter&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreNewsletter == \"on\" }"><TD><a href="listetaches?par=ignoreNewsletter&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreDepeche == \"on\" }">  
  <TR> 
 <TD> <span class="label label-default">Dépêche HEI</span>	 </TD> 
 <c:if test="${event.ignoreDepeche == null || event.ignoreDepeche == \"off\" }"><TD><a href="listetaches?par=ignoreDepeche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreDepeche == \"on\" }"><TD><a href="listetaches?par=ignoreDepeche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreFlyers == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Flyers</span> </TD> 
 <c:if test="${event.ignoreFlyers == null || event.ignoreFlyers == \"off\" }"><TD><a href="listetaches?par=ignoreFlyers&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreFlyers == \"on\" }"><TD><a href="listetaches?par=ignoreFlyers&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
   <c:if test="${event.ignorePhoto == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Photo</span> </TD> 
 <c:if test="${event.ignorePhoto == null || event.ignorePhoto == \"off\" }"><TD><a href="listetaches?par=ignorePhoto&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignorePhoto == \"on\" }"><TD><a href="listetaches?par=ignorePhoto&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreVideo == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Video</span> </TD> 
 <c:if test="${event.ignoreVideo == null || event.ignoreVideo == \"off\" }"><TD><a href="listetaches?par=ignoreVideo&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreVideo == \"on\" }"><TD><a href="listetaches?par=ignoreVideo&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
   <c:if test="${event.ignoreSon == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Son</span> </TD> 
 <c:if test="${event.ignoreSon == null || event.ignoreSon == \"off\" }"><TD><a href="listetaches?par=ignoreSon&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreSon == \"on\" }"><TD><a href="listetaches?par=ignoreSon&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreLumiere == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Lumiere</span> </TD> 
 <c:if test="${event.ignoreLumiere == null || event.ignoreLumiere == \"off\" }"><TD><a href="listetaches?par=ignoreLumiere&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreLumiere == \"on\" }"><TD><a href="listetaches?par=ignoreLumiere&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
   <c:if test="${event.ignoreLieu == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Accord Lieu</span> </TD> 
 <c:if test="${event.ignoreLieu == null || event.ignoreLieu == \"off\" }"><TD><a href="listetaches?par=ignoreLieu&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreLieu == \"on\" }"><TD><a href="listetaches?par=ignoreLieu&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignorePole == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Accord Pôle</span> </TD> 
 <c:if test="${event.ignorePole == null || event.ignorePole == \"off\" }"><TD><a href="listetaches?par=ignorePole&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignorePole == \"on\" }"><TD><a href="listetaches?par=ignorePole&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAdmin == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Accord Administration</span> </TD> 
 <c:if test="${event.ignoreAdmin == null || event.ignoreAdmin == \"off\" }"><TD><a href="listetaches?par=ignoreAdmin&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreAdmin == \"on\" }"><TD><a href="listetaches?par=ignoreAdmin&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
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