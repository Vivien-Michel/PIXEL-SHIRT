package com.pixel.sessions;

import java.io.Serializable;

import javax.ejb.Remote;

import com.pixel.entities.Utilisateur;
import com.pixel.exceptions.DAOException;

@Remote
public interface ClientDAORemote extends Serializable{
	
	public void creer( Utilisateur utilisateur ) throws DAOException;
	
	public Utilisateur trouver( String email) throws DAOException;
	
	public void supprimer( Utilisateur user ) throws DAOException;
}
