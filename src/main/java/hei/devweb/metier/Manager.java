package hei.devweb.metier;

import hei.devweb.dao.AssociationDAO;
import hei.devweb.dao.BatimentDAO;
import hei.devweb.dao.CommunicationDAO;
import hei.devweb.dao.EventDAO;
import hei.devweb.dao.MembreDao;
import hei.devweb.dao.PoleDAO;
import hei.devweb.model.Association;
import hei.devweb.model.Batiment;
import hei.devweb.model.Communication;
import hei.devweb.model.Event;
import hei.devweb.model.Membre;
import hei.devweb.model.Pole;

import java.util.List;

public class Manager {

	private static Manager instance;
	
	private MembreDao membreDao;
	private PoleDAO poleDao;
	private AssociationDAO assoDao;
	private BatimentDAO batimentDao;

	
	public static Manager getInstance() {
		if(instance == null) {
			instance = new Manager();
		}
		return instance;
	}
	
	
	
	private Manager() {
		membreDao = new MembreDao();
		poleDao = new PoleDAO();
		assoDao = new AssociationDAO();
		batimentDao = new BatimentDAO();

	}


	public List<Pole> listerPoles() {
		List<Pole> listepoles = PoleDAO.listerPoles();
		return listepoles;
	}
	
	public void ajouterPole(Pole pole) {
		PoleDAO.ajouterPole(pole);
	}
	
	public void supprimerPole(Integer idPole) {
		System.out.println("Dans Manager 'SupprimerPole' avec id="+idPole);
		PoleDAO.supprimerPole(idPole);
	}
	
	public List<Association> listerAssociations() {
		List<Association> listeassociations = AssociationDAO.listerAssociations();
		return listeassociations;
	}
	
	public void ajouterAssociation(Association association) {
		AssociationDAO.ajouterAssociation(association);
	}
	
	public void supprimerAssociation(Integer idAssociation) {
		System.out.println("Dans Manager 'SupprimerAssociation' avec id="+idAssociation);
		AssociationDAO.supprimerAssociation(idAssociation);
	}
	
	public List<Batiment> listerBatiments() {
		List<Batiment> listebatiments = BatimentDAO.listerBatiments();
		return listebatiments;
	}
	
	public void ajouterBatiment(Batiment batiment) {
		BatimentDAO.ajouterBatiment(batiment);
	}
	
	public void supprimerBatiment(Integer idBatiment) {
		System.out.println("Dans Manager 'SupprimerBatiment' avec id="+idBatiment);
		BatimentDAO.supprimerBatiment(idBatiment);
	}
	
	public List<Communication> listerCommunications() {
		List<Communication> listecommunications = CommunicationDAO.listerCommunications();
		return listecommunications;
	}
	
	public void ajouterCommunication(Communication communication) {
		CommunicationDAO.ajouterCommunication(communication);
	}
	
	public void supprimerCommunication(Integer idCommunication) {
		System.out.println("Dans Manager 'SupprimerCommunication' avec id="+idCommunication);
		CommunicationDAO.supprimerCommunication(idCommunication);
	}
	
	public void modifierCommunication(String idComm, String contact, String message) {
		CommunicationDAO.modifierCommunication(idComm, contact, message);
	}
	
	public List<Event> listerEvents() {
		List<Event> listeevents = EventDAO.listerEvents();
		return listeevents;
	}
	
	public List<Event> listerEventsUtilisateur(String organisateur) {
		List<Event> listeevents = EventDAO.listerEventsUtilisateur(organisateur);
		return listeevents;
	}
	
	public void ajouterEvent(Event event) {
		EventDAO.ajouterEvent(event);
	}
	
	public void supprimerEvent(Integer idEvent) {
		System.out.println("Dans Manager 'SupprimerEvent' avec id="+idEvent);
		EventDAO.supprimerEvent(idEvent);
	}
	

//	public List<Membre> listerMembres() {
//		List<Membre> liste = membreDao.listerMembres();
//		return liste;
//	}
	
	public void ajouterMembre(Membre membre) {
		membreDao.ajouterMembre(membre);
	}



	public Event getEvent(Integer idEvent) {
		Event event = EventDAO.getEvent(idEvent);
		return event;
	}


	public List<Membre> listerMembres() {
		List<Membre> listemembres = MembreDao.listerMembres();
		return listemembres;
	}	
	

	public void UpdateEvent(String par, String etat, Integer idEvent) {
		EventDAO.UpdateEvent(par, etat, idEvent);
	}



	public void UpdateGlobEvent(Integer idEvent, String date, String nom,
			String type, String affluence, String hei, String batiment,
			String debut, String fin) {
		EventDAO.UpdateGlobEvent(idEvent, date, nom, type, affluence, hei, batiment, debut, fin);
		
	}



	public void passerAdmin(String idMembre) {
		MembreDao.PasserAdmin(idMembre);
	}








	
}
