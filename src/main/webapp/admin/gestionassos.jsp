<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Association"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Gestion des associations</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Gestion des associations</h2>
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
						if(confirm('Etes-vous sur de vouloir supprimer cette association?')){
						document.location.href="supprimerassociation?idAssociation="+id;}
					}

					//]]>
</script>
		
		<div class="alert alert-warning" role="alert">
		 <strong>Pour modifier une association vous devez la supprimer puis la re-créer</strong>
		</div>
		
		
  <div class="panel panel-default" >
  <!-- Default panel contents -->
  <div class="panel-heading">Liste des associations</div>
  <div class="panel-body">
    <p><center>Supprimer une association : <span class="glyphicon glyphicon-remove"></span></center></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Désignation </TH> 
 <TH> Adresse Mail </TH>
 <TH> Pôle </TH> 
 <TH> Actions </TH> 
  	</TR> 
  <%
		for (Association association : (List<Association>) request.getAttribute("associations")) {
	%>
  <TR> 
 <TD><%=association.getNom()%></TD> 
 <TD><%=association.getMail()%></TD> 
 <TD><%=association.getPole()%></TD> 
 <TD>
	<a href="#" title="Supprimer cette association" onclick="return validerSupp(<%= association.getId() %>)" name="SupprimerAsso">
	<span class="glyphicon glyphicon-remove"></span></a>
</TD> 
  </TR>
  <%	}	%>
  	<TR>
		<form class="form-inline" method="post" action="gestionassos" onsubmit="return valider()" name="AjoutAssociation">
			<label class="sr-only" for="association">Association</label>
			<td><input type="text" class="form-control" id="nom" name="nom" placeholder="Nom"></td>
			<td><input type="email" class="form-control" id="mail" name="mail" placeholder="Mail"></td>
			<td>
				<select class="form-control start" required="" id="pole" name="pole">
		        	<option value="0">Pôle BDE/BDS</option>
		        	<c:forEach var="pole" items="${poles}">
						<option value="${pole.nom}">${pole.nom}</option>
					</c:forEach>
	        	</select>
			</td>
			<td><button type="submit" class="btn btn-primary">Ajouter association</button></td>
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