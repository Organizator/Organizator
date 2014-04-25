package hei.devweb.metier;

import hei.devweb.dao.MembreDao;
import hei.devweb.model.Membre;

import java.util.List;

public class Manager {

	private static Manager instance;
	
	private MembreDao membreDao;
	
	public static Manager getInstance() {
		if(instance == null) {
			instance = new Manager();
		}
		return instance;
	}
	
	
	
	private Manager() {
		membreDao = new MembreDao();
	}



//	public List<Membre> listerMembres() {
//		List<Membre> liste = membreDao.listerMembres();
//		return liste;
//	}
	
	public void ajouterMembre(Membre membre) {
		membreDao.ajouterMembre(membre);
	}
	
//	public void ajouterScore(Integer score, String idMembre) {
//		membreDao.ajouterScore(score, idMembre);
//	}
	
}
