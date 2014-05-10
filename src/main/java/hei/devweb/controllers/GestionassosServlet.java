package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Association;
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

public class GestionassosServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String Nom = request.getParameter("nom");
		String Mail = request.getParameter("mail");
		String Pole = request.getParameter("pole");

		Association nouvelAssociation = new Association(null, Nom, Mail, Pole);
		Manager.getInstance().ajouterAssociation(nouvelAssociation);
		
		List<Association> listeassociations = new ArrayList<Association>();
		listeassociations = Manager.getInstance().listerAssociations();

		request.setAttribute("associations", listeassociations);
		
		List<Pole> poles = Manager.getInstance().listerPoles();
		request.setAttribute("poles", poles);
		
		RequestDispatcher view = request.getRequestDispatcher("gestionassos.jsp");
		view.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Association> listeassociations = new ArrayList<Association>();
		listeassociations = Manager.getInstance().listerAssociations();

		request.setAttribute("associations", listeassociations);
		
		List<Pole> poles = Manager.getInstance().listerPoles();
		request.setAttribute("poles", poles);
		
		RequestDispatcher view = request.getRequestDispatcher("gestionassos.jsp");
		view.forward(request, response);
	}

}
