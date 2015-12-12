package com.pixel.sessions;

import java.util.Date;

import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


@Stateless
public class MailSender {
	
	@Resource(lookup="EmailPix")
	private Session mailSession;
	
	public void sendEmail(String to, String subject, String body){
		MimeMessage message = new MimeMessage(mailSession);
		
		try{
			message.setFrom(new InternetAddress(mailSession.getProperty("mail.from")));
			InternetAddress address = new InternetAddress(to);
			message.setRecipient(Message.RecipientType.TO, address);
			message.setSubject(subject);
			message.setSentDate(new Date());
			message.setText(body);
			
			Transport.send(message);
		}catch(MessagingException e){
			e.printStackTrace();
		}
	}

}
