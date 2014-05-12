package hei.devweb.model;

public class Event {
	private Integer id;
	private String nom;
	private String date;
	private String affluence;
	private String heuredebut;
	private String heurefin;
	private String typeevent;
	private String asso;
	private String organisateur;
	private String mailorganisateur;
	private String batiment;
	private String salle;
	private String danshei;
	
	private String statutTV;
	private String statutAffiche;
	private String statutReseau;
	private String statutRadio;
	private String statutNewsletter;
	private String statutDepeche;
	private String statutFlyers;
	
	private String ignoreTV;
	private String ignoreAffiche;
	private String ignoreReseau;
	private String ignoreRadio;
	private String ignoreNewsletter;
	private String ignoreDepeche;
	private String ignoreFlyers;
	
	private String statutSon;
	private String statutLumiere;
	private String ignoreSon;
	private String ignoreLumiere;
	
	private String statutPhoto;
	private String statutVideo;
	private String ignorePhoto;
	private String ignoreVideo;
	
	private String statutLieu;
	private String statutPole;
	private String statutAdmin;
	private String ignoreLieu;
	private String ignorePole;
	private String ignoreAdmin;


	public Event(Integer id, String nom, String asso, String date, String heuredebut, String heurefin, String typeevent, String danshei, String organisateur, String mailorganisateur, String batiment, String salle, String affluence,
			String statutTV, String statutAffiche, String statutReseau, String statutRadio, String statutNewsletter, String statutDepeche, String statutFlyers, 
			String ignoreTV, String ignoreAffiche, String ignoreReseau, String ignoreRadio, String ignoreNewsletter, String ignoreDepeche, String ignoreFlyers,
			String statutSon, String statutLumiere, 
			String ignoreSon, String ignoreLumiere,
			String statutPhoto, String statutVideo, 
			String ignorePhoto, String ignoreVideo,
			String statutLieu, String statutPole,String statutAdmin, String ignoreLieu,String ignorePole, String ignoreAdmin) {
		super();
		this.id = id;
		this.nom = nom;
		this.asso = asso;
		this.date = date;
		this.heuredebut = heuredebut;
		this.heurefin = heurefin;
		this.typeevent = typeevent;
		this.danshei = danshei;
		this.organisateur = organisateur;
		this.mailorganisateur = mailorganisateur;
		this.batiment = batiment;
		this.salle = salle;
		this.affluence = affluence;
		
		this.statutTV = statutTV;
		this.statutAffiche = statutAffiche;
		this.statutReseau = statutReseau;
		this.statutRadio = statutRadio;
		this.statutNewsletter = statutNewsletter;
		this.statutDepeche = statutDepeche;
		this.statutFlyers = statutFlyers;
		
		this.ignoreTV = ignoreTV;
		this.ignoreAffiche = ignoreAffiche;
		this.ignoreReseau = ignoreReseau;
		this.ignoreRadio = ignoreRadio;
		this.ignoreNewsletter = ignoreNewsletter;
		this.ignoreDepeche = ignoreDepeche;
		this.ignoreFlyers = ignoreFlyers;
		
		this.statutSon = statutSon;
		this.statutLumiere = statutLumiere;
		this.ignoreSon = ignoreSon;
		this.ignoreLumiere = ignoreLumiere;
		
		this.statutPhoto = statutPhoto;
		this.statutVideo = statutVideo;
		this.ignorePhoto = ignorePhoto;
		this.ignoreVideo = ignoreVideo;
		
		this.statutLieu = statutLieu;
		this.statutPole = statutPole;
		this.statutAdmin = statutAdmin;
		this.ignoreLieu = ignoreLieu;
		this.ignorePole = ignorePole;
		this.ignoreAdmin = ignoreAdmin;
			}

	public String getStatutLieu() {
		return statutLieu;
	}

	public void setStatutLieu(String statutLieu) {
		this.statutLieu = statutLieu;
	}

	public String getStatutPole() {
		return statutPole;
	}

	public void setStatutPole(String statutPole) {
		this.statutPole = statutPole;
	}

	public String getStatutAdmin() {
		return statutAdmin;
	}

	public void setStatutAdmin(String statutAdmin) {
		this.statutAdmin = statutAdmin;
	}

	public String getIgnoreLieu() {
		return ignoreLieu;
	}

	public void setIgnoreLieu(String ignoreLieu) {
		this.ignoreLieu = ignoreLieu;
	}

	public String getIgnorePole() {
		return ignorePole;
	}

	public void setIgnorePole(String ignorePole) {
		this.ignorePole = ignorePole;
	}

	public String getIgnoreAdmin() {
		return ignoreAdmin;
	}

