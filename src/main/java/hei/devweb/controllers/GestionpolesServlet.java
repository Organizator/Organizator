package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Boisson;
import hei.devweb.model.Commande;
import hei.devweb.model.Pole;
import hei.devweb.model.Sandwich;
import hei.devweb.model.Sauce;

import java.io.IOException;
import java.util.ArrayList;
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
		
		List<Pole>listepoles = new ArrayList<Pole>();
		listepoles = Manager.getInstance().listerPoles();
		
		List<Commande> listecommandes = Manager.getInstance().listerCommandes();
		
		List<Boisson> listeboisson = new ArrayList<Boisson>();
		listeboisson = Manager.getInstance().listerBoissons();
		
		List<Sandwich> listesandwich = new ArrayList<Sandwich>();
		listesandwich = Manager.getInstance().listerSandwichs();
		
		request.setAttribute("commandes", listecommandes);
		request.setAttribute("sauces", listesausse);
		request.setAttribute("boissons", listeboisson);
		request.setAttribute("sandwichs", listesandwich);
		RequestDispatcher view = request.getRequestDispatcher("admin/gestionpoles.jsp");
		view.forward(request, response);	
	}
	
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("admin/gestionpoles.jsp");
		view.forward(request, response);
	}

}
