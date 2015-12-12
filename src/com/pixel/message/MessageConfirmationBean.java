package com.pixel.message;

import javax.ejb.ActivationConfigProperty;
import javax.ejb.EJB;
import javax.ejb.MessageDriven;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

import com.pixel.sessions.MailSender;
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
    	TextMessage textMessage=(TextMessage) message;
		try {
			String mess = textMessage.getText();
			String[] mail = mess.split("#");
			String subject = mail[1];
        	String body = mail[2];
        	sender.sendEmail(mail[0], subject, body);	
		} catch (JMSException e) {
			e.printStackTrace();
		}
    }

}
