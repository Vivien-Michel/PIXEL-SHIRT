package com.pixel.sessions;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.ejb.Remove;
import javax.ejb.Stateful;

import com.pixel.entities.Article;
import com.pixel.entities.Client;
import com.pixel.entities.Commande;
import com.pixel.entities.Panier;

/**
 * Session Bean implementation class Panier
 */
@Stateful
public class PanierBean {
	private Panier panier;
	private float total=0;
	
	public Panier getPanier() {
		return panier;
	}

	private List<Article> articles = new ArrayList<Article>();
    /**
     * Default constructor. 
     */
    public PanierBean() {
    	panier=new Panier();
    	Commande commande = new Commande();
    	commande.setValide(false);
    	panier.setCommande(commande);
    }
    
    public void addArticle(Article article, int quantite){
    		boolean contain = false;
			for(Iterator<Article> arti=articles.iterator() ; arti.hasNext();){
    			Article nextArti = arti.next();
				if(nextArti.getId_article().equals(article.getId_article())){
					nextArti.setQuantite(nextArti.getQuantite()+quantite);
					contain = true;
    			}
			}
		if(!contain){
			article.setQuantite(quantite);
			articles.add(article);
		}
		total = total + article.getPrix() * quantite;
    	//sauvegarde des articles dans la BD mais pas encore écrit dans celle-ci
    	panier.getCommande().setArticles(articles);
    }
    
    public Client getClient(){
    	return panier.getClient();
    }
    
    public List<Article> getArticles(){
    	return panier.getCommande().getArticles();
    }
    
    public float getTotal(){
    	return total;
    }
    
    public void removeArticle(Article article, int quantite){
    	if(quantite >0)
    		articles.remove(article);
    }
    
    @Remove
    public void remove(){
    	if(panier.getClient() != null){
    		
    	}
    }

}
