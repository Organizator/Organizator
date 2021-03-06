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
	
	public static Membre getMembre(String mail) {
		Membre membre = null;
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			
			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("SELECT * FROM membre WHERE mail = ?");
			stmt.setString(1, mail);
			ResultSet results = stmt.executeQuery();
			if (results.next()) {
				membre = new Membre(results.getInt("idmembre"),
						results.getString("mail"),
						results.getString("mdp"), 
						results.getString("association"),
						results.getString("pole"),
						results.getString("responsabilite"),
						results.getString("admin"));
			}
			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return membre;
	}

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

	public static List<Membre> listerMembres() {
		List<Membre> liste = new ArrayList<Membre>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM  `membre` WHERE admin = 'non' ");

			while (results.next()) {
				Membre membre = new Membre(results.getInt("idmembre"),
						results.getString("mail"),
						results.getString("mdp"), 
						results.getString("association"),
						results.getString("pole"),
						results.getString("responsabilite"),
						results.getString("admin"));
				liste.add(membre);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return liste;
	}

	public static void PasserAdmin(String idMembre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE membre SET admin = 'oui' WHERE idmembre = ?");
			stmt.setString(1,idMembre);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static Integer countUsersMailUsed(String email) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			PreparedStatement stmt = connection.prepareStatement("SELECT COUNT(*) FROM membre WHERE mail = ?");
			stmt.setString(1, email);

			ResultSet results = null;
			try {
				results = stmt.executeQuery();

				if(results.next()){
					return results.getInt(1);
				}

			} catch (SQLException e1) {
				System.out.println("Erreur lors de l'exécution de la requête comptant le nombre de mail présent dans la bdd");
				e1.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		//retourne une erreur
		return -1;
	}

	public static void UpdateMembre(String mail, String pole, String asso,
			String resp) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE membre SET pole = ? , association = ? , responsabilite = ? WHERE mail = ?");
			stmt.setString(1,pole);
			stmt.setString(2,asso);
			stmt.setString(3,resp);
			stmt.setString(4,mail);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void supprimerCompte(String mail) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM membre WHERE mail = ?");
			stmt.setString(1,mail);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
