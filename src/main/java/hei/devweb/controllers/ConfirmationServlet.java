package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Association;
import hei.devweb.model.Event;
import hei.devweb.model.Pole;
import hei.devweb.model.Utilisateur;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfirmationServlet extends HttpServlet {
	public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/connexion.jsp";

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("etape") != null)
		{
			String date = request.getParameter("date");
			String type = request.getParameter("type");
			String debut = request.getParameter("debut");
			String fin = request.getParameter("fin");
			String hei = request.getParameter("hei");
			String batiment = request.getParameter("batiment");
			String effectif = request.getParameter("effectif");
			String nom = request.getParameter("nom");
			
			request.setAttribute( "date", date );
			request.setAttribute( "type", type );
			request.setAttribute( "debut", debut );
			request.setAttribute( "fin", fin );
			request.setAttribute( "hei", hei );
			request.setAttribute( "batiment", batiment );
			request.setAttribute( "effectif", effectif );
			request.setAttribute( "nom", nom );

			RequestDispatcher view = request.getRequestDispatcher("confirmation.jsp");
			view.forward(request, response);
		}
		
		else
		{
			String date = request.getParameter("date");
			String type = request.getParameter("type");
			String debut = request.getParameter("debut");
			String fin = request.getParameter("fin");
			String hei = request.getParameter("hei");
			String batiment = request.getParameter("batiment");
			String effectif = request.getParameter("effectif");
			String organisateur = request.getParameter("organisateur");
			String nom = request.getParameter("nom");
			
			Event nouvelEvent = new Event(null, nom, null, date, debut, fin, type, hei, organisateur, null, batiment, null, effectif, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
			Manager.getInstance().ajouterEvent(nouvelEvent);
			
			Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute(ATT_SESSION_USER);
			System.out.println(utilisateur.getMail());
			List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
			request.setAttribute("events", events);
			
			RequestDispatcher view = request.getRequestDispatcher("choix.jsp");
			view.forward(request, response);
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("date.jsp");
		view.forward(request, response);
	}

}
