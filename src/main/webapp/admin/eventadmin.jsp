<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Event"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<div class="container">

		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center">Détails de l'évènement</h2>
     	</div>


		
		
		<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Retrouvez tous les détails relatif à l'évènement selectionné</div>
  <div class="panel-body">
  <%
					Event event = (Event) request.getAttribute("event");
%>
    <p><center><strong>${event.typeevent}</strong></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Donnée </TH> 
 <TH> Valeur </TH> 
  	</TR> 

  
  <TR> 
 <TD>Nom</TD> 
 <TD>${event.nom}</TD> 
  </TR>
  <TR> 
 <TD>Association</TD> 
 <TD>${event.asso}</TD> 
  </TR>
  <TR> 
 <TD>Organisateur</TD> 
 <TD>${event.organisateur}</TD> 
  </TR>
  <TR> 
 <TD>Date</TD> 
 <TD>${event.date}</TD> 
  </TR>
   <TR> 
 <TD>Heure de début</TD> 
 <TD>${event.heuredebut}</TD> 
  </TR> 
     <TR> 
 <TD>Heure de fin</TD> 
 <TD>${event.heurefin}</TD> 
  </TR> 
     <TR> 
 <TD>Lieu</TD> 
 <TD>${event.batiment}</TD> 
  </TR> 
     <TR> 
 <TD>Affluence attendue</TD> 
 <TD>${event.affluence}</TD>  
  </TR> 
  </table>
  
</div>

       	<div class="form-signin" style="padding-top:10px;">
			<a href="planningadmin"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour liste des évènements</button></a>
			<a href="gestionadmin"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour panneau de gestion</button></a>
	        <a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>