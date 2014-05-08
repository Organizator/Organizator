<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
    <p><center><strong>RAID HEI</strong></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Donnée </TH> 
 <TH> Valeur </TH> 
  	</TR> 
  <TR> 
 <TD>Organisateur</TD> 
 <TD>Albert LeClodo</TD> 
  </TR>
  <TR> 
 <TD>Date</TD> 
 <TD>23.12.2004</TD> 
  </TR>
   <TR> 
 <TD>Heure de début</TD> 
 <TD>20h00</TD> 
  </TR> 
     <TR> 
 <TD>Heure de fin</TD> 
 <TD>23h00</TD> 
  </TR> 
     <TR> 
 <TD>Lieu</TD> 
 <TD>DTC</TD> 
  </TR> 
     <TR> 
 <TD>Affluence attendue</TD> 
 <TD>1000</TD>  
  </TR> 
  </table>
  
</div>

       	<div class="form-signin" style="padding-top:10px;">
       		<a href="papiers"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Contacter l'organisateur</button></a>       		
       		<a href="annulationadmin"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Refuser l'évènement</button></a>
			<a href="gestionadmin"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour panneau de gestion</button></a>
	        <a href="index"><button class="btn btn-lg btn-danger btn-block" style="margin-top:25px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>