package com.pixel.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

@Entity
public class Panier implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5447060023679502392L;
	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY )
	private Long id;
	
	@OneToOne(optional=false)
	@MapsId
	private Commande commande;
	
	@OneToOne(optional=false)
	@MapsId
	private Client client;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Commande getCommande() {
		return commande;
	}
	public void setCommande(Commande commande) {
		this.commande = commande;
	}
}
