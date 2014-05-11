<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="hei.devweb.model.Event"%>

<%	Event event = (Event) request.getAttribute("event"); %>

<!DOCTYPE html>
<html>
  <head>
    <title>Organizator - Modification ${event.nom}</title>
    <%@include file="../include/links.jsp" %>
  </head>
  <body>
	<!-- Menu de navigation -->
<%--   	<jsp:include page="menu.jsp">
	    <jsp:param name="pageSelectionnee" value="jeu"/>
	</jsp:include> --%>
	
	<div class="container">
      <form class="form-signin1" role="form" method=post action="time" id="pilepapier" style="margin-top:25px;margin-bottom:25px;">
	        <h2 class="form-signin1-heading" align="center">Modifier projet </h2>
	        <h3 class="form-signin1-heading" align="center">Détails évènement</h2>
	        <input type="email" class="form-control start" value="${event.organisateur}" required="" autofocus="" disabled="disabled">
	        <input type="date" id="date" name="date" class="form-control end" value="${event.date}" required="" autofocus="">
	        <h4 class="form-signin1-heading" align="center">Champs à remplir</h4>
	        <input type="text" class="form-control start" value="${event.nom}" id="nom" name="nom" required="">
			<select class="form-control mid" required=""  id="type" name="type">
				<option value="${event.typeevent}">${event.typeevent}</option>
	        	<option value="Petit déjeuner">Petit déjeuner</option>
				<option value="Afterwork">Afterwork</option>
				<option value="Autre">Autre</option>
	        </select>
	        <div class="input-group">
			  <input type="number" class="form-control end" style="margin-bottom:0px;" placeholder="Nombre de personnes attendues" value="${event.affluence}" id="affluence" name="affluence">
			  <span class="input-group-addon">personnes</span>
			</div>
	        <select class="form-control start" required=""  id="hei" name="hei" style="margin-top:10px;">
	        	<option value="${event.danshei}">${event.danshei}</option>
				<option value="0">Dans HEI ?</option>
	        	<option value="Oui">Oui</option>
				<option value="Non">Non</option>
	        </select>
	        <select class="form-control end" required="" id="batiment" name="batiment">
	        	<option value="${event.batiment}">${event.batiment}</option>
				<c:forEach var="batiment" items="${batiments}">
					<option value="${batiment.nom}">${batiment.nom}</option>
				</c:forEach>
	        </select>
	        <div class="input-group">
        	  <span class="input-group-addon">de</span>
			  <input type="time" class="form-control start" value="${event.heuredebut}" id="debut" name="debut" required="">
			</div>
			<div class="input-group">
        	  <span class="input-group-addon">&nbsp;à&nbsp;</span>
			  <input type="time" class="form-control end" style="margin-bottom:0px;" value="${event.heurefin}" id="fin" name="fin">
			</div>
	        <button class="btn btn-lg btn-success btn-block" type="submit" style="margin-top:10px;">Valider les modifications</button>
      </form>
      <form class="form-signin1" role="form" method=post action="gestion">
      <button type="post" class="btn btn-lg btn-warning btn-block">Retour panneau de gestion</button>
      </form>
    </div>
	<%-- <%@include file="footer.jsp" %> --%>
  </body>
</html> 