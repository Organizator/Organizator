package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Event;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EventadminServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("eventadmin.jsp");
		view.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Integer idEvent = Integer.parseInt(request.getParameter("id"));
		
		Event event = Manager.getInstance().getEvent(idEvent);
		request.setAttribute("event", event);
		
		RequestDispatcher view = request.getRequestDispatcher("eventadmin.jsp");
		view.forward(request, response);
	}

}
