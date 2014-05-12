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
		<h2 class="form-signin1-heading" align="center">Communication liée à l'évènement</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
    <span class="sr-only">40% Complete (success)</span>
  </div>
</div>
     	</div>


		
		
		<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Suivi des moyens de communication mis en place</div>
  <div class="panel-body">
    <p><center>Mettez ici à jour les statuts des différents moyen de communication disponibles : <span class="glyphicon glyphicon-ok"></span> ou <span class="glyphicon glyphicon-remove"></span></center></p>
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
 <c:if test="${event.statutTV == null || event.statutTV == \"pasok\" }"><TD> <a href="comm?par=statutTV&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutTV == \"encours\"}"><TD> <a href="comm?par=statutTV&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutTV == \"ok\"}"><TD> <a href="comm?par=statutTV&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreTV == null || event.ignoreTV == \"off\" }"><TD><a href="comm?par=ignoreTV&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreTV == \"on\" }"><TD><a href="comm?par=ignoreTV&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"TV\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAffiche == null || event.ignoreAffiche == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Affiches</span> </TD> 
 <c:if test="${event.statutAffiche == null || event.statutAffiche == \"pasok\" }"><TD> <a href="comm?par=statutAffiche&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAffiche == \"encours\"}"><TD> <a href="comm?par=statutAffiche&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAffiche == \"ok\"}"><TD> <a href="comm?par=statutAffiche&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreAffiche == null || event.ignoreAffiche == \"off\" }"><TD><a href="comm?par=ignoreAffiche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreAffiche == \"on\" }"><TD><a href="comm?par=ignoreAffiche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Affiche\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR> 
  </c:if>
  
  <c:if test="${event.ignoreReseau == null || event.ignoreReseau == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Réseaux sociaux</span> </TD> 
 <c:if test="${event.statutReseau == null || event.statutReseau == \"pasok\" }"><TD> <a href="comm?par=statutReseau&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutReseau == \"encours\"}"><TD> <a href="comm?par=statutReseau&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutReseau == \"ok\"}"><TD> <a href="comm?par=statutReseau&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreReseau == null || event.ignoreReseau == \"off\" }"><TD><a href="comm?par=ignoreReseau&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreReseau == \"on\" }"><TD><a href="comm?par=ignoreReseau&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Reseau\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreRadio == null || event.ignoreRadio == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Radio HEI</span> </TD> 
 <c:if test="${event.statutRadio == null || event.statutRadio == \"pasok\" }"><TD> <a href="comm?par=statutRadio&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutRadio == \"encours\"}"><TD> <a href="comm?par=statutRadio&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutRadio == \"ok\"}"><TD> <a href="comm?par=statutRadio&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreRadio == null || event.ignoreRadio == \"off\" }"><TD><a href="comm?par=ignoreRadio&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreRadio == \"on\" }"><TD><a href="comm?par=ignoreRadio&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Radio\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreNewsletter == null || event.ignoreNewsletter == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Newsletter</span> </TD> 
 <c:if test="${event.statutNewsletter == null || event.statutNewsletter == \"pasok\" }"><TD> <a href="comm?par=statutNewsletter&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutNewsletter == \"encours\"}"><TD> <a href="comm?par=statutNewsletter&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutNewsletter == \"ok\"}"><TD> <a href="comm?par=statutNewsletter&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreNewsletter == null || event.ignoreNewsletter == \"off\" }"><TD><a href="comm?par=ignoreNewsletter&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreNewsletter == \"on\" }"><TD><a href="comm?par=ignoreNewsletter&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Newsletter\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreDepeche == null || event.ignoreDepeche == \"off\" }">  
  <TR> 
 <TD> <span class="label label-default">Dépêche HEI</span>	 </TD> 
 <c:if test="${event.statutDepeche == null || event.statutDepeche == \"pasok\" }"><TD> <a href="comm?par=statutDepeche&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutDepeche == \"encours\"}"><TD> <a href="comm?par=statutDepeche&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutDepeche == \"ok\"}"><TD> <a href="comm?par=statutDepeche&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreDepeche == null || event.ignoreDepeche == \"off\" }"><TD><a href="comm?par=ignoreDepeche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreDepeche == \"on\" }"><TD><a href="comm?par=ignoreDepeche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Depeche\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreFlyers == null || event.ignoreFlyers == \"off\" }">
   <TR> 
 <TD> <span class="label label-default">Flyers</span> </TD> 
 <c:if test="${event.statutFlyers == null || event.statutFlyers == \"pasok\" }"><TD> <a href="comm?par=statutFlyers&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutFlyers == \"encours\"}"><TD> <a href="comm?par=statutFlyers&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutFlyers == \"ok\"}"><TD> <a href="comm?par=statutFlyers&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreFlyers == null || event.ignoreFlyers == \"off\" }"><TD><a href="comm?par=ignoreFlyers&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreFlyers == \"on\" }"><TD><a href="comm?par=ignoreFlyers&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Flyers\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
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
 
 <c:if test="${event.ignoreTV == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Télévisions</span> </TD> 
 <c:if test="${event.ignoreTV == null || event.ignoreTV == \"off\" }"><TD><a href="comm?par=ignoreTV&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreTV == \"on\" }"><TD><a href="comm?par=ignoreTV&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAffiche == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Affiches</span> </TD> 
 <c:if test="${event.ignoreAffiche == null || event.ignoreAffiche == \"off\" }"><TD><a href="comm?par=ignoreAffiche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreAffiche == \"on\" }"><TD><a href="comm?par=ignoreAffiche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR> 
  </c:if>
  
  <c:if test="${event.ignoreReseau == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Réseaux sociaux</span> </TD> 
 <c:if test="${event.ignoreReseau == null || event.ignoreReseau == \"off\" }"><TD><a href="comm?par=ignoreReseau&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreReseau == \"on\" }"><TD><a href="comm?par=ignoreReseau&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreRadio == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Radio HEI</span> </TD> 
 <c:if test="${event.ignoreRadio == null || event.ignoreRadio == \"off\" }"><TD><a href="comm?par=ignoreRadio&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreRadio == \"on\" }"><TD><a href="comm?par=ignoreRadio&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreNewsletter == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Newsletter</span> </TD> 
 <c:if test="${event.ignoreNewsletter == null || event.ignoreNewsletter == \"off\" }"><TD><a href="comm?par=ignoreNewsletter&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreNewsletter == \"on\" }"><TD><a href="comm?par=ignoreNewsletter&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreDepeche == \"on\" }">  
  <TR> 
 <TD> <span class="label label-default">Dépêche HEI</span>	 </TD> 
 <c:if test="${event.ignoreDepeche == null || event.ignoreDepeche == \"off\" }"><TD><a href="comm?par=ignoreDepeche&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreDepeche == \"on\" }"><TD><a href="comm?par=ignoreDepeche&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
   </c:if>
  
  <c:if test="${event.ignoreFlyers == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Flyers</span> </TD> 
 <c:if test="${event.ignoreFlyers == null || event.ignoreFlyers == \"off\" }"><TD><a href="comm?par=ignoreFlyers&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreFlyers == \"on\" }"><TD><a href="comm?par=ignoreFlyers&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
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