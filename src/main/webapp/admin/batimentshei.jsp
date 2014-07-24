<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Batiment"%> 
<%@page import="java.util.List"%>



<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Gestion bâtiments</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Gestion des bâtiments de HEI</h2>
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
						if(confirm('Etes-vous sur de vouloir supprimer ce batiment?')){
						document.location.href="supprimerbatiment?idBatiment="+id;}
					}

					//]]>
</script>
		
	<div class="alert alert-warning" role="alert">
		 <strong>Pour modifier un bâtiment vous devez le supprimer puis le re-créer</strong>
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

<%
							for (Batiment batiment : (List<Batiment>) request.getAttribute("batiments")) {
						%>
  	
  <TR> 

<td><%=batiment.getNom()%></td> 
<TD>
	<a href="#" title="Supprimer ce batiment" onclick="return validerSupp(<%= batiment.getId() %>)" name="SupprimerBatiment">
	<span class="glyphicon glyphicon-remove"></span></a>
</TD> 

  </TR>
  						<%
							}
						%>
	<TR>
		<form class="form-inline" method="post" action="batimentshei" onsubmit="return valider()" name="AjoutBatiment">
			<label class="sr-only" for="pole">Batiment</label>
			<td><input type="text" class="form-control" id="nom" name="nom" placeholder="Batiment"></td>
			<td><button type="submit" class="btn btn-primary">Ajouter batiment</button></td>
		</form>
	</TR>

  </table>
  
</div>

       	<div class="form-signin" style="padding-top:10px;">
			<a href="gestionadmin"><button class="btn btn-lg btn-info btn-block" style="margin-top:5px;">Retour panneau de gestion</button></a>
	        <a href="../deconnexion"><button class="btn btn-lg btn-danger btn-block" style="margin-top:5px;">Déconnexion</button></a>
		</div>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html>