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
		<h2 class="form-signin1-heading" align="center">Détails de l'évènement</h2>
     	</div>


		
		
		<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Suivi des accords relatifs à la mise en place de votre évènement</div>
  <div class="panel-body">
    <p><center>Mettez ici à jour les statuts des accords : <span class="glyphicon glyphicon-ok"></span> ou <span class="glyphicon glyphicon-remove"></span></center></center></p>
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
 <TD> Accord administration </TD> 
 <TD> <span class="glyphicon glyphicon-ok"></span> </TD> 
 <TD><span class="label label-success">Non</span></TD> 
 <TD><span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span>	</TD> 
  </TR>
  <TR> 
 <TD> Accord pôle </TD> 
 <TD> <span class="glyphicon glyphicon-ok"></span> </TD> 
 <TD><span class="label label-warning">Oui</span></TD> 
 <TD><span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
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