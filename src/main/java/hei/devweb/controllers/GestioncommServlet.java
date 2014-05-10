package hei.devweb.controllers;

import hei.devweb.metier.Manager;
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

public class GestioncommServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				String Nom = request.getParameter("nom");
				String Contact = request.getParameter("contact");
				String Message = request.getParameter("message");

				
				Communication nouvelleCommunication = new Communication(null, Nom, Contact, Message);
				Manager.getInstance().ajouterCommunication(nouvelleCommunication);

				List<Communication>listecommunications = new ArrayList<Communication>();
				listecommunications = Manager.getInstance().listerCommunications();

				request.setAttribute("communications", listecommunications);
				
		RequestDispatcher view = request.getRequestDispatcher("gestioncomm.jsp");
		view.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
				List<Communication>listecommunications = new ArrayList<Communication>();
				listecommunications = Manager.getInstance().listerCommunications();

				request.setAttribute("communications", listecommunications);
				
		RequestDispatcher view = request.getRequestDispatcher("gestioncomm.jsp");
		view.forward(request, response);
	}

}
