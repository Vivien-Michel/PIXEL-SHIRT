package com.pixel.sessions;

import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.JMSException;
import javax.jms.MessageProducer;
import javax.jms.Queue;
import javax.jms.Session;
import javax.jms.TextMessage;

import com.pixel.tools.TypeMail;

/**
 * Session Bean implementation class MailGenerator
 */
@Stateless
public class MailGenerator {
	
	@Resource(mappedName="jms/__defaultConnectionFactory")
	private ConnectionFactory connectionFactory;
	
	@Resource(mappedName = "jms/inscriptionMail")
	private Queue inscriptionQueue;
	
	@Resource(mappedName = "jms/confirmationMail")
	private Queue confirmationQueue;
	
	@Resource(mappedName = "jms/adminMail")
	private Queue adminQueue;
	
	public MailGenerator() {
       
    }

	public void sendMail(PanierBean panier, TypeMail type) {
		try {
			Connection connection = connectionFactory.createConnection();
			Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
			MessageProducer messageProducer=null;
			String subject ="";
			String body ="";
			String mail=panier.getClient().getMail();
			switch(type){
			case Inscription:			
				subject = "Bienvenue sur Pixel Shirt " + panier.getClient().getPrenom() + " " + panier.getClient().getNom();
	        	body = "Nous avons le plaisir de vous confirmer l'inscription sur le site Pixel Shirt " 
	        	+ panier.getClient().getCivilite() + " "+ panier.getClient().getPrenom() + " " + panier.getClient().getNom() + "\n" 
	        	+ "Votre identifiant de connexion est " + panier.getClient().getMail()
	        	+ "\n\n A bientôt sur notre site ! \n"
	        	+ "Ceci est un mail automatique, merci de ne pas répondre à cette adresse";
				messageProducer = session.createProducer(inscriptionQueue);
				break;
			case Confirmation:
				subject = "Confirmation de la commande n°"  + panier.getPanier().getCommande().getId_commande();
				body = "Nous avons le plaisir de vous confirmer la validation de la commande " + panier.getPanier().getCommande().getId_commande() + " sur le site Pixel Shirt.\n" 
				    	+ "Recapitulatif:\n"    			
				    	+panier.getClient().getCivilite() +" "+ panier.getClient().getPrenom() + " " + panier.getClient().getNom()
				    	+"\n"
				    	+ "Adresse :" + panier.getClient().getAdresse()
				    	+"\n"
				    	+panier.getClient().getCodePostal() + " " + panier.getClient().getVille()
				    	+"\n"
				    	+"Téléphone: "+panier.getClient().getTelephone()
				    	+"\n"
				    	+"Mode de Paiement: " + panier.getPaiement()
				    	+"\n\n A bientôt sur notre site !\n"
				    	+ "Ceci est un mail automatique, merci de ne pas répondre à cette adresse";
				messageProducer = session.createProducer(confirmationQueue);
				break;
			case Admin:
				messageProducer = session.createProducer(adminQueue);
				break;
			default:;
			}
			
			TextMessage message = session.createTextMessage();
			message.setText(mail+"#"+subject+"#"+body);
			messageProducer.send(message);
			
			connection.close();
			session.close();
			messageProducer.close();
		} catch (JMSException e) {
			e.printStackTrace();
		}
		
		
	}

}
