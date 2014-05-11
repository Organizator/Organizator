package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Membre;
import hei.devweb.model.Communication;
import hei.devweb.model.Pole;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("admin.jsp");
		view.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(request.getParameter("id") != null)
		{
			String idMembre = request.getParameter("id");
			Manager.getInstance().passerAdmin(idMembre);
		}
		
		List<Membre>listemembres = new ArrayList<Membre>();
		listemembres = Manager.getInstance().listerMembres();
		
		request.setAttribute("membres", listemembres);
		
		RequestDispatcher view = request.getRequestDispatcher("admin.jsp");
		view.forward(request, response);
	}

}
