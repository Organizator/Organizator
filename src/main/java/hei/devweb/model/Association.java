package hei.devweb.model;

public class Association {
	private Integer id;
	private String mail;
	private String nom;
	private String pole;
	private String asso;
	private String resp;

	public Association(Integer id, String nom, String mail, String pole) {
		super();
		this.id = id;
		this.nom = nom;
		this.mail = mail;
		this.pole = pole;
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

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPole() {
		return pole;
	}

	public void setPole(String pole) {
		this.pole = pole;
	}


}
