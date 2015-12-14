package com.pixel.sessions;

import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.transaction.UserTransaction;

import com.pixel.exceptions.InsufficientFundException;
import com.pixel.exceptions.PaymentException;
import com.pixel.tools.Banque;

/**
 * Session Bean implementation class TransactionBanquaire
 * Une transaction permet d'assurer l'intégrité des données
 * car soit elle s'exécute correctement dans son intégralité
 * soit elle ne fait aucune modification. transaction ACID
 */

@Stateless
@TransactionManagement(value=TransactionManagementType.BEAN)
public class TransactionBanquaire  {
	
	@Resource
    private UserTransaction userTransaction;
	
	public boolean transaction(Banque client, float somme, Banque entreprise) throws Exception {
		System.out.println("MONTANT :"+somme);
		System.out.println("Client début :"+ client.getNom()+" "+client.getPrenom()+" "+client.getSolde() );
		System.out.println("Entreprise début :"+ entreprise.getNom()+" "+entreprise.getPrenom()+" "+entreprise.getSolde() );
		boolean valid=false;
		 try{
	         userTransaction.begin();
	         System.out.println("a");
	         withdrawAmount(client,somme);
	         System.out.println("b");
	         depositAmount(entreprise,somme);
	         System.out.println("c");
	         valid=true;
	         userTransaction.commit();
	         System.out.println("MONTANT :"+somme);
	 		 System.out.println("Client fin after commit :"+ client.getNom()+" "+client.getPrenom()+" "+client.getSolde() );
	 		 System.out.println("Entreprise fin after commit :"+ entreprise.getNom()+" "+entreprise.getPrenom()+" "+entreprise.getSolde() );
	         
	    }catch (InsufficientFundException e1){
	         userTransaction.rollback();
	         System.out.println("MONTANT :"+somme);
	 		System.out.println("Client fin insufficient :"+ client.getNom()+" "+client.getPrenom()+" "+client.getSolde() );
	 		System.out.println("Entreprise fin insufficient :"+ entreprise.getNom()+" "+entreprise.getPrenom()+" "+entreprise.getSolde() );
	      }catch (PaymentException e2){
	         userTransaction.rollback();
	         System.out.println("MONTANT :"+somme);
	 		System.out.println("Client fin payment:"+ client.getNom()+" "+client.getPrenom()+" "+client.getSolde() );
	 		System.out.println("Entreprise fin payement :"+ entreprise.getNom()+" "+entreprise.getPrenom()+" "+entreprise.getSolde() );
	      }
		 return valid;
   }

   private void withdrawAmount(Banque b, float somme) throws InsufficientFundException, PaymentException {
	   if (b.getSolde()-somme < 0){
		   throw new InsufficientFundException("[InsufficientFundException] Solde négatif");		   
	   }else{
			try {
				b.setSolde(b.getSolde()-somme);
			} catch (Throwable e) {
				throw new PaymentException("[PaymentException] Erreur lors du versement withdraw");
		}
	   }
   }

   private void depositAmount(Banque b, float somme) throws PaymentException{
	   try {
		   b.setSolde(b.getSolde()+somme);
	   }catch(Throwable e){
		   throw new PaymentException("[PaymentException] Erreur lors du versement");
	   }	   
   }
	   
}

