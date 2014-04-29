<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="css/signin.css">
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js "></script>
  </head>
  <body style="padding-top:0px;">
	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Gestion des lieux proposés par l'école</h2>
     	</div>


		
		
  <div class="panel panel-default" >
  <!-- Default panel contents -->
  <div class="panel-heading">Liste des lieux proposés par HEI</div>
  <div class="panel-body">
    <p><center>Supprimez des lieux en cliquant sur : <span class="glyphicon glyphicon-remove"></span></center></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Bâtiment </TH> 
 <TH> Capacité </TH>
 <TH> Actions </TH> 
  	</TR> 
  <TR> 
 <TD> Atrium </TD> 
 <TD> Colbert </TD> 
 <TD><span class="label label-success">300</span></TD> 
 <TD><span class="glyphicon glyphicon-remove"></span></TD> 
  </TR>
  <TR> 
 <TD> Accord pôle </TD> 
 <TD> <span class="glyphicon glyphicon-ok"></span> </TD> 
 <TD><span class="label label-warning">Oui</span></TD> 
 <TD><span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
  </TR>
     <TR> 
 <TH> Désignation </TH> 
 <TH> Statut </TH> 
 <TH> Ignorer ? </TH>
 <TH> Actions </TH> 
  	</TR> 
   <TR> 
 <TD> Accord lieu </TD> 
 <TD> <span class="glyphicon glyphicon-ok"></span> </TD> 
 <TD><span class="label label-warning">Oui</span></TD> 
 <TD><span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
  </TR>  
  </table>
  
</div>

       	<div class="form-signin" style="padding-top:10px;">
       		<a href="papiers"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Demande logistique HEI</button></a>
       		<a href="papiers"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Déclaration d'évènement</button></a>
       		<a href="papiers"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Demande autorisation du pôle</button></a>       		
       		<a href="annulation"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Annuler l'évènement</button></a>
			<a href="gestion"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour panneau de gestion</button></a>
	        <a href="index"><button class="btn btn-lg btn-danger btn-block" style="margin-top:25px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>