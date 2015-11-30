package com.pixel.sessions;

import javax.annotation.Resource;
import javax.ejb.AfterBegin;
import javax.ejb.AfterCompletion;
import javax.ejb.BeforeCompletion;
import javax.ejb.EJBContext;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.SystemException;
import javax.transaction.UserTransaction;

import com.pixel.entities.Utilisateur;
import com.pixel.servlets.AccueilServlet;
import com.pixel.tools.Banque;

/**
 * Session Bean implementation class TransactionBanquaire
 * Une transaction permet d'assurer l'intégrité des données
 * car soit elle s'exécute correctement dans son intégralité
 * soit elle ne fait aucune modification. transaction ACID
 */

@Stateless
public class TransactionBanquaire  {
	
	@Resource
    private EJBContext context;
	
	
	public void transaction(PanierBean p, Banque client){
	        try {
	            // Do something with the EntityManager
	            // such as persist(), merge() or remove()
	        	
	        	Banque entreprise = AccueilServlet.banque;
	    		System.out.println("MONTANT :"+p.getTotal());
	    		System.out.println("Client début :"+ client.getNom()+" "+client.getPrenom()+" "+client.getSolde() );
	    		System.out.println("Entreprise début :"+ entreprise.getNom()+" "+entreprise.getPrenom()+" "+entreprise.getSolde() );
	    		
	    		entreprise.debit(client, Float.parseFloat(p.getTotal()));
	    		
	    		throw new SystemException("test rollback");	        	
	        }
	        catch(SystemException t) {
	            /**
	             * What error occurs in the try{} clause,
	             * the data will not be persisted if
	             * context.setRollbackOnly() is invoked here.
	             **/
	        	t.printStackTrace();
	            context.setRollbackOnly();
	        }
	    }
	
	// Require connexion . méthode de transaction banquaire
	/*public void transaction(PanierBean p, Banque client) {
		Banque entreprise = AccueilServlet.banque;
		System.out.println("MONTANT :"+p.getTotal());
		System.out.println("Client début :"+ client.getNom()+" "+client.getPrenom()+" "+client.getSolde() );
		System.out.println("Entreprise début :"+ entreprise.getNom()+" "+entreprise.getPrenom()+" "+entreprise.getSolde() );
		entreprise.debit(client, Float.parseFloat(p.getTotal()));
		
		try {
			throw new SystemException("test rollback");
		} catch ( SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
	

	
	
    @AfterBegin
    private void afterBegin(){
        System.out.println("A new transaction has started.");
    }

    @BeforeCompletion
    private void beforeCompletion(){
        System.out.println("A transaction is about to be committed.");
    }

    @AfterCompletion
    private void afterCompletion(boolean committed) {
        System.out.println("a transaction commit protocol has completed, and tells the instance whether the transaction has been committed or rolled back , based on committed value : " + committed);
    }
}
