package hei.devweb.controllers;

import hei.devweb.metier.Manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AnnulationadminServlet extends HttpServlet {
	public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/connexion.jsp";

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Integer idEvent = Integer.parseInt(request.getParameter("idEvent"));
		
		idEvent = Integer.parseInt(request.getParameter("idEvent"));
		Manager.getInstance().supprimerEvent(idEvent);
		
		
		response.sendRedirect("gestionadmin.jsp");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Integer idEvent = Integer.parseInt(request.getParameter("id"));
		String date = request.getParameter("date");
		String type = request.getParameter("type");
		String organisateur = request.getParameter("organisateur");
		String nom = request.getParameter("nom");
		
		request.setAttribute( "idEvent", idEvent );
		request.setAttribute( "date", date );
		request.setAttribute( "type", type );
		request.setAttribute( "organisateur", organisateur );
		request.setAttribute( "nom", nom );
		
		RequestDispatcher view = request.getRequestDispatcher("annulationadmin.jsp");
		view.forward(request, response);
	}	

}

