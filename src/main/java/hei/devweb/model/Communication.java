package hei.devweb.model;

public class Communication {
	private Integer id;
	private String nom;
	private String contact;
	private String message;



	public Communication(Integer id, String nom, String contact, String message) {
		super();
		this.id = id;
		this.nom = nom;
		this.contact = contact;
		this.message = message;
		
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}

	
	
}
