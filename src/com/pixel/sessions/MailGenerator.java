package com.pixel.sessions;

import javax.annotation.Resource;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.JMSException;
import javax.jms.MessageProducer;
import javax.jms.ObjectMessage;
import javax.jms.Queue;
import javax.jms.Session;

import com.pixel.tools.TypeMail;

/**
 * Session Bean implementation class MailGenerator
 */
@Stateless
@LocalBean
public class MailGenerator implements MailGeneratorRemote {

 
	private static final long serialVersionUID = 6423144733241618563L;
	
	@Resource(mappedName="jms/__defaultConnectionFactory")
	private static ConnectionFactory connectionFactory;
	
	@Resource(mappedName = "jms/inscriptionMail")
	private static Queue inscriptionQueue;
	
	@Resource(mappedName = "jms/confirmationMail")
	private static Queue confirmationQueue;
	
	@Resource(mappedName = "jms/adminMail")
	private static Queue adminQueue;
	
	public MailGenerator() {
       
    }

	@Override
	public void sendMail(PanierBean panier, TypeMail type) {
		try {
			Connection connection = connectionFactory.createConnection();
			Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
			MessageProducer messageProducer=null;
			switch(type){
			case Inscription:
				messageProducer = session.createProducer(inscriptionQueue);
				break;
			case Confirmation:
				messageProducer = session.createProducer(confirmationQueue);
				break;
			case Admin:
				messageProducer = session.createProducer(adminQueue);
				break;
			default:;
			}
			
			ObjectMessage message = session.createObjectMessage(panier);
			messageProducer.send(message);
		} catch (JMSException e) {
			e.printStackTrace();
		}
		
	}

}
