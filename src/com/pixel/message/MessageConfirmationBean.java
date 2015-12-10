package com.pixel.message;

import javax.ejb.ActivationConfigProperty;
import javax.ejb.EJB;
import javax.ejb.MessageDriven;
import javax.jms.Message;
import javax.jms.MessageListener;

import com.pixel.sessions.MailSender;
import com.pixel.sessions.PanierBean;

/**
 * Message-Driven Bean implementation class for: MessageConfirmationBean
 */
@MessageDriven(
		activationConfig = { 
				@ActivationConfigProperty(propertyName = "destinationType", propertyValue = "javax.jms.Queue"),
				@ActivationConfigProperty(propertyName = "acknowledgeMode", propertyValue = "Auto-acknowledge"),
				@ActivationConfigProperty(propertyName = "subscriptionDurability", propertyValue = "Durable")
		}, 
		mappedName = "jms/confirmationMail")
public class MessageConfirmationBean implements MessageListener {
	
	@EJB
	private MailSender sender;
 
    public MessageConfirmationBean() {
    
    }
	
	/**
     * @see MessageListener#onMessage(Message)
     */
    public void onMessage(Message message) {
    	PanierBean panier= (PanierBean) message;
    	String subject = "Confirmation commande n "  + panier.getPanier().getCommande().getId_commande();
    	String body = "Nous avons le plaisir de vous confirmer la validation de la commande " + panier.getPanier().getCommande().getId_commande() + "sur le site Pixel Shirt " 
    	+ "Recapitulatif:\n"    			
    	+panier.getClient().getCivilite() +" "+ panier.getClient().getPrenom() + " " + panier.getClient().getNom()
    	+"\n"
    	+ "Adresse :" + panier.getClient().getAdresse()
    	+"\n"
    	+panier.getClient().getCodePostal() + " " + panier.getClient().getVille()
    	+"Téléphone: "+panier.getClient().getTelephone()
    	+"\n\n A bientôt sur notre site !"
    	+ "Ceci est un mail automatique, merci de ne pas répondre à cette adresse";
    	sender.sendEmail(panier.getClient().getMail(), subject, body);
    }

}
