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
	
	<div class="container">
		<div style="padding-top:30px;">
		<h2 class="form-signin1-heading" align="center">Matériel</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
<!--     <span class="sr-only">70% Complete (success)</span> -->
  </div>
</div>
     	</div>


		
		
		<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Suivi du matériel disponible</div>
  <div class="panel-body">
    <p><center>Mettez ici à jour les statuts des différents moyens matériels disponibles : <span class="glyphicon glyphicon-ok"></span> ou <span class="glyphicon glyphicon-remove"></span></center></center></p>
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
  
 <c:if test="${event.ignoreSon == null || event.ignoreSon == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Son</span> </TD> 
 <c:if test="${event.statutSon == null || event.statutSon == \"pasok\" }"><TD> <a href="materiel?par=statutSon&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutSon == \"encours\"}"><TD> <a href="materiel?par=statutSon&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutSon == \"ok\"}"><TD> <a href="materiel?par=statutSon&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreSon == null || event.ignoreSon == \"off\" }"><TD><a href="materiel?par=ignoreSon&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreSon == \"on\" }"><TD><a href="materiel?par=ignoreSon&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Son\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
 </c:forEach>
  </TR>
  </c:if>
  
 <c:if test="${event.ignoreLumiere == null || event.ignoreLumiere == \"off\" }">
  <TR> 
 <TD> <span class="label label-default">Lumière</span> </TD> 
 <c:if test="${event.statutLumiere == null || event.statutLumiere == \"pasok\" }"><TD> <a href="materiel?par=statutLumiere&etat=encours"><span class="label label-danger"><span class="glyphicon glyphicon-remove"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLumiere == \"encours\"}"><TD> <a href="materiel?par=statutLumiere&etat=ok"><span class="label label-warning"><span class="glyphicon glyphicon-pencil"></span></span></a> </TD></c:if>
 <c:if test="${event.statutLumiere == \"ok\"}"><TD> <a href="materiel?par=statutLumiere&etat=pasok"><span class="label label-success"><span class="glyphicon glyphicon-ok"></span></span></a> </TD></c:if>
 <c:if test="${event.ignoreLumiere == null || event.ignoreLumiere == \"off\" }"><TD><a href="materiel?par=ignoreLumiere&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreLumiere == \"on\" }"><TD><a href="materiel?par=ignoreLumiere&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
 <c:forEach var="communication" items="${communications}">
 <c:if test="${communication.nom == \"Lumiere\"}"><TD><a href="mailto:${communication.contact}?subject=Notre évènement ${event.typeevent} pour ${event.asso}&body=${communication.message},"><span class="glyphicon glyphicon-envelope"></span></a> </TD> </c:if> 
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
 
 <c:if test="${event.ignoreSon == \"on\" }">
  <TR> 
 <TD> <span class="label label-default">Son</span> </TD> 
 <c:if test="${event.ignoreSon == null || event.ignoreSon == \"off\" }"><TD><a href="materiel?par=ignoreSon&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreSon == \"on\" }"><TD><a href="materiel?par=ignoreSon&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
  </TR>
  </c:if>
  
  <c:if test="${event.ignoreLumiere == \"on\" }">
   <TR> 
 <TD> <span class="label label-default">Lumiere</span> </TD> 
 <c:if test="${event.ignoreLumiere == null || event.ignoreLumiere == \"off\" }"><TD><a href="materiel?par=ignoreLumiere&etat=on"><span class="label label-success"><span class="glyphicon glyphicon-remove"></span></span></a></TD></c:if>
 <c:if test="${event.ignoreLumiere == \"on\" }"><TD><a href="materiel?par=ignoreLumiere&etat=off"><span class="label label-danger"><span class="glyphicon glyphicon-ok"></span></span></a></TD></c:if>  
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