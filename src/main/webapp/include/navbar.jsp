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
              <li><a href="../index"><span class="glyphicon glyphicon-home"></span></a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Gestion <b class="caret"></b></a>
                <ul class="dropdown-menu">
                	<li><a href="etat">Accord</a></li>
					<li><a href="comm">Communication</a></li>
					<li><a href="couverture">Couverture Photo - Vidéo</a></li>
					<li><a href="materiel">Son et Lumière</a></li>
	                  <li class="divider"></li>
                  	<li><a href="time">Paramètres de l'évènement</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Evènements <b class="caret"></b></a>
                <ul class="dropdown-menu">
                <script type="text/javascript">

					function validerEvent(id) {
						document.location.href="choix?id="+id;
					}

				</script>
                <c:forEach var="event" items="${events}">  
					<li><a href="#" onclick="return validerEvent(${event.id})">${event.nom}</a></li>
				</c:forEach>
	                  <li class="divider"></li>
                  <li><a href="choix">Revenir à la liste pleine page</a></li>
                </ul>
              </li>
              <li><a href="mailto:louis.sautelet@hei.fr">Contact</a></li>
<!--               <li><a href="mailto:louis.sautelet@hei.fr">Contact administrateur</a></li> -->
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>