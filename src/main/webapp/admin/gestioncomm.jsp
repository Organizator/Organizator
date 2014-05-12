<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Communication"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Gestion des moyens de communication</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Gestion des moyens de communication</h2>
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
						if(confirm('Etes-vous sur de vouloir supprimer ce moyen de communication ?')){
						document.location.href="supprimercommunication?idComm="+id;}
					}

					//]]>
</script>
		
		
  <div class="panel panel-default" >
  <!-- Default panel contents -->
  <div class="panel-heading">Liste des moyens</div>
  <div class="panel-body">
    <p><center>Supprimez un moyen de communication en cliquant sur : <span class="glyphicon glyphicon-remove"></span></center></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Nom / Désignation </TH> 
 <TH> Contact </TH> 
 <TH> Message </TH> 

 <TH> Actions </TH> 
  	</TR> 
  <%
							for (Communication communication : (List<Communication>) request.getAttribute("communications")) {
						%>
  	
  <TR> 
		<form class="form-inline" method="post" action="gestioncomm" onsubmit="return valider()" name="AjoutCommunication">
			<label class="sr-only" for="pole">Moyen de communication</label>
			<input type="hidden" id="id" name="id" value="<%=communication.getId()%>">
			<td><input type="text" class="form-control" value="<%=communication.getNom()%>" disabled="disabled"></td>
			<td><input type="email" class="form-control" id="contact" name="contact" value="<%=communication.getContact()%>"></td>
			<td><input type="text" class="form-control" id="message" name="message" value="<%=communication.getMessage()%>"></td>
			<td><button type="submit" class="btn btn-primary">Modifier infos <%=communication.getNom()%></button></td>
		</form>
<%-- <td><%=communication.getNom()%></td>  --%>
<%-- <td><%=communication.getContact()%></td> --%>
<%-- <td><%=communication.getMessage()%></td> --%>
<!-- <TD> -->
<%-- 	<a href="#" title="Supprimer ce moyen de communication" onclick="return validerSupp(<%= communication.getId() %>)" name="SupprimerCommunication"> --%>
<!-- 	<span class="glyphicon glyphicon-remove"></span></a> -->
<!-- </TD>  -->

  </TR>
  						<%
							}
						%>
						
<!-- 		<TR> -->
<!-- 		<form class="form-inline" method="post" action="gestioncomm" onsubmit="return valider()" name="AjoutCommunication"> -->
<!-- 			<label class="sr-only" for="pole">Moyen de communication</label> -->
<!-- 			<td><input type="text" class="form-control" id="nom" name="nom" placeholder="nom"></td> -->
<!-- 			<td><input type="email" class="form-control" id="contact" name="contact" placeholder="contact"></td> -->
<!-- 			<td><input type="text" class="form-control" id="message" name="message" placeholder="message"></td> -->
<!-- 			<td><button type="submit" class="btn btn-primary">Ajouter moyen de communication</button></td> -->
<!-- 		</form> -->
<!-- 	</TR>					 -->
						
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