<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Membre"%> 
<%@page import="java.util.List"%>



<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Accueil</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body style="padding-top:0px;">
	<div class="container">
		<div style="padding-top:10px;">
		<h2 class="form-signin1-heading" align="center" style="padding-bottom:30px;">Gestion des administrateurs</h2>
     	</div>

<script type="text/javascript">
					
					function valider(id) {
						if(confirm('Etes-vous sur de vouloir passer ce membre en administrateur?')){
						document.location.href="admin?id="+id;}
					}

					//]]>
</script>
		
		
  <div class="panel panel-default" >
  <!-- Default panel contents -->
  <div class="panel-heading">Liste des bâtiments proposés par HEI</div>
  <div class="panel-body">
    <p><center>Supprimez un bâtiment en cliquant sur : <span class="glyphicon glyphicon-remove"></span></center></center></p>
  </div>

  <!-- Table -->
  <table class="table">
    <TR> 
 <TH> Mail membre </TH> 
 <TH> Rendre administrateur </TH> 

<% for (Membre membre : (List<Membre>) request.getAttribute("membres")) {	%>
  	
  <TR> 

<td><%=membre.getMail()%></td> 
<TD>
	<a href="#" title="Passer administrateur" onclick="return valider(<%= membre.getId() %>)" name="SupprimerBatiment">
	<span class="glyphicon glyphicon-user"></span></a>
</TD> 

  </TR>
  						<%
							}
						%>

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