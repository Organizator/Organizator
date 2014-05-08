package hei.devweb.metier;

import hei.devweb.dao.MembreDao;
import hei.devweb.dao.PoleDAO;
import hei.devweb.model.Membre;
import hei.devweb.model.Pole;

import java.util.List;

public class Manager {

	private static Manager instance;
	
	private MembreDao membreDao;
	private PoleDAO poleDao;
	
	public static Manager getInstance() {
		if(instance == null) {
			instance = new Manager();
		}
		return instance;
	}
	
	
	
	private Manager() {
		membreDao = new MembreDao();
		poleDao = new PoleDAO();
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
	

//	public List<Membre> listerMembres() {
//		List<Membre> liste = membreDao.listerMembres();
//		return liste;
//	}
	
	public void ajouterMembre(Membre membre) {
		membreDao.ajouterMembre(membre);
	}
	
}
