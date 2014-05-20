<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Event"%>

<%	Event event = (Event) request.getAttribute("event"); %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Matériel ${event.nom}</title>
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
		<h2 class="form-signin1-heading" align="center">Matériel</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
  </div>
</div>
     	</div>


	<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">
  <h3 class="panel-title">
          <a class="accordion-toggle" href="#item3" data-toggle="collapse"> Suivi des demandes de matériel </a> 
        </h3>
  </div>
  <div id="item3" class="panel-collapse collapse in">
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
  <TR> 
  
 <c:if test="${event.ignoreSon == null || event.ignoreSon == \"off\" }">
  <TR> 
 <TD> Son</TD> 
 <c:if test="${event.statutSon == null || event.statutSon == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="materiel?par=statutSon&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutSon == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="materiel?par=statutSon&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutSon == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="materiel?par=statutSon&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="materiel?par=ignoreSon&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Son\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreLumiere == null || event.ignoreLumiere == \"off\" }">
  <TR> 
 <TD> Lumière</TD> 
 <c:if test="${event.statutLumiere == null || event.statutLumiere == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="materiel?par=statutLumiere&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLumiere == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="materiel?par=statutLumiere&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLumiere == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="materiel?par=statutLumiere&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="materiel?par=ignoreLumiere&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
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
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="materiel?par=ignoreSon&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreLumiere == \"on\" }">
   <TR> 
 <TD> Lumiere</TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="materiel?par=ignoreLumiere&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
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