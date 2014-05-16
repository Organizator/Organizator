package hei.devweb.dao;

import hei.devweb.model.Association;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AssociationDAO {

	public static List<Association> listerAssociations() {
		List<Association> listeassociations = new ArrayList<Association>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM associations ORDER BY `nom` ASC ");

			while (results.next()) {
				Association association = new Association(
						results.getInt("idAssociation"),
						results.getString("nom"), 
						results.getString("mail"),
						results.getString("pole"));
				listeassociations.add(association);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listeassociations;
	}
	
	public static void ajouterAssociation(Association association) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `associations`(`nom`,`mail`,`pole`) VALUES(?, ?, ?)");
			stmt.setString(1, association.getNom());
			stmt.setString(2, association.getMail());
			stmt.setString(3, association.getPole());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void supprimerAssociation(Integer idAssociation) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM associations WHERE idAssociation = ?");
			stmt.setInt(1,idAssociation);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
