<%@page contentType="text/html" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %><%@page import="java.util.List"%><!DOCTYPE html><html>  <head>    <title>Organizator - Gestion des évènements</title>    <%@include file="../include/links.jsp" %>  </head>  <body style="padding-top:0px;">	<div class="container">		<div style="padding-top:10px;">		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Gestion des évènements</h2>     	</div>				  <div class="panel panel-default" >  <!-- Default panel contents -->  <div class="panel-heading">Liste des évènements prévus</div>  <div class="panel-body">    <p><center>Contacter l'organisateur <span class="glyphicon glyphicon-envelope"></span> | voir les détails de l'évènement <span class="glyphicon glyphicon-search"></span> | supprimer un évènement <span class="glyphicon glyphicon-remove"></span></center></p>  </div>  <!-- Table --> <table class="table">    <TR>  <TH> Nom </TH>  <TH> Type </TH>  <TH> Organisateur </TH>  <TH> Date prévue </TH>  <TH> Lieu prévu </TH> <TH> Action </TH>   	</TR>   <c:forEach var="event" items="${events}">  <TR>   			 <TD> ${event.nom} </TD>  <TD> ${event.typeevent} </TD>  <TD> ${event.organisateur} </TD>  <TD> ${event.date} </TD>  <TD> ${event.batiment}	</TD> <TD>  	<a href="eventadmin?id=${event.id}" title="Détails sur l'évènement"><span class="glyphicon glyphicon-search"></span></a> 	<A HREF="mailto:${event.organisateur}?subject=Votre évènement ${event.typeevent}&cc=&bcc=&body=Bonjour," title="Contacter par mail"><span class="glyphicon glyphicon-envelope"></span></A> 	<a href="annulationadmin?id=${event.id}&date=${event.date}&organisateur=${event.organisateur}&nom=${event.nom}&type=${event.typeevent}" title="Supprimer cet évènement"><span class="glyphicon glyphicon-remove"></span></a>		</TD>    </TR>    </c:forEach>    </table>    </div>       	<div class="form-signin" style="padding-top:10px;">      					<a href="gestionadmin"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour page d'administration</button></a>	        <a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>		</div>    </div>	<%-- <%@include file="footer.jsp" %> --%>  </body></html>