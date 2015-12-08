package com.pixel.tools;

public class Banque {
	
	// Solde
	private float solde ;
	private static final float maximum = 15000;
	private static final float minimum = 1000;

	// Client
	private String nom;
	private String prenom; 
	//private String numCompte;
	
	public Banque (String nom, String prenom ) {
		this.nom = nom;
		this.prenom = prenom;
		this.solde = (float) (minimum + (Math.random() * (maximum - minimum))) ;
	}


	public float getSolde() {
		return solde;
	}

	public void setSolde(float solde) throws Throwable{
		//throw new Throwable();
		this.solde = solde;			
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}	
}
