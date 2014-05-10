package hei.devweb.controllers;

import hei.devweb.metier.Manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SupprimerBatimentServlet extends HttpServlet{

	private static final long serialVersionUID = -4927724527514530512L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer idBatiment = Integer.parseInt(request.getParameter("idBatiment")); // R�cup�rer l'identifiant dans la request
		System.out.println("Dans contr�leur 'SupprimerBatiment' avec id="+idBatiment);
		
		idBatiment = Integer.parseInt(request.getParameter("idBatiment"));
		Manager.getInstance().supprimerBatiment(idBatiment);
		
		response.sendRedirect("batimentshei");
	}
}
