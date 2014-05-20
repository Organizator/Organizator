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
	
	<script>
		$(function() {
			$('a').tooltip();
		});
	</script>

	<div class="container" id="monaccordeon">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center">Tâches liées à l'évènement</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
  </div>
</div>
     	</div>


	<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">
  <h3 class="panel-title">
          <a class="accordion-toggle" href="#item1" data-parent="#monaccordeon" data-toggle="collapse"> Accords relatifs à la mise en place de votre évènement  <span style="float:right" class="glyphicon glyphicon-chevron-down"></span></a> 
        </h3>
  </div>
	<c:choose>
		<c:when test="${param['item'] == 1}">
			<div id="item1" class="panel-collapse collapse in">
		</c:when>
		<c:otherwise>
			<div id="item1" class="panel-collapse collapse">
		</c:otherwise>
	</c:choose>

			<!-- Table -->
  <table class="table table-striped">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Statut </TH> 
 <TH> Ignorer ? </TH>
 <TH> Actions </TH> 
  	</TR> 
  <TR> 
  
 <c:if test="${event.ignoreLieu == null || event.ignoreLieu == \"off\" }">
  <TR> 
 <TD> Accord Lieu </TD> 
 <c:if test="${event.statutLieu == null || event.statutLieu == \"pasok\" }"><TD> <a title="A faire -> En cours" data-toggle="tooltip" href="listetaches?item=1&par=statutLieu&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLieu == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=1&par=statutLieu&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLieu == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=1&par=statutLieu&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=1&par=ignoreLieu&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Lieu\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a></TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignorePole == null || event.ignorePole == \"off\" }">
  <TR> 
 <TD> Accord Pôle </TD> 
 <c:if test="${event.statutPole == null || event.statutPole == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=1&par=statutPole&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPole == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=1&par=statutPole&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPole == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=1&par=statutPole&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=1&par=ignorePole&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Pole\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreAdmin == null || event.ignoreAdmin == \"off\" }">
  <TR> 
 <TD> Accord Administration </TD> 
 <c:if test="${event.statutAdmin == null || event.statutAdmin == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=1&par=statutAdmin&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAdmin == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=1&par=statutAdmin&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAdmin == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=1&par=statutAdmin&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=1&par=ignoreAdmin&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Admin\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>  </TR>
  </c:if>
  
  </table>
  
  <div class="panel-body">
    <p><center>Moyens de communication ignorés. Cliquez sur <span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span> si vous souhaitez finalement les prendre en compte</center></p>
  </div>

  <!-- Table -->
  <table class="table table-striped">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Ignorer ? </TH>
  	</TR> 
 
 <c:if test="${event.ignoreLieu == \"on\" }">
  <TR> 
 <TD> Accord Lieu </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=1&par=ignoreLieu&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignorePole == \"on\" }">
   <TR> 
  <TD> Accord Pôle </TD> 
  <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=1&par=ignorePole&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAdmin == \"on\" }">
   <TR> 
 <TD> Accord Administration </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=1&par=ignoreAdmin&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR>
  </c:if>
  
  </table>
    </div>
  
  
