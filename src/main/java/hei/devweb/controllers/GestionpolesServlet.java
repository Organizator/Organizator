package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Pole;

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

public class GestionpolesServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				String Nom = request.getParameter("nom");

				
				Pole nouveauPole = new Pole(null, Nom);
				Manager.getInstance().ajouterPole(nouveauPole);

				List<Pole>listepoles = new ArrayList<Pole>();
				listepoles = Manager.getInstance().listerPoles();

				request.setAttribute("poles", listepoles);

				RequestDispatcher view = request.getRequestDispatcher("gestionpoles.jsp");
				view.forward(request, response);	
			}	
	
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
				List<Pole>listepoles = new ArrayList<Pole>();
				listepoles = Manager.getInstance().listerPoles();

				request.setAttribute("poles", listepoles);

				RequestDispatcher view = request.getRequestDispatcher("gestionpoles.jsp");
				view.forward(request, response);	
			}

}
