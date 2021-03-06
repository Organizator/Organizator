package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Batiment;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BatimentsheiServlet extends HttpServlet {
	public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/connexion.jsp";

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
				String Nom = request.getParameter("nom");

				Batiment nouveauBatiment = new Batiment(null, Nom);
				Manager.getInstance().ajouterBatiment(nouveauBatiment);

				List<Batiment>listebatiments = new ArrayList<Batiment>();
				listebatiments = Manager.getInstance().listerBatiments();

				request.setAttribute("batiments", listebatiments);
		
		RequestDispatcher view = request.getRequestDispatcher("batimentshei.jsp");
		view.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
				List<Batiment>listebatiments = new ArrayList<Batiment>();
				listebatiments = Manager.getInstance().listerBatiments();

				request.setAttribute("batiments", listebatiments);
		
		RequestDispatcher view = request.getRequestDispatcher("batimentshei.jsp");
		view.forward(request, response);
	}

}
