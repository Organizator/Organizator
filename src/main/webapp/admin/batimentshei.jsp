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
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Gestion des bâtiments de HEI</h2>
     	</div>


		
		
  <div class="panel panel-default" >
  <!-- Default panel contents -->
  <div class="panel-heading">Liste des bâtiments proposés par HEI</div>
  <div class="panel-body">
    <p><center>Supprimez un bâtiment en cliquant sur : <span class="glyphicon glyphicon-remove"></span></center></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Actions </TH> 
  	</TR> 
  <TR> 
 <TD> Colbert </TD> 
 <TD><span class="glyphicon glyphicon-remove"></span></TD> 
  </TR>
    <TR> 
 <TD> Segard </TD> 
 <TD><span class="glyphicon glyphicon-remove"></span></TD> 
  </TR>
  </table>
  
</div>

       	<div class="form-signin" style="padding-top:10px;">
       		<a href="ajoutlieuxadmin"><button class="btn btn-lg btn-success btn-block" style="margin-top:5px;">Ajouter nouveau bâtiment</button></a>       		
			<a href="gestionadmin"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour panneau de gestion</button></a>
	        <a href="index"><button class="btn btn-lg btn-danger btn-block" style="margin-top:25px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>