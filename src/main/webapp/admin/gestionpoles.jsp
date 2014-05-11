<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Pole"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Gestion des pôles</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Gestion des pôles</h2>
     	</div>

<script type="text/javascript">

					function valider() {
						if (document.AjoutAnecdote.anecdote.value != "") {
							if (confirm("Ajouter cette anecdote ?")) {
								// sinon on affiche un message
								// et on indique de ne pas envoyer le formulaire
								return true;
							}
							else {return false;}
						} else {
							// sinon on affiche un message
							alert("Ajoutez une anecdote avant de cliquer sur ce bouton ;)");
							// et on indique de ne pas envoyer le formulaire
							return false;
						}
					}
					
					function validerSupp(id) {
						if(confirm('Etes-vous sur de vouloir supprimer ce pôle?')){
						document.location.href="supprimerpole?idPole="+id;}
					}

					//]]>
</script>
		
		
  <div class="panel panel-default" >
  <!-- Default panel contents -->
  <div class="panel-heading">Liste des pôles</div>
  <div class="panel-body">
    <p><center>Supprimez un pôle en cliquant sur : <span class="glyphicon glyphicon-remove"></span></center></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Actions </TH> 
  	</TR> 
  	
  							<%
							for (Pole pole : (List<Pole>) request.getAttribute("poles")) {
						%>
  	
  <TR> 

<td><%=pole.getNom()%></td> 
<TD>
	<a href="#" title="Supprimer ce pôle" onclick="return validerSupp(<%= pole.getId() %>)" name="SupprimerPole">
	<span class="glyphicon glyphicon-remove"></span></a>
</TD> 

  </TR>
  						<%
							}
						%>
	<TR>
		<form class="form-inline" method="post" action="gestionpoles" onsubmit="return valider()" name="AjoutPole">
			<label class="sr-only" for="pole">Pole</label>
			<td><input type="text" class="form-control" id="nom" name="nom" placeholder="Pôle"></td>
			<td><button type="submit" class="btn btn-primary">Ajouter pôle</button></td>
		</form>
	</TR>
  
  </table>
  
</div>

       	<div class="form-signin" style="padding-top:10px;">      		
			<a href="gestionadmin"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour page d'administration</button></a>
	        <a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>