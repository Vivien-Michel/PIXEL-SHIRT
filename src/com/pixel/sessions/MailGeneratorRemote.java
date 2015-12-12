package com.pixel.sessions;

import java.io.Serializable;

import javax.ejb.Remote;

import com.pixel.tools.TypeMail;

@Remote
public interface MailGeneratorRemote extends Serializable {
	
	public void sendMail(PanierBean panier, TypeMail type);
}
