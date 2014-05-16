package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Association;
import hei.devweb.model.Batiment;
import hei.devweb.model.Event;
import hei.devweb.model.Membre;
import hei.devweb.model.Pole;
import hei.devweb.model.Utilisateur;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CompteServlet extends HttpServlet {
	public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/connexion.jsp";

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String pole = request.getParameter("pole");
		String asso = request.getParameter("asso");
		String resp = request.getParameter("resp");
		String supprimercompte = request.getParameter("supprimercompte");
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		
		if (pole != null || asso != null || resp != null)
		{
			Manager.getInstance().UpdateMembre(utilisateur.getMail(), pole, asso, resp);
		}
		
		// Récup infos pour formulaire de modif membre
		Membre membre = Manager.getInstance().getMembre(utilisateur.getMail());
		request.setAttribute("membre", membre);
		
		List<Pole> poles = Manager.getInstance().listerPoles();
		request.setAttribute("poles", poles);
		
		List<Association> associations = Manager.getInstance().listerAssociations();
		request.setAttribute("associations", associations);
		
		// Pour navbar
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		if (supprimercompte != null)
		{
			Manager.getInstance().supprimerCompte(utilisateur.getMail());
			Manager.getInstance().supprimerEventsMembre(utilisateur.getMail());

	        /* Redirection vers la page de déconnexion ! */
	        response.sendRedirect( "../deconnexion" );
		}
		if (pole != null || asso != null || resp != null)
		{			
			// Message confirmation modif
			request.setAttribute("message", "Vos modifications ont bien été prises en compte");
			
			RequestDispatcher view = request.getRequestDispatcher("compte.jsp");
			view.forward(request, response);
		}

	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		
		// Récup infos pour formulaire de modif membre
		Membre membre = Manager.getInstance().getMembre(utilisateur.getMail());
		request.setAttribute("membre", membre);
		
		List<Pole> poles = Manager.getInstance().listerPoles();
		request.setAttribute("poles", poles);
		
		List<Association> associations = Manager.getInstance().listerAssociations();
		request.setAttribute("associations", associations);
		
		// Pour navbar
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		RequestDispatcher view = request.getRequestDispatcher("compte.jsp");
		view.forward(request, response);
	}

}
