package hei.devweb.model;

public class Membre {
	private Integer id;
	private String mail;
	private String motDePasse;
	private String pole;
	private String asso;
	private String resp;
	private String admin;

	public Membre(Integer id, String mail, String motDePasse, String pole, String asso, String resp, String admin) {
		super();
		this.id = id;
		this.mail = mail;
		this.motDePasse = motDePasse;
		this.pole = pole;
		this.asso = asso;
		this.resp = resp;
		this.admin = admin;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
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

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}

	public String getPole() {
		return pole;
	}

	public void setPole(String pole) {
		this.pole = pole;
	}

	public String getResp() {
		return resp;
	}

	public void setResp(String resp) {
		this.resp = resp;
	}


}
