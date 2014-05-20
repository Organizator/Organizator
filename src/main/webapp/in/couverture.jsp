<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Event"%>

<%	Event event = (Event) request.getAttribute("event"); %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Photo et video ${event.nom}</title>
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
		<h2 class="form-signin1-heading" align="center">Couverture photo - vidéo</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
  </div>
</div>
     	</div>


		
		
		<div class="panel panel-default">
  <!-- Default panel contents -->
    <div class="panel-heading">
  <h3 class="panel-title">
          <a class="accordion-toggle" href="#item2" data-toggle="collapse">Suivi des moyens de communication mis en place </a> 
        </h3>
  </div>
  <div id="item2" class="panel-collapse collapse in">
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
  
 <c:if test="${event.ignorePhoto == null || event.ignorePhoto == \"off\" }">
  <TR> 
 <TD> Photo</TD> 
 <c:if test="${event.statutPhoto == null || event.statutPhoto == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A faire -> En cours" href="couverture?par=statutPhoto&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPhoto == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="couverture?par=statutPhoto&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutPhoto == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A Faire" href="couverture?par=statutPhoto&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="couverture?par=ignorePhoto&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Photo\"}"><TD><a data-toggle="tooltip" title="Envoyer un mail" href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreVideo == null || event.ignoreVideo == \"off\" }">
  <TR> 
 <TD> Vidéo</TD> 
 <c:if test="${event.statutVideo == null || event.statutVideo == \"pasok\" }"><TD> <a data-toggle="tooltip" title="A Faire -> En cours" href="couverture?par=statutVideo&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutVideo == \"encours\"}"><TD> <a data-toggle="tooltip" title="En cours -> OK" href="couverture?par=statutVideo&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutVideo == \"ok\"}"><TD> <a data-toggle="tooltip" title="OK -> A Faire" href="couverture?par=statutVideo&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <TD><a data-toggle="tooltip" title="Ignorer ce paramètre" href="couverture?par=ignoreVideo&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD>
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
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="couverture?par=ignorePhoto&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD>
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreVideo == \"on\" }">
   <TR> 
 <TD> Video </TD> 
 <TD><a data-toggle="tooltip" title="Prendre en compte ce paramètre" href="couverture?par=ignoreVideo&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD> 
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