package com.pixel.message;

import javax.ejb.ActivationConfigProperty;
import javax.ejb.EJB;
import javax.ejb.MessageDriven;
import javax.jms.Message;
import javax.jms.MessageListener;

import com.pixel.sessions.MailSender;
import com.pixel.sessions.PanierBean;

/**
 * Message-Driven Bean implementation class for: MessageInscriptionBean
 */
@MessageDriven(mappedName = "jms/inscriptionMail",
		activationConfig = { 
				@ActivationConfigProperty(propertyName = "destinationType", propertyValue = "javax.jms.Queue"),
				@ActivationConfigProperty(propertyName = "acknowledgeMode", propertyValue = "Auto-acknowledge"),
				@ActivationConfigProperty(propertyName = "subscriptionDurability", propertyValue = "Durable")
		})
public class MessageInscriptionBean implements MessageListener {

	@EJB
	private MailSender sender;
   
    public MessageInscriptionBean() {
    }
	
	/**
     * @see MessageListener#onMessage(Message)
     */
    public void onMessage(Message message) {
        	PanierBean panier= (PanierBean) message;
        	String subject = "Bienvenu sur Pixel Shirt " + panier.getClient().getPrenom() + " " + panier.getClient().getNom();
        	String body = "Nous avons le plaisir de vous confirmer l'inscription sur le site Pixel Shirt " 
        	+ panier.getClient().getCivilite() + " "+ panier.getClient().getPrenom() + " " + panier.getClient().getNom() + "\n" 
        	+ "Votre identifiant de connexion est " + panier.getClient().getMail()
        	+ "\n\n A bientôt sur notre site ! \n"
        	+ "Ceci est un mail automatique, merci de ne pas répondre à cette adresse";
        	sender.sendEmail(panier.getClient().getMail(), subject, body);	
    }

}
