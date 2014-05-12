package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Event;
import hei.devweb.model.Utilisateur;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class GestionServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// able to calculate whole days between two dates easily
//		Days d = Days.daysBetween(today, time);
//		int days = d.getDays();
//		System.out.println("Le temps :"+days);
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		//System.out.println(utilisateur.getMail());
		
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		RequestDispatcher view = request.getRequestDispatcher("gestion.jsp");
		view.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Integer idEvent = (Integer) request.getSession().getAttribute("Event");
		
		Event event = Manager.getInstance().getEvent(idEvent);
		request.setAttribute("event", event);
		
		DateTimeFormatter format = DateTimeFormat.forPattern("yyyy-MM-dd");
		DateTime time = format.parseDateTime(event.getDate());
		DateTime today = new DateTime();
		// able to calculate whole days between two dates easily
		Days d = Days.daysBetween(today, time);
		int days = d.getDays();
		request.setAttribute("days", days);

		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		//System.out.println(utilisateur.getMail());
		
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		RequestDispatcher view = request.getRequestDispatcher("gestion.jsp");
		view.forward(request, response);
	}

}
