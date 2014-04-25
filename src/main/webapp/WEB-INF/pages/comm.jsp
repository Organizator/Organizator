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
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	<div class="navbar navbar-inverse">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Organizator</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="index">Accueil</a></li>
              <li><a href="about">A propos</a></li>
              <li><a href="#contact">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Evènements <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Petit déjeuner le 28/04</a></li>
                  <li><a href="#">Afterwork le 38/14</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
	<div class="container">
				<h4>Progression globale de l'évènement: </h4>
	     <div class="progress">
	        <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
	        <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
	        <div class="progress-bar progress-bar-danger" style="width: 45%"><span class="sr-only">10% Complete (danger)</span></div>
     	</div>
	     <div class="alert alert-warning">
	        <strong>Attention !</strong> Plus que 11 jours avant l'évènement. Avez-vous pensé à tout? <button type="button" class="btn btn-xs btn-warning" style="float:right;">Liste des tâches</button>
	     </div>
	     <div class="form-signin" style="padding-top:5px;">
	     	<div class="btn-group btn-group-justified">
	     	<div class="btn-group">
	        <a href="gestion"><button class="btn btn-lg btn-info ">Etat de l'évènement</button></a>
	         </div>
	        <div class="btn-group">
	        <a href="gestion"><button class="btn btn-lg btn-info " style="margin-top:5px;">Date / Heure</button></a>
	         </div>
	        </div>
	        <a href="gestion"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Communication</button></a>
		</div>
		<div style="padding-top:30px;">
		<h2 class="form-signin1-heading" align="center">Communication liée à l'évènement</h2>
		<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
    <span class="sr-only">40% Complete (success)</span>
  </div>
</div>
     	</div>


		
		
		<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Suivi des moyens de communication mis en place</div>
  <div class="panel-body">
    <p><center>Mettez ici à jour les statuts des différents moyen de communication disponibles : <span class="glyphicon glyphicon-ok"></span> ou <span class="glyphicon glyphicon-remove"></span></center></center></p>
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
 <TD> Télévisions </TD> 
 <TD> <span class="glyphicon glyphicon-ok"></span> </TD> 
 <TD><span class="label label-warning">Oui</span></TD> 
 <TD> <span class="glyphicon glyphicon-envelope"></span> <span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span>	</TD> 
  </TR>
  <TR> 
 <TD> Affiches </TD> 
 <TD> <span class="glyphicon glyphicon-ok"></span> </TD> 
 <TD><span class="label label-warning">Oui</span></TD> 
 <TD> <span class="glyphicon glyphicon-envelope"></span> <span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
  </TR> 
  <TR> 
 <TD> Réseaux sociaux	 </TD> 
 <TD> <span class="glyphicon glyphicon-remove"></span> </TD> 
 <TD><span class="label label-warning">Oui</span></TD> 
 <TD> <a href="index"><span class="glyphicon glyphicon-envelope"></span></a> <span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
  </TR>
  <TR> 
 <TD> Radio HEI	 </TD> 
 <TD> <span class="glyphicon glyphicon-remove"></span> </TD> 
 <TD><span class="label label-success">Non</span></TD> 
 <TD> <a href="index"><span class="glyphicon glyphicon-envelope"></span></a> <span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
  </TR>
  <TR> 
 <TD> Newsletter	 </TD> 
 <TD> <span class="glyphicon glyphicon-remove"></span> </TD> 
 <TD><span class="label label-success">Non</span></TD> 
 <TD> <a href="index"><span class="glyphicon glyphicon-envelope"></span></a> <span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
  </TR>
  <TR> 
 <TD> <span class="label label-default">Dépêche HEI</span>	 </TD> 
 <TD> <span class="glyphicon glyphicon-remove"></span> </TD> 
 <TD><span class="label label-success">Non</span></TD> 
 <TD> <a href="index"><span class="glyphicon glyphicon-envelope"></span></a> <span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
  </TR>
   <TR> 
 <TD> Flyers	 </TD> 
 <TD> <span class="glyphicon glyphicon-remove"></span> </TD> 
 <TD><span class="label label-warning">Oui</span></TD> 
 <TD> <a href="index"><span class="glyphicon glyphicon-envelope"></span></a> <span class="glyphicon glyphicon-floppy-saved"></span> <span class="glyphicon glyphicon-floppy-remove"></span></TD> 
  </TR>
  </table>
  
</div>

       	<div class="form-signin" style="padding-top:10px;">
			<a href="gestion"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour panneau de gestion</button></a>
	        <a href="index"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>