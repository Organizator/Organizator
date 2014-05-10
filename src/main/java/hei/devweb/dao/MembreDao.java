package hei.devweb.dao;

import hei.devweb.model.Membre;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MembreDao {

//	public List<Membre> listerMembres() {
//		List<Membre> liste = new ArrayList<Membre>();
//		try {
//			Connection connection = DataSourceProvider.getDataSource()
//					.getConnection();
//
//			Statement stmt = connection.createStatement();
//			ResultSet results = stmt.executeQuery("SELECT * FROM  `membre` ORDER BY  `meilleurscore` DESC ");
//
//			while (results.next()) {
//				Membre membre = new Membre(results.getInt("idmembre"),
//						results.getString("pseudo"),
//						results.getInt("age"), 
//						results.getInt("idjoueur"), 
//						results.getString("biographie"),
//						results.getInt("meilleurscore"));
//				liste.add(membre);
//			}
//
//			// Fermer la connexion
//			results.close();
//			stmt.close();
//			connection.close();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		return liste;
//	}
	
//	public Membre getMembre(Integer idMembre) {
//		Membre membre = null;
//		try {
//			Connection connection = DataSourceProvider.getDataSource()
//					.getConnection();
//
//			// Utiliser la connexion
//			PreparedStatement stmt = connection
//					.prepareStatement("SELECT * FROM membre WHERE idmembre = ?");
//			stmt.setInt(1, idMembre);
//			ResultSet result = stmt.executeQuery();
//			if (result.next()) {
//				membre = new Membre(result.getInt("idmembre"),
//						result.getInt("classement"), 
//						result.getString("prenom"),
//						result.getString("nom"),
//						result.getString("pays"));
//			}
//			System.out.println("RETOUR:"+result.getString("resume"));
//			// Fermer la connexion
//			stmt.close();
//			connection.close();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return membre;
//	}

	public void ajouterMembre(Membre membre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `membre` (`mail`, `mdp`, `pole`, `association`, `responsabilite`) VALUES(?, ?, ?, ?, ?)");
			stmt.setString(1, membre.getMail());
			stmt.setString(2, membre.getMotDePasse());
			stmt.setString(3, membre.getPole());
			stmt.setString(4, membre.getAsso());
			stmt.setString(5, membre.getResp());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void supprimerMembre(Membre membre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM `membre` WHERE `mail`=?");
			stmt.setString(1, membre.getMail());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
