package hei.devweb.dao;

import hei.devweb.model.Pole;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PoleDAO {

	public static List<Pole> listerPoles() {
		List<Pole> listepoles = new ArrayList<Pole>();
		try {
			// Ouvre la connexion à la BDD
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			Statement stmt = connection.createStatement();
			// Sélectionner tous les pôles
			ResultSet results = stmt.executeQuery("SELECT * FROM poles");
			
			// Remplir notre liste
			while (results.next()) {
				Pole pole = new Pole(
						results.getInt("idpole"),
						results.getString("nom"));
				listepoles.add(pole);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listepoles;
	}
	
	public static void ajouterPole(Pole pole) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `poles`(`nom`) VALUES(?)");
			stmt.setString(1, pole.getNom());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void supprimerPole(Integer idpole) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM poles WHERE idpole = ?");
			stmt.setInt(1,idpole);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
