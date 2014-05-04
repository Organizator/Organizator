package hei.devweb.dao;

import hei.devweb.model.Association;
import hei.devweb.model.Salle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SalleDAO {

	public static List<Salle> listerSalles() {
		List<Salle> listesalles = new ArrayList<Salle>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM Salles");

			while (results.next()) {
				Salle salle = new Salle(
						results.getInt("idSalle"),
						results.getString("Nom"));
				listesalles.add(salle);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listesalles;
	}
	
	public static void ajouterSalle(Salle salle) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `Salles`(`NomSalle`) VALUES(?)");
			stmt.setString(1, salle.getNom());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void supprimerSalle(Integer idSalle) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM Salles WHERE idSalle = ?");
			stmt.setInt(1,idSalle);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
