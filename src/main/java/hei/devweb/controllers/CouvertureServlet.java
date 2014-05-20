package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Communication;
import hei.devweb.model.Event;
import hei.devweb.model.Utilisateur;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CouvertureServlet extends HttpServlet {
	public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/connexion.jsp";

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		RequestDispatcher view = request.getRequestDispatcher("couverture.jsp");
		view.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		HttpSession session = request.getSession();
		Integer idEvent = (Integer) request.getSession().getAttribute("Event");
		
		if (request.getParameter("par") != null && request.getParameter("etat") != null)
		{
			Manager.getInstance().UpdateEvent(request.getParameter("par"), request.getParameter("etat"), idEvent);;
		}
		
		Event event = Manager.getInstance().getEvent(idEvent);
		request.setAttribute("event", event);
		
		List<Communication>listecommunications = new ArrayList<Communication>();
		listecommunications = Manager.getInstance().listerCommunications();

		request.setAttribute("communications", listecommunications);
		
		RequestDispatcher view = request.getRequestDispatcher("couverture.jsp");
		view.forward(request, response);
	}

}
