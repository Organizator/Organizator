package hei.devweb.controllers;

import hei.devweb.metier.Manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SupprimerAssociationServlet extends HttpServlet{

	private static final long serialVersionUID = -4927724527514530512L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer idAssociation = Integer.parseInt(request.getParameter("idAssociation")); // R�cup�rer l'identifiant dans la request
		System.out.println("Dans contr�leur 'SupprimerAsso' avec id="+idAssociation);
		
		idAssociation = Integer.parseInt(request.getParameter("idAssociation"));
		Manager.getInstance().supprimerAssociation(idAssociation);
		
		response.sendRedirect("gestionassos");
	}
}
