package com.pixel.sessions;


import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.PreDestroy;
import javax.ejb.Remove;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.pixel.entities.Article;
import com.pixel.entities.Client;
import com.pixel.entities.Commande;
import com.pixel.entities.Panier;
import com.pixel.exceptions.DAOException;

/**
 * Session Bean implementation class Panier
 */
@Stateful
public class PanierBean implements Serializable{
	
	private static final long serialVersionUID = 5589167259637992966L;
	private Panier panier;
	private float total=0;
	private Map<Article,Integer> articles = new HashMap<Article,Integer>();
	private boolean fusion = false;
	
	@PersistenceContext(unitName= "bdd_pixel_shirt")
	private EntityManager em;
	private float fraisLivraison=0;
	private String paiement="";
	
	public Panier getPanier() {
		return panier;
	}

	
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
    		boolean contains =false;
    			for(Entry<Article, Integer> map : articles.entrySet()){
    				Article art = map.getKey();
    				Integer quant = map.getValue();
    				if(art.equals(article)){
    					articles.put(art, quant+quantite);
    					contains = true;
    					break;
    				}
    			}
				
			if(!contains){
				articles.put(article, quantite);
			}
    		
		total = total + article.getPrix() * quantite;
    	//sauvegarde des articles dans la BD mais pas encore écrit dans celle-ci
    	panier.getCommande().setArticles(articles);
    }
    
    public Client getClient(){
    	return panier.getClient();
    }
    
    public Map<Article, Integer> getArticles(){
    	return panier.getCommande().getArticles();
    }
    
    public void setFusion(boolean fusion){
    	this.fusion=fusion;
    }
    
    public String getTotal(){
    	DecimalFormat df = new DecimalFormat("#,##0.00");
    	return df.format(total);
    }
    
    public int getSize(){
    	int size=0;
    	for(Entry<Article, Integer> map : panier.getCommande().getArticles().entrySet()){
    		size+=map.getValue();
    	}
    	return size;
    }

    @Remove
    public void remove(){
    }
    
    @PreDestroy
    public void update(){
    	if(panier.getClient() != null){
    		try {
    			System.out.println("update du panier");
    			em.merge(panier);
    		}catch ( Exception e ) {
                throw new DAOException( e );
            }
    	}
    }
    
    // TODO modif champs envoie un DOPOST
	// Condition vérifiée : article appartient à la liste articles
    public void update(String article_id, int quantite) {
		Long id = Long.parseLong(article_id);
		for(Entry<Article, Integer> map : articles.entrySet()){
			Article art = map.getKey();
			if(art.getId().equals(id)){
				Integer quant = map.getValue();
				Integer delta = quantite - quant; 
				articles.put(art, quantite);
				total = total + art.getPrix() * delta;
			}
		}
		panier.getCommande().setArticles(articles);
	}
    
 // Condition vérifiée : article appartient à la liste articles
	public void supprimer(String article_id) {
		Long id = Long.parseLong(article_id);
		for(Entry<Article, Integer> map : articles.entrySet()){
			Article art = map.getKey();
			if(art.getId().equals(id)){
				Integer quantite = map.getValue();
				total = total - art.getPrix()*quantite;
				articles.remove(art);
				break;
			}
		}
		panier.getCommande().setArticles(articles);
	}

	public void fusion(Panier panier) {
		if(!fusion){
			for(Entry<Article, Integer> map : panier.getCommande().getArticles().entrySet()){
				Article article = map.getKey();
				Integer quantite = map.getValue();
				addArticle(article,  quantite);
			}
			fusion=true;
		}
		panier.getCommande().setArticles(articles);
		this.panier = panier;
	}


	public void setFraisLivraison(float frais) {
		this.fraisLivraison=frais;
		total+=frais;
		
	}


	public String getFraisLivraison() {
		DecimalFormat df = new DecimalFormat("#,##0.00");
    	return df.format(fraisLivraison);
	}


	public void rollBackFrais() {
		total-=fraisLivraison;
		fraisLivraison=0;
	}


	public void setModePaiement(String paiement) {
		this.paiement=paiement;
		
	}

	public String getPaiement() {
		return paiement;
	}

}
