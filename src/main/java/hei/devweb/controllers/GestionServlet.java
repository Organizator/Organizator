package hei.devweb.controllers;

import hei.devweb.metier.Manager;
import hei.devweb.model.Event;
import hei.devweb.model.Utilisateur;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class GestionServlet extends HttpServlet {

	private static final long serialVersionUID = 3904379670853846520L;
	
	 int vert=0;
	 int orange=0;
	 int rouge=0;
	 int pasignore=0;
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// able to calculate whole days between two dates easily
//		Days d = Days.daysBetween(today, time);
//		int days = d.getDays();
//		System.out.println("Le temps :"+days);
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		//System.out.println(utilisateur.getMail());
		
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		RequestDispatcher view = request.getRequestDispatcher("gestion.jsp");
		view.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int vert=0;
		int orange=0;
		int rouge=0;
		int pasignore=0;
		float tauxvert=0;
		float tauxorange=0;
		float tauxrouge=0;
				
		
		HttpSession session = request.getSession();
		Integer idEvent = (Integer) request.getSession().getAttribute("Event");
		
		Event event = Manager.getInstance().getEvent(idEvent);
		request.setAttribute("event", event);
		
		DateTimeFormatter format = DateTimeFormat.forPattern("yyyy-MM-dd");
		DateTime time = format.parseDateTime(event.getDate());
		DateTime today = new DateTime();
		// able to calculate whole days between two dates easily
		Days d = Days.daysBetween(today, time);
		int days = d.getDays();
		request.setAttribute("days", days);
		
		//Ici on calcule la barre de progression !

		
		// PHOTO :
		
		if(event.getIgnorePhoto().equals("off") || event.getIgnorePhoto()==null){
			pasignore++;
			if(event.getStatutPhoto().equals("ok")){
				vert++;
			}
			else if(event.getStatutPhoto().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// VIDEO :
		
		if(event.getIgnoreVideo().equals("off") || event.getIgnoreVideo()==null){
			pasignore++;
			if(event.getStatutVideo().equals("ok")){
				vert++;
			}
			else if(event.getStatutVideo().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// LIEU :
		
		if(event.getIgnoreLieu().equals("off") || event.getIgnoreLieu()==null){
			pasignore++;
			if(event.getStatutLieu().equals("ok")){
				vert++;
			}
			else if(event.getStatutLieu().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// POLE :
		
		if(event.getIgnorePole().equals("off") || event.getIgnorePole() ==null){
			pasignore++;
			if(event.getStatutPole().equals("ok")){
				vert++;
			}
			else if(event.getStatutPole().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// ADMIN :
		
		if(event.getIgnoreAdmin().equals("off") || event.getIgnoreAdmin()==null){
			pasignore++;
			if(event.getStatutAdmin().equals("ok")){
				vert++;
			}
			else if(event.getStatutAdmin().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// LUMIERE :
		
		if(event.getIgnoreLumiere().equals("off") || event.getIgnoreLumiere()==null){
			pasignore++;
			if(event.getStatutLumiere().equals("ok")){
				vert++;
			}
			else if(event.getStatutLumiere().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// SON :
		
		if(event.getIgnoreSon().equals("off") || event.getIgnoreSon()==null){
			pasignore++;
			if(event.getStatutSon().equals("ok")){
				vert++;
			}
			else if(event.getStatutSon().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// FLYERS :
		
		if(event.getIgnoreFlyers().equals("off") || event.getIgnoreFlyers()==null){
			pasignore++;
			if(event.getStatutFlyers().equals("ok")){
				vert++;
			}
			else if(event.getStatutFlyers().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// DEPECHE :
		
		if(event.getIgnoreDepeche().equals("off") || event.getIgnoreDepeche()==null){
			pasignore++;
			if(event.getStatutDepeche().equals("ok")){
				vert++;
			}
			else if(event.getStatutDepeche().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// NEWSLETTER :
		
		if(event.getIgnoreNewsletter().equals("off") || event.getIgnoreNewsletter()==null){
			pasignore++;
			if(event.getStatutNewsletter().equals("ok")){
				vert++;
			}
			else if(event.getStatutNewsletter().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// RADIO :
		
		if(event.getIgnoreRadio().equals("off") || event.getIgnoreRadio()==null){
			pasignore++;
			if(event.getStatutRadio().equals("ok")){
				vert++;
			}
			else if(event.getStatutRadio().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// RESEAU :
		
		if(event.getIgnoreReseau().equals("off") || event.getIgnoreReseau()==null){
			pasignore++;
			if(event.getStatutReseau().equals("ok")){
				vert++;
			}
			else if(event.getStatutReseau().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// AFFICHE :
		
		if(event.getIgnoreAffiche().equals("off") || event.getIgnoreAffiche()==null){
			pasignore++;
			System.out.println("Le vert vaut : "+vert);
			if(event.getStatutAffiche().equals("ok")){
				vert++;
			}
			else if(event.getStatutAffiche().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		// TV :
		
		if(event.getIgnoreTV().equals("off") || event.getIgnoreTV()==null){
			pasignore++;
			System.out.println("Le vert vaut : "+vert);
			if(event.getStatutTV().equals("ok")){
				vert++;
			}
			else if(event.getStatutTV().equals("encours")){
				orange++;
			} 
			else{ 
				rouge++;
			}
		}
		
		tauxvert=(vert*100)/pasignore;
		tauxorange=(orange*100)/pasignore;
		tauxrouge=(rouge*100)/pasignore;
		
		request.setAttribute("tauxvert", tauxvert);
		request.setAttribute("tauxorange", tauxorange);
		request.setAttribute("tauxrouge", tauxrouge);



		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("sessionUtilisateur");
		//System.out.println(utilisateur.getMail());
		
		List<Event> events = Manager.getInstance().listerEventsUtilisateur(utilisateur.getMail());
		request.setAttribute("events", events);
		
		RequestDispatcher view = request.getRequestDispatcher("gestion.jsp");
		view.forward(request, response);
	}

}
