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

	<script>
		$(function() {
			$('a').tooltip();
		});
	</script>

	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center">Situation administrative</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
  </div>
</div>
     	</div>
		
		
	<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">
  <h3 class="panel-title">
          <a class="accordion-toggle" href="#item1" data-toggle="collapse"> Suivi des accords relatifs à la mise en place de votre évènement </a> 
        </h3>
  </div>
  <div id="item1" class="panel-collapse collapse in">
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
  
 <c:if test="${event.ignoreLieu == null || event.ignoreLieu == \"off\" }">
  <TR> 
 <TD> Accord Lieu </TD> 
 <c:if test="${event.statutLieu == null || event.statutLieu == \"pasok\" }"><TD> <a title="A faire -> En cours" data-toggle="tooltip" href="etat?par=statutLieu&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLieu == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="etat?par=statutLieu&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLieu == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="etat?par=statutLieu&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="etat?par=ignoreLieu&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Lieu\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a></TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignorePole == null || event.ignorePole == \"off\" }">
  <TR> 
 <TD> Accord Pôle </TD> 
 <c:if test="${event.statutPole == null || event.statutPole == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="etat?par=statutPole&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPole == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="etat?par=statutPole&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPole == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="etat?par=statutPole&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="etat?par=ignorePole&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Pole\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreAdmin == null || event.ignoreAdmin == \"off\" }">
  <TR> 
 <TD> Accord Administration </TD> 
 <c:if test="${event.statutAdmin == null || event.statutAdmin == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="etat?par=statutAdmin&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAdmin == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="etat?par=statutAdmin&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutAdmin == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A faire" href="etat?par=statutAdmin&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="etat?par=ignoreAdmin&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
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
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="etat?par=ignoreLieu&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignorePole == \"on\" }">
   <TR> 
  <TD> Accord Pôle </TD> 
  <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="etat?par=ignorePole&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreAdmin == \"on\" }">
   <TR> 
 <TD> Accord Administration </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="etat?par=ignoreAdmin&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
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