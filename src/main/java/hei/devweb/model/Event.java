package hei.devweb.model;

public class Event {
	private Integer id;
	private Integer affluence;
	private Integer heuredebut;
	private Integer heurefin;
	private String typeevent;
	private String asso;
	private String organisateur;
	private String mailorganisateur;
	private String batiment;
	private String salle;
	private String alcool;
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

	public Event(Integer id, Integer heuredebut, Integer heurefin, String typeevent, String alcool, String danshei, String organisateur, String mailorganisateur, String batiment, String salle, Integer affluence,
			String statutTV, String statutAffiche, String statutReseau, String statutRadio, String statutNewsletter, String statutDepeche, String statutFlyers, 
			String ignoreTV, String ignoreAffiche, String ignoreReseau, String ignoreRadio, String ignoreNewsletter, String ignoreDepeche, String ignoreFlyers,
			String statutSon, String statutLumiere, 
			String ignoreSon, String ignoreLumiere,
			String statutPhoto, String statutVideo, 
			String ignorePhoto, String ignoreVideo) {
		super();
		this.id = id;
		this.heuredebut = heuredebut;
		this.heurefin = heurefin;
		this.typeevent = typeevent;
		this.alcool = alcool;
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

	public Integer getHeuredebut() {
		return heuredebut;
	}

	public void setHeuredebut(Integer heuredebut) {
		this.heuredebut = heuredebut;
	}
	
	public Integer getHeurefin() {
		return heurefin;
	}

	public void setHeurefin(Integer heurefin) {
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
	
	public String getAlcool() {
		return alcool;
	}

	public void setAlcool(String alcool) {
		this.alcool = alcool;
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
	
	public Integer getAffluence() {
		return affluence;
	}

	public void setAffluence(Integer affluence) {
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
