package hei.devweb.dao;

import hei.devweb.model.Batiment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BatimentDAO {

	public static List<Batiment> listerBatiments() {
		List<Batiment> listebatiments = new ArrayList<Batiment>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM batiments");

			while (results.next()) {
				Batiment batiment = new Batiment(
						results.getInt("idBatiment"),
						results.getString("nom"));
				listebatiments.add(batiment);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listebatiments;
	}
	
	public static void ajouterBatiment(Batiment batiment) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `batiments`(`nom`) VALUES(?)");
			stmt.setString(1, batiment.getNom());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void supprimerBatiment(Integer idBatiment) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM batiments WHERE idBatiment = ?");
			stmt.setInt(1,idBatiment);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
