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
			ResultSet results = stmt.executeQuery("SELECT * FROM Associations");

			while (results.next()) {
				Association association = new Association(
						results.getInt("idAsso"),
						results.getString("Nom"), 
						results.getInt("Mail"),
						results.getString("Pole"));
				listeassociations.add(sauce);
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
	
	public static void ajouterSauce(Sauce sauce) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `Sauces`(`Couleur`,`PrixSauce`,`GoutSauce`,`NomSauce`) VALUES(?, ?, ?, ?)");
			stmt.setString(1, sauce.getCouleur());
			stmt.setInt(2, sauce.getPrixSauce());
			stmt.setString(3, sauce.getGoutSauce());
			stmt.setString(4, sauce.getNomSauce());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void supprimerSauce(Integer idSauce) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM Sauces WHERE idSauce = ?");
			stmt.setInt(1,idSauce);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