</div>

		<div class="panel panel-default">
  <!-- Default panel contents -->
    <div class="panel-heading">
  <h3 class="panel-title">
          <a class="accordion-toggle" href="#item2" data-parent="#monaccordeon" data-toggle="collapse">Photo / Vidéo (Declic / Saturne)   <span style="float:right" class="glyphicon glyphicon-chevron-down"></span></a> 
        </h3>
  </div>
	<c:choose>
		<c:when test="${param['item'] == 2}">
			<div id="item2" class="panel-collapse collapse in">
		</c:when>
		<c:otherwise>
			<div id="item2" class="panel-collapse collapse">
		</c:otherwise>
	</c:choose>
  <!-- Table -->
  <table class="table table-striped">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Statut </TH> 
 <TH> Ignorer ? </TH>
 <TH> Actions </TH> 
  	</TR> 
  <TR> 
  
 <c:if test="${event.ignorePhoto == null || event.ignorePhoto == \"off\" }">
  <TR> 
 <TD> Photo</TD> 
 <c:if test="${event.statutPhoto == null || event.statutPhoto == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=2&par=statutPhoto&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPhoto == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=2&par=statutPhoto&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPhoto == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A Faire" href="listetaches?item=2&par=statutPhoto&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=2&par=ignorePhoto&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Photo\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreVideo == null || event.ignoreVideo == \"off\" }">
  <TR> 
 <TD> Vidéo</TD> 
 <c:if test="${event.statutVideo == null || event.statutVideo == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A Faire -> En cours" href="listetaches?item=2&par=statutVideo&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutVideo == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=2&par=statutVideo&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutVideo == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A Faire" href="listetaches?item=2&par=statutVideo&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=2&par=ignoreVideo&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Video\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>  </TR>
  </c:if>
  
  </table>
  
  <div class="panel-body">
    <p><center>Moyens de communication ignorés. Cliquez sur <span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span> si vous souhaitez finalement les prendre en compte</center></p>
  </div>

  <!-- Table -->
  <table class="table table-striped">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Ignorer ? </TH>
  	</TR> 
 
 <c:if test="${event.ignorePhoto == \"on\" }">
  <TR> 
 <TD> Photo </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=2&par=ignorePhoto&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreVideo == \"on\" }">
   <TR> 
 <TD> Video </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=2&par=ignoreVideo&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
  </c:if>
  
  </table>
  </div>
  
</div>

	<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">
  <h3 class="panel-title">
          <a class="accordion-toggle" href="#item3" data-parent="#monaccordeon" data-toggle="collapse"> Matériel (Son & Lumière)   <span style="float:right" class="glyphicon glyphicon-chevron-down"></span></a> 
        </h3>
  </div>
	<c:choose>
		<c:when test="${param['item'] == 3}">
			<div id="item3" class="panel-collapse collapse in">
		</c:when>
		<c:otherwise>
			<div id="item3" class="panel-collapse collapse">
		</c:otherwise>
	</c:choose>
  <!-- Table -->
  <table class="table table-striped">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Statut </TH> 
 <TH> Ignorer ? </TH>
 <TH> Actions </TH> 
  	</TR> 
  <TR> 
  
 <c:if test="${event.ignoreSon == null || event.ignoreSon == \"off\" }">
  <TR> 
 <TD> Son</TD> 
 <c:if test="${event.statutSon == null || event.statutSon == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=3&par=statutSon&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutSon == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=3&par=statutSon&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutSon == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=3&par=statutSon&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=3&par=ignoreSon&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Son\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreLumiere == null || event.ignoreLumiere == \"off\" }">
  <TR> 
 <TD> Lumière</TD> 
 <c:if test="${event.statutLumiere == null || event.statutLumiere == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=3&par=statutLumiere&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLumiere == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=3&par=statutLumiere&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLumiere == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=3&par=statutLumiere&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=3&par=ignoreLumiere&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Lumiere\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>  </TR>
  </c:if>
  
  </table>
  
  <div class="panel-body">
    <p><center>Moyens de communication ignorés. Cliquez sur <span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span> si vous souhaitez finalement les prendre en compte</center></p>
  </div>

  <!-- Table -->
  <table class="table table-striped">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Ignorer ? </TH>
  	</TR> 
 
 <c:if test="${event.ignoreSon == \"on\" }">
  <TR> 
 <TD> Son</TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=3&par=ignoreSon&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreLumiere == \"on\" }">
   <TR> 
 <TD> Lumiere</TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=3&par=ignoreLumiere&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR>
  </c:if>
  
  </table>
  </div>
  
