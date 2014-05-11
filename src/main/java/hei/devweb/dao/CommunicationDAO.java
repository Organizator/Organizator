package hei.devweb.dao;

import hei.devweb.model.Communication;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CommunicationDAO {

	public static List<Communication> listerCommunications() {
		List<Communication> listecommunications = new ArrayList<Communication>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM communications");

			while (results.next()) {
				Communication communication = new Communication(
						results.getInt("idComm"),
						results.getString("nom"), 
						results.getString("contact"),
						results.getString("message"));
				listecommunications.add(communication);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listecommunications;
	}
	
	public static void ajouterCommunication(Communication communication) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `communications`(`nom`,`contact`,`message`) VALUES(?, ?, ?)");
			stmt.setString(1, communication.getNom());
			stmt.setString(2, communication.getContact());
			stmt.setString(3, communication.getMessage());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void supprimerCommunication(Integer idCommunication) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM communications WHERE idComm = ?");
			stmt.setInt(1,idCommunication);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void modifierCommunication(String idComm, String contact,
			String message) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE communications SET contact = ? , message = ? WHERE idComm = "+idComm);
			stmt.setString(1,contact);
			stmt.setString(2,message);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
