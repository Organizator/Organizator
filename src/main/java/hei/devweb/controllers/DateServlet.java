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

public class DateServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String date = request.getParameter("date");

		// Manager -> Vérifier si un évènement est déjà prévu à cette date
		Integer nbEvents = Manager.getInstance().compterEvents("date", date);
		if (nbEvents == 0) {

			request.setAttribute("date", date);

			List<Batiment> batiments = Manager.getInstance().listerBatiments();
			request.setAttribute("batiments", batiments);

			RequestDispatcher view = request.getRequestDispatcher("new.jsp");
			view.forward(request, response);
		} else {
			List<Event> events = Manager.getInstance().listerEventsDate(date);
			request.setAttribute("events", events);

			request.setAttribute("date", date);
			request.setAttribute("nbEvents", nbEvents);

			RequestDispatcher view = request.getRequestDispatcher("date.jsp");
			view.forward(request, response);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setAttribute("nbEvents", 0);
		
		RequestDispatcher view = request.getRequestDispatcher("date.jsp");
		view.forward(request, response);
	}

}
