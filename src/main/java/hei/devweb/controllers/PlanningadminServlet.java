package hei.devweb.controllers;

import hei.devweb.metier.Manager;
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

public class PlanningadminServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

				List<Event> events = Manager.getInstance().listerEvents();
				request.setAttribute("events", events);

				RequestDispatcher view = request.getRequestDispatcher("planningadmin.jsp");
				view.forward(request, response);	
			}	
	
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				

				List<Event> events = Manager.getInstance().listerEvents();
				request.setAttribute("events", events);
				
				RequestDispatcher view = request.getRequestDispatcher("planningadmin.jsp");
				view.forward(request, response);	
			}

}
