package hei.devweb.model;

public class Admin {
	private Integer id;
	private String nom;

	public Admin(Integer id, String nom) {
		super();
		this.id = id;
		this.nom = nom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}
