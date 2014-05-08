package hei.devweb.controllers;

import hei.devweb.metier.Manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SupprimerPoleServlet extends HttpServlet{

	private static final long serialVersionUID = -4927724527514530512L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer idPole = Integer.parseInt(request.getParameter("idPole")); // R�cup�rer l'identifiant dans la request
		System.out.println("Dans contr�leur 'SupprimerPole' avec id="+idPole);
		
		idPole = Integer.parseInt(request.getParameter("idPole"));
		Manager.getInstance().supprimerPole(idPole);
		
		response.sendRedirect("gestionpoles");
	}
}
