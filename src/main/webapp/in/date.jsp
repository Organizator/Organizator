<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Date nouveau projet</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
		<c:choose>
		<c:when test="${nbEvents == 0}">
	      	<form class="form-signin1" role="form" method=post action="date" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">
		        <h2 class="form-signin1-heading" align="center">Nouveau projet</h2>
		        <h3 class="form-signin1-heading" align="center">Date de l'événement </h3>
		        <input type="date" class="form-control" style="margin-top:25px; margin-bottom:10px;" placeholder="Date" id="date" name="date" required="" >
		        <button class="btn btn-lg btn-success btn-block" type="submit">Valider</button>
		        <button type="reset" class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Réinitialiser</button>
	      	</form>
      	</c:when>
      	
      	<c:otherwise>
      		<div class="alert alert-warning" role="alert"><strong><span class="label label-default">${nbEvents}</span> événement(s)</strong> est/sont déjà prévu(s) ce jour-là (voir liste ci-dessous). Après consultation, vous devez donc confirmer ou <a href="date"><button type="button" class="btn btn-xs btn-warning">changer la date</button></a></div>
      		  <div class="panel panel-default" >
			  <!-- Default panel contents -->
			  <div class="panel-heading">Liste des événements prévus le ${date}</div>
			  <div class="panel-body">
			    <center>Contacter l'organisateur : <span class="glyphicon glyphicon-envelope"></span></center>
			  </div>
			
			  <!-- Table -->
			 <table class="table">
			    <TR> 
			 <TH> Nom </TH> 
			 <TH> Type </TH> 
			 <TH> Organisateur </TH> 
			 <TH> Date prévue </TH> 
			 <TH> Lieu prévu </TH>
			  <TH> Action </TH> 
			  	</TR> 
			  <c:forEach var="event" items="${events}">
			  <TR> 
			  			
			 <TD> ${event.nom} </TD> 
			 <TD> ${event.typeevent} </TD> 
			 <TD> ${event.organisateur} </TD> 
			 <TD> ${event.date} </TD> 
			 <TD> ${event.batiment}	</TD>
			 <TD>
			 	<A HREF="mailto:${event.organisateur}?subject=Votre événement ${event.typeevent}&cc=&bcc=&body=Bonjour," title="Contacter par mail"><span class="glyphicon glyphicon-envelope"></span></A>
			</TD>  
			  </TR>
			  
			  </c:forEach>
			  
			  </table>
			    
			</div>

       	
      		<form class="form-signin1" role="form" method=post action="new" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">
		        <h2 class="form-signin1-heading" align="center">Nouveau projet</h2>
		        <h3 class="form-signin1-heading" align="center">Confirmer la date de l'événement </h3>
		        <input type="date" class="form-control" style="margin-top:25px; margin-bottom:10px;" placeholder="Date" disabled="disabled" value="${date}" >
		        <input type="hidden" value="${date}"  id="date" name="date">
		        <button class="btn btn-lg btn-success btn-block" type="submit">Valider</button>
	      	</form>
      	</c:otherwise>
      	</c:choose>
      <div class="form-signin1" style="padding-top:10px;">
			<a href="../index"><button class="btn btn-lg btn-warning btn-block" style="margin-top:5px;">Retour accueil</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 