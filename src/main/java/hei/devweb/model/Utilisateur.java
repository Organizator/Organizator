package hei.devweb.model;

public class Utilisateur {

    private String mail;
    private String motDePasse;
    private String nom;

    public void setMail(String mail) {
	this.mail = mail;
    }
    public String getMail() {
	return mail;
    }

    public void setMotDePasse(String motDePasse) {
	this.motDePasse = motDePasse;
    }
    public String getMotDePasse() {
	return motDePasse;
    }

    public void setNom(String nom) {
	this.nom = nom;
    }
    public String getNom() {
	return nom;
    }
}