package hei.devweb.dao;

import hei.devweb.model.Event;
import hei.devweb.model.Membre;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EventDAO {

	public static List<Event> listerEvents() {
		List<Event> listeevents = new ArrayList<Event>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM events");

			while (results.next()) {
				Event event = new Event(
						results.getInt("idEvent"),
						results.getString("asso"), 
						results.getString("date"),
						results.getString("heuredebut"), 
						results.getString("heurefin"),
						results.getString("type"),
						results.getString("danshei"),
						results.getString("organisateur"),
						results.getString("mailorganisateur"),
						results.getString("batiment"),
						results.getString("salle"),
						results.getString("affluence"),
						results.getString("statutTV"),
						results.getString("statutAffiche"),
						results.getString("statutReseau"),
						results.getString("statutRadio"),
						results.getString("statutNewsletter"),
						results.getString("statutDepeche"),
						results.getString("statutFlyers"),
						results.getString("ignoreTV"),
						results.getString("ignoreAffiche"),
						results.getString("ignoreReseau"),
						results.getString("ignoreRadio"),
						results.getString("ignoreNewsletter"),
						results.getString("ignoreDepeche"),
						results.getString("ignoreFlyers"),
						results.getString("statutSon"),
						results.getString("statutLumiere"),
						results.getString("ignoreSon"),
						results.getString("ignoreLumiere"),
						results.getString("statutPhoto"),
						results.getString("statutVideo"),
						results.getString("ignorePhoto"),
						results.getString("ignoreVideo"));
				listeevents.add(event);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listeevents;
	}
	
	public static List<Event> listerEventsUtilisateur(String organisateur) {
		List<Event> listeevents = new ArrayList<Event>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("SELECT * FROM events WHERE organisateur = ?");
			stmt.setString(1, organisateur);
			ResultSet results = stmt.executeQuery();
			if (results.next()) {
				Event event = new Event(
						results.getInt("idEvent"),
						results.getString("asso"), 
						results.getString("date"),
						results.getString("heuredebut"), 
						results.getString("heurefin"),
						results.getString("type"),
						results.getString("danshei"),
						results.getString("organisateur"),
						results.getString("mailorganisateur"),
						results.getString("batiment"),
						results.getString("salle"),
						results.getString("affluence"),
						results.getString("statutTV"),
						results.getString("statutAffiche"),
						results.getString("statutReseau"),
						results.getString("statutRadio"),
						results.getString("statutNewsletter"),
						results.getString("statutDepeche"),
						results.getString("statutFlyers"),
						results.getString("ignoreTV"),
						results.getString("ignoreAffiche"),
						results.getString("ignoreReseau"),
						results.getString("ignoreRadio"),
						results.getString("ignoreNewsletter"),
						results.getString("ignoreDepeche"),
						results.getString("ignoreFlyers"),
						results.getString("statutSon"),
						results.getString("statutLumiere"),
						results.getString("ignoreSon"),
						results.getString("ignoreLumiere"),
						results.getString("statutPhoto"),
						results.getString("statutVideo"),
						results.getString("ignorePhoto"),
						results.getString("ignoreVideo"));
				listeevents.add(event);
			}
			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeevents;
	}
	
	public static void ajouterEvent(Event event) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `events`(`asso`,`date`,`heuredebut`,`heurefin`,`type`,`danshei`,`batiment`,`affluence`) VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
			stmt.setString(1, event.getAsso());
			stmt.setString(2, event.getDate());
			stmt.setString(3, event.getHeuredebut());
			stmt.setString(4, event.getHeurefin());
			stmt.setString(5, event.getTypeevent());
			stmt.setString(6, event.getDanshei());
			stmt.setString(7, event.getBatiment());
			stmt.setString(8, event.getAffluence());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void supprimerEvent(Integer idEvent) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM events WHERE idEvent = ?");
			stmt.setInt(1,idEvent);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
