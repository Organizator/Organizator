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
    <title>Organizator - Communication ${event.nom}</title>
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

	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center">Communication liée à l'évènement</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
  </div>
</div>
     	</div>


	<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">
  <h3 class="panel-title">
          <a class="accordion-toggle" href="#item4" data-toggle="collapse"> Suivi des moyens de communication </a> 
        </h3>
  </div>
  <div id="item4" class="panel-collapse collapse in">
	  <div class="panel-body">
	    <p><center>Modifiez les statuts des différents paramètres en cliquant sur : <span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span> ok | <span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span> en cours | <span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span> A faire</center><br/>
	    <center>Ou ignorez un paramètre en cliquant sur <span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></center></p>
	  </div>

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
 <c:if test="${event.statutTV == null || event.statutTV == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="comm?par=statutTV&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutTV == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="comm?par=statutTV&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutTV == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="comm?par=statutTV&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="comm?par=ignoreTV&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"TV\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAffiche == null || event.ignoreAffiche == \"off\" }">
  <TR> 
 <TD> Affiches </TD> 
 <c:if test="${event.statutAffiche == null || event.statutAffiche == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="comm?par=statutAffiche&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAffiche == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="comm?par=statutAffiche&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAffiche == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="comm?par=statutAffiche&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="comm?par=ignoreAffiche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Affiche\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR> 
  </c:if>
  
  <c:if test="${event.ignoreReseau == null || event.ignoreReseau == \"off\" }">
  <TR> 
 <TD> Réseaux sociaux </TD> 
 <c:if test="${event.statutReseau == null || event.statutReseau == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="comm?par=statutReseau&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutReseau == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="comm?par=statutReseau&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutReseau == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="comm?par=statutReseau&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="comm?par=ignoreReseau&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Reseau\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreRadio == null || event.ignoreRadio == \"off\" }">
  <TR> 
 <TD> Radio HEI </TD> 
 <c:if test="${event.statutRadio == null || event.statutRadio == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="comm?par=statutRadio&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutRadio == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="comm?par=statutRadio&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutRadio == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="comm?par=statutRadio&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="comm?par=ignoreRadio&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Radio\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreNewsletter == null || event.ignoreNewsletter == \"off\" }">
  <TR> 
 <TD> Newsletter </TD> 
 <c:if test="${event.statutNewsletter == null || event.statutNewsletter == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="comm?par=statutNewsletter&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutNewsletter == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="comm?par=statutNewsletter&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutNewsletter == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="comm?par=statutNewsletter&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="comm?par=ignoreNewsletter&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Newsletter\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreDepeche == null || event.ignoreDepeche == \"off\" }">  
  <TR> 
 <TD> Dépêche HEI </TD> 
 <c:if test="${event.statutDepeche == null || event.statutDepeche == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="comm?par=statutDepeche&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutDepeche == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="comm?par=statutDepeche&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutDepeche == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="comm?par=statutDepeche&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="comm?par=ignoreDepeche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Depeche\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreFlyers == null || event.ignoreFlyers == \"off\" }">
   <TR> 
 <TD> Flyers </TD> 
 <c:if test="${event.statutFlyers == null || event.statutFlyers == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="comm?par=statutFlyers&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutFlyers == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="comm?par=statutFlyers&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutFlyers == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="comm?par=statutFlyers&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="comm?par=ignoreFlyers&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
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
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="comm?par=ignoreTV&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAffiche == \"on\" }">
  <TR> 
 <TD> Affiches </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="comm?par=ignoreAffiche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR> 
  </c:if>
  
  <c:if test="${event.ignoreReseau == \"on\" }">
  <TR> 
 <TD> Réseaux sociaux </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="comm?par=ignoreReseau&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreRadio == \"on\" }">
  <TR> 
 <TD> Radio HEI </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="comm?par=ignoreRadio&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreNewsletter == \"on\" }">
  <TR> 
 <TD> Newsletter </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="comm?par=ignoreNewsletter&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreDepeche == \"on\" }">  
  <TR> 
 <TD> Dépêche HEI </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="comm?par=ignoreDepeche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreFlyers == \"on\" }">
   <TR> 
 <TD> Flyers </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="comm?par=ignoreFlyers&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
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