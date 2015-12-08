package com.pixel.form;

import javax.servlet.http.HttpServletRequest;

import org.jasypt.util.password.ConfigurablePasswordEncryptor;
import org.joda.time.DateTime;

import com.pixel.entities.Administrateur;
import com.pixel.entities.Utilisateur;
import com.pixel.entities.Client;
import com.pixel.exceptions.FormValidationException;
import com.pixel.filtres.AdminFilter;
import com.pixel.sessions.ClientDAO;
import com.pixel.sessions.PanierBean;

public class InscriptionForm extends Form{
	
    
	public InscriptionForm(ClientDAO user) {
		this.user=user;
	}

	public Utilisateur inscrireUtilisateur(HttpServletRequest request, PanierBean panier) {
		 	String email = getValeurChamp( request, CHAMP_EMAIL );
		    String motDePasse = getValeurChamp( request, CHAMP_PASS );
		    String confirmation = getValeurChamp( request, CHAMP_CONF );
		    String nom = getValeurChamp( request, CHAMP_NOM );
		    String prenom = getValeurChamp(request, CHAMP_PRENOM);
//		    //MODIF
		    String adresse = getValeurChamp(request, CHAMP_ADRESSE);		 
		    String codePostal = getValeurChamp(request, CHAMP_CODE_POSTAL);
		    String ville = getValeurChamp(request, CHAMP_VILLE);
//		    //FIN MODIF
		    Client utilisateur = new Client();
		    
		    utilisateur.setPanier(panier.getPanier());
		    utilisateur.setDate(new DateTime());
		    
		    traiterEmail(email, utilisateur);
		    traiterMotsDePasse(motDePasse, confirmation, utilisateur);
		    try {
		        validationNom( nom );
		    } catch ( FormValidationException e ) {
		        setErreur( CHAMP_NOM, e.getMessage() );
		    }
		    utilisateur.setNom(nom);
		    try {
		        validationNom( prenom );
		    } catch ( FormValidationException e ) {
		        setErreur( CHAMP_PRENOM, e.getMessage() );
		    }
		    
		    
		    try {
		        validationVille( ville );
		    } catch ( FormValidationException e ) {
		        setErreur( CHAMP_VILLE, e.getMessage() );
		    }
		    
		    try {
		        validationAdresse( adresse );
		    } catch ( FormValidationException e ) {
		        setErreur( CHAMP_ADRESSE, e.getMessage() );
		    }
		    
		    
		    try {
		    	validationCodePostal( codePostal );
		    } catch ( FormValidationException e ) {
		        setErreur( CHAMP_CODE_POSTAL, e.getMessage() );
		    }
		    
		    

		    
		    utilisateur.setPrenom(prenom);
		    
		    utilisateur.setAdresse(adresse);
		    utilisateur.setVille(ville);
		    utilisateur.setCodePostal(Integer.parseInt(codePostal));
		    if ( erreurs.isEmpty() ) {
		    	panier.getPanier().setClient(utilisateur);
		    	panier.setFusion(true);
		    	user.creer(utilisateur);
		        resultat = "Succès de l'inscription.";
		    } else {
		        resultat = "Échec de l'inscription.";
		    }

		    return utilisateur;
		    
	}
	
	public Utilisateur inscrireAdmin(HttpServletRequest request){
			Administrateur admin = new Administrateur();
			String email = getValeurChamp( request, CHAMP_EMAIL );
		    String motDePasse = getValeurChamp( request, CHAMP_PASS );
		    String confirmation = getValeurChamp( request, CHAMP_CONF );
		    String nom = getValeurChamp( request, CHAMP_NOM );
		    String prenom = getValeurChamp(request, CHAMP_PRENOM);
			
		    traiterEmail(email, admin);
		    traiterMotsDePasse(motDePasse, confirmation, admin);
		    try {
		        validationNom( nom );
		    } catch ( FormValidationException e ) {
		        setErreur( CHAMP_NOM, e.getMessage() );
		    }
		    admin.setNom(nom);
		    try {
		        validationNom( prenom );
		    } catch ( FormValidationException e ) {
		        setErreur( CHAMP_PRENOM, e.getMessage() );
		    }
		    admin.setPrenom(prenom);
		    if ( erreurs.isEmpty() ) {
		    	user.creer(admin);
		    	request.getSession().setAttribute(AdminFilter.ATT_SESSION_USER, admin);
		        resultat = "Succès de l'inscription.";
		    } else {
		        resultat = "Échec de l'inscription.";
		    }
		    
			return admin; 
	}
	
	private void traiterMotsDePasse( String motDePasse, String confirmation, Utilisateur utilisateur ) {
	    try {
	        validationMotsDePasse( motDePasse, confirmation );
	    } catch ( FormValidationException e ) {
	        setErreur( CHAMP_PASS, e.getMessage() );
	        setErreur( CHAMP_CONF, null );
	    }
	    /*
	     * Utilisation de la bibliothèque Jasypt pour chiffrer le mot de passe
	     * efficacement.
	     * 
	     * L'algorithme SHA-256 est ici utilisé, avec par défaut un salage
	     * aléatoire et un grand nombre d'itérations de la fonction de hashage.
	     * 
	     * La String retournée est de longueur 56 et contient le hash en Base64.
	     */
	    ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
	    passwordEncryptor.setAlgorithm( ALGO_CHIFFREMENT );
	    passwordEncryptor.setPlainDigest( false );
	    String motDePasseChiffre = passwordEncryptor.encryptPassword( motDePasse );
	    utilisateur.setMdp( motDePasseChiffre );

	}
	
	private void traiterEmail( String email, Utilisateur utilisateur ) {
	    try {
	        validationEmail(email);
	    } catch ( FormValidationException e ) {
	        setErreur( CHAMP_EMAIL, e.getMessage() );
	    }
	    utilisateur.setMail( email );
	}
	
	@Override
	protected void validationEmail(String email) throws FormValidationException {
		if ( email != null ) {
	        if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
	            throw new FormValidationException( "Merci de saisir une adresse mail valide." );
	        } else if ( user.trouver( email ) != null) {
	            throw new FormValidationException( "Cette adresse email est déjà utilisée, merci d'en choisir une autre." );
	        }
	    } else {
	        throw new FormValidationException( "Merci de saisir une adresse mail." );
	    }
		
	}

}
