package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Batiment;
import hei.devweb.model.Event;
import hei.devweb.model.Utilisateur;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TimeServlet extends HttpServlet {
	public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/connexion.jsp";

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Integer idEvent = (Integer) request.getSession().getAttribute("Event");
		
		String date = request.getParameter("date");
		String nom = request.getParameter("nom");
		String type = request.getParameter("type");
		String affluence = request.getParameter("affluence");
		String hei = request.getParameter("hei");
		String batiment = request.getParameter("batiment");
		String debut = request.getParameter("debut");
		String fin = request.getParameter("fin");
		String supprimerevent = request.getParameter("supprimerevent");
		
		if (date != null)
		{
			Manager.getInstance().UpdateGlobEvent(idEvent, date, nom, type, affluence, hei, batiment, debut, fin);
		}
		
		Event event = Manager.getInstance().getEvent(idEvent);
		request.setAttribute("event", event);
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		
		List<Batiment> batiments = Manager.getInstance().listerBatiments();
		request.setAttribute("batiments", batiments);
		
		if (supprimerevent != null)
		{
			Manager.getInstance().supprimerEvent(idEvent);
			
			// Redirection vers la page choix de l'évènement à gérer
			response.sendRedirect( "choix" );
		}
		if (date != null)
		{
			List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
			request.setAttribute("events", events);
			
			request.setAttribute("message", "Vos modifications ont bien été prises en compte");
			
			RequestDispatcher view = request.getRequestDispatcher("time.jsp");
			view.forward(request, response);
		}

	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Integer idEvent = (Integer) request.getSession().getAttribute("Event");
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		Event event = Manager.getInstance().getEvent(idEvent);
		request.setAttribute("event", event);
		
		List<Batiment> batiments = Manager.getInstance().listerBatiments();
		request.setAttribute("batiments", batiments);
		
		RequestDispatcher view = request.getRequestDispatcher("time.jsp");
		view.forward(request, response);
	}

}