</div>

	<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">
  <h3 class="panel-title">
          <a class="accordion-toggle" href="#item4" data-parent="#monaccordeon" data-toggle="collapse"> Moyens de communication   <span style="float:right" class="glyphicon glyphicon-chevron-down"></span></a> 
        </h3>
  </div>
	<c:choose>
		<c:when test="${param['item'] == 4}">
			<div id="item4" class="panel-collapse collapse in">
		</c:when>
		<c:otherwise>
			<div id="item4" class="panel-collapse collapse">
		</c:otherwise>
	</c:choose>
  <!-- Table -->
  <table class="table table-striped">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Statut </TH> 
 <TH> Ignorer ? </TH>
 <TH> Actions </TH> 
  	</TR> 
 
 <c:if test="${event.ignoreTV == null || event.ignoreTV == \"off\" }">
  <TR> 
 <TD> Télévisions </TD> 
 <c:if test="${event.statutTV == null || event.statutTV == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=4&par=statutTV&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutTV == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=4&par=statutTV&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutTV == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=4&par=statutTV&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=4&par=ignoreTV&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"TV\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAffiche == null || event.ignoreAffiche == \"off\" }">
  <TR> 
 <TD> Affiches </TD> 
 <c:if test="${event.statutAffiche == null || event.statutAffiche == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=4&par=statutAffiche&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAffiche == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=4&par=statutAffiche&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAffiche == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=4&par=statutAffiche&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=4&par=ignoreAffiche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Affiche\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR> 
  </c:if>
  
  <c:if test="${event.ignoreReseau == null || event.ignoreReseau == \"off\" }">
  <TR> 
 <TD> Réseaux sociaux </TD> 
 <c:if test="${event.statutReseau == null || event.statutReseau == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=4&par=statutReseau&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutReseau == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=4&par=statutReseau&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutReseau == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=4&par=statutReseau&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=4&par=ignoreReseau&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Reseau\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreRadio == null || event.ignoreRadio == \"off\" }">
  <TR> 
 <TD> Radio HEI </TD> 
 <c:if test="${event.statutRadio == null || event.statutRadio == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=4&par=statutRadio&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutRadio == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=4&par=statutRadio&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutRadio == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=4&par=statutRadio&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=4&par=ignoreRadio&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Radio\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreNewsletter == null || event.ignoreNewsletter == \"off\" }">
  <TR> 
 <TD> Newsletter </TD> 
 <c:if test="${event.statutNewsletter == null || event.statutNewsletter == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=4&par=statutNewsletter&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutNewsletter == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=4&par=statutNewsletter&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutNewsletter == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=4&par=statutNewsletter&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=4&par=ignoreNewsletter&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Newsletter\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreDepeche == null || event.ignoreDepeche == \"off\" }">  
  <TR> 
 <TD> Dépêche HEI </TD> 
 <c:if test="${event.statutDepeche == null || event.statutDepeche == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=4&par=statutDepeche&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutDepeche == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=4&par=statutDepeche&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutDepeche == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=4&par=statutDepeche&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=4&par=ignoreDepeche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Depeche\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreFlyers == null || event.ignoreFlyers == \"off\" }">
   <TR> 
 <TD> Flyers </TD> 
 <c:if test="${event.statutFlyers == null || event.statutFlyers == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="listetaches?item=4&par=statutFlyers&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutFlyers == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="listetaches?item=4&par=statutFlyers&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutFlyers == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="listetaches?item=4&par=statutFlyers&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="listetaches?item=4&par=ignoreFlyers&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Flyers\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  </table>
  <div class="panel-body">
    <p><center>Moyens de communication ignorés. Cliquez sur <span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span> si vous souhaitez finalement les prendre en compte</center></p>
  </div>

  <!-- Table -->
 <table class="table table-striped">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Ignorer ? </TH>
  	</TR> 
 
 <c:if test="${event.ignoreTV == \"on\" }">
  <TR> 
 <TD> Télévisions </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=4&par=ignoreTV&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAffiche == \"on\" }">
  <TR> 
 <TD> Affiches </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=4&par=ignoreAffiche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR> 
  </c:if>
  
  <c:if test="${event.ignoreReseau == \"on\" }">
  <TR> 
 <TD> Réseaux sociaux </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=4&par=ignoreReseau&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreRadio == \"on\" }">
  <TR> 
 <TD> Radio HEI </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=4&par=ignoreRadio&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreNewsletter == \"on\" }">
  <TR> 
 <TD> Newsletter </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=4&par=ignoreNewsletter&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreDepeche == \"on\" }">  
  <TR> 
 <TD> Dépêche HEI </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=4&par=ignoreDepeche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreFlyers == \"on\" }">
   <TR> 
 <TD> Flyers </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="listetaches?item=4&par=ignoreFlyers&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
  </c:if>
  </table>
  </div>
  
  </div>

       	<div class="form-signin" style="padding-top:10px;">
			<a href="gestion"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour panneau de gestion</button></a>
	        <a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>