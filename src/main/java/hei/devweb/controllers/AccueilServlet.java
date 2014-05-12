package hei.devweb.controllers;

import hei.devweb.dao.ConnexionForm;
import hei.devweb.metier.Manager;
import hei.devweb.model.Event;
import hei.devweb.model.Membre;
import hei.devweb.model.Utilisateur;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AccueilServlet extends HttpServlet {
	
	public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/pages/index.jsp";

	private static final long serialVersionUID = 3904379670853846520L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		if ( session.getAttribute( ATT_SESSION_USER ) != null ) {
			Utilisateur utilisateur2 = (Utilisateur) request.getSession().getAttribute(ATT_SESSION_USER);
			
			Membre membre = Manager.getInstance().getMembre(utilisateur2.getMail());
			request.setAttribute("membre", membre);
		}
		
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/* Préparation de l'objet formulaire */
        ConnexionForm form = new ConnexionForm();

        /* Traitement de la requête et récupération du bean en résultant */
        Utilisateur utilisateur = form.connecterUtilisateur( request );

        /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();

        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
         * Utilisateur à la session, sinon suppression du bean de la session.
         */
        if ( form.getErreurs().isEmpty() ) {
            session.setAttribute( ATT_SESSION_USER, utilisateur );
        } 
        else {
            session.setAttribute( ATT_SESSION_USER, null );
        }

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );
        
		if ( session.getAttribute( ATT_SESSION_USER ) != null ) {
			Utilisateur utilisateur2 = (Utilisateur) request.getSession().getAttribute(ATT_SESSION_USER);
			
			Membre membre = Manager.getInstance().getMembre(utilisateur2.getMail());
			request.setAttribute("membre", membre);
		}

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

}
