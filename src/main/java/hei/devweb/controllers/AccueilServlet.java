package hei.devweb.controllers;

import hei.devweb.metier.ConnexionForm;
import hei.devweb.model.Membre;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AccueilServlet extends HttpServlet {
	
	public static final String ATT_USER         = "membre";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionMembre";
    public static final String VUE              = "/WEB-INF/connexion.jsp";

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/pages/index.jsp");
		view.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ConnexionForm form = new ConnexionForm();

        /* Traitement de la requête et récupération du bean en résultant */
        Membre membre = form.connecterMembre( request );

        /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();

        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
         * Membre à la session, sinon suppression du bean de la session.
         */
        if ( form.getErreurs().isEmpty() ) {
            session.setAttribute( ATT_SESSION_USER, membre );
        } else {
            session.setAttribute( ATT_SESSION_USER, null );
        }

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, membre );
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/pages/index.jsp");
		view.forward(request, response);
	}

}
