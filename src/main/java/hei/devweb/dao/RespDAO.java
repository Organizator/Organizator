package hei.devweb.dao;

import hei.devweb.model.Resp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RespDAO {

	public static List<Resp> listerResps() {
		List<Resp> listeresps = new ArrayList<Resp>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM Responsabilités");

			while (results.next()) {
				Resp resp = new Resp(
						results.getInt("idResp"),
						results.getString("nom"));
				listeresps.add(resp);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listeresps;
	}
	
	public static void ajouterResp(Resp resp) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `Associations`(`nom`) VALUES(?)");
			stmt.setString(1, resp.getNom());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void supprimerResp(Integer idResp) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM Responsabilités WHERE idResp = ?");
			stmt.setInt(1,idResp);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