	public void setIgnoreAdmin(String ignoreAdmin) {
		this.ignoreAdmin = ignoreAdmin;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStatutPhoto() {
		return statutPhoto;
	}

	public void setStatutPhoto(String statutPhoto) {
		this.statutPhoto = statutPhoto;
	}

	public String getStatutVideo() {
		return statutVideo;
	}

	public void setStatutVideo(String statutVideo) {
		this.statutVideo = statutVideo;
	}

	public String getIgnorePhoto() {
		return ignorePhoto;
	}

	public void setIgnorePhoto(String ignorePhoto) {
		this.ignorePhoto = ignorePhoto;
	}

	public String getIgnoreVideo() {
		return ignoreVideo;
	}

	public void setIgnoreVideo(String ignoreVideo) {
		this.ignoreVideo = ignoreVideo;
	}

	public String getAsso() {
		return asso;
	}

	public void setAsso(String asso) {
		this.asso = asso;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getOrganisateur() {
		return organisateur;
	}

	public void setOrganisateur(String organisateur) {
		this.organisateur = organisateur;
	}

	public String getMailorganisateur() {
		return mailorganisateur;
	}

	public void setMailorga(String mailorganisateur) {
		this.mailorganisateur = mailorganisateur;
	}

	public String getHeuredebut() {
		return heuredebut;
	}

	public void setHeuredebut(String heuredebut) {
		this.heuredebut = heuredebut;
	}
	
	public String getHeurefin() {
		return heurefin;
	}

	public void setHeurefin(String heurefin) {
		this.heurefin = heurefin;
	}

	public String getBatiment() {
		return batiment;
	}

	public void setBatiment(String batiment) {
		this.batiment = batiment;
	}
	
	public String getSalle() {
		return salle;
	}

	public void setSalle(String salle) {
		this.salle = salle;
	}
	
	public String getDanshei() {
		return danshei;
	}

	public void setDanshei(String danshei) {
		this.danshei = danshei;
	}
	
	public String getTypeevent() {
		return typeevent;
	}

	public void setTypeevent(String typeevent) {
		this.typeevent = typeevent;
	}
	
	public String getAffluence() {
		return affluence;
	}

	public void setAffluence(String affluence) {
		this.affluence = affluence;
	}
	
	public String getStatutTV() {
		return statutTV;
	}

	public void setStatutTV(String statutTV) {
		this.statutTV = statutTV;
	}

	public String getStatutAffiche() {
		return statutAffiche;
	}

	public void setStatutAffiche(String statutAffiche) {
		this.statutAffiche = statutAffiche;
	}

	public String getStatutReseau() {
		return statutReseau;
	}

	public void setStatutReseau(String statutReseau) {
		this.statutReseau = statutReseau;
	}

	public String getStatutRadio() {
		return statutRadio;
	}

	public void setStatutRadio(String statutRadio) {
		this.statutRadio = statutRadio;
	}

	public String getStatutNewsletter() {
		return statutNewsletter;
	}

	public void setStatutNewsletter(String statutNewsletter) {
		this.statutNewsletter = statutNewsletter;
	}

	public String getStatutDepeche() {
		return statutDepeche;
	}

	public void setStatutDepeche(String statutDepeche) {
		this.statutDepeche = statutDepeche;
	}

	public String getStatutFlyers() {
		return statutFlyers;
	}

	public void setStatutFlyers(String statutFlyers) {
		this.statutFlyers = statutFlyers;
	}

	public String getIgnoreTV() {
		return ignoreTV;
	}

	public void setIgnoreTV(String ignoreTV) {
		this.ignoreTV = ignoreTV;
	}

	public String getIgnoreAffiche() {
		return ignoreAffiche;
	}

	public void setIgnoreAffiche(String ignoreAffiche) {
		this.ignoreAffiche = ignoreAffiche;
	}

	public String getIgnoreReseau() {
		return ignoreReseau;
	}

	public void setIgnoreReseau(String ignoreReseau) {
		this.ignoreReseau = ignoreReseau;
	}

	public String getIgnoreRadio() {
		return ignoreRadio;
	}

	public void setIgnoreRadio(String ignoreRadio) {
		this.ignoreRadio = ignoreRadio;
	}

	public String getIgnoreNewsletter() {
		return ignoreNewsletter;
	}

	public void setIgnoreNewsletter(String ignoreNewsletter) {
		this.ignoreNewsletter = ignoreNewsletter;
	}

	public String getIgnoreDepeche() {
		return ignoreDepeche;
	}

	public void setIgnoreDepeche(String ignoreDepeche) {
		this.ignoreDepeche = ignoreDepeche;
	}

	public String getIgnoreFlyers() {
		return ignoreFlyers;
	}

	public void setIgnoreFlyers(String ignoreFlyers) {
		this.ignoreFlyers = ignoreFlyers;
	}
	
	public String getStatutSon() {
		return statutSon;
	}

	public void setStatutSon(String statutSon) {
		this.statutSon = statutSon;
	}

	public String getStatutLumiere() {
		return statutLumiere;
	}

	public void setStatutLumiere(String statutLumiere) {
		this.statutLumiere = statutLumiere;
	}

	public String getIgnoreSon() {
		return ignoreSon;
	}

	public void setIgnoreSon(String ignoreSon) {
		this.ignoreSon = ignoreSon;
	}

	public String getIgnoreLumiere() {
		return ignoreLumiere;
	}

	public void setIgnoreLumiere(String ignoreLumiere) {
		this.ignoreLumiere = ignoreLumiere;
	}


}
