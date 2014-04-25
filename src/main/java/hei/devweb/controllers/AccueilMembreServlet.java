package hei.devweb.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AccueilMembreServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/* Récupération et destruction de la session en cours */
        HttpSession session = request.getSession();

        /* Redirection vers le Site du Zéro ! */
        RequestDispatcher view = request.getRequestDispatcher("accueilmembre.jsp");
		view.forward(request, response);
        
	}
	

}