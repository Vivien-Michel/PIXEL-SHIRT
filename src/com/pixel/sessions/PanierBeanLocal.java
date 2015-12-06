package com.pixel.sessions;

import java.util.Map;

import javax.annotation.PostConstruct;
import javax.ejb.Local;
import javax.ejb.Remove;

import com.pixel.entities.Article;
import com.pixel.entities.Client;
import com.pixel.entities.Panier;

@Local
public interface PanierBeanLocal {
	
	@PostConstruct
	public void init();
	
	public void addArticle(Article article, int quantite);
	
	/**
	 * Client associé au panier ou null
	 * */
	public Client getClient();
	
	/**
	 * Récupération de tous les articles dans le panier
	 * */
	public Map<Article, Integer> getArticles();
	
	/**
	 * Indique si la fusion doit être faite ou non
	 * */
	public void setFusion(boolean fusion);
	
	/**
	 * Renvoie la somme totale en €
	 * */
	public String getTotal();
	
	/**
	 * Retourne le nombre d'article dans le panier
	 * */
	public int getSize();
	
	@Remove
	public void remove();
	
	/**
	 * Met à jour le panier dans la table
	 * */
    public void update();
	
	/**
	 * Met à jour la quantité d'un article
	 * */
	public void update(String article_id, int quantite);
	
	
	/**
	 * Supprime un article du panier
	 * */
	public void supprimer(String article_id);
	
	/**
	 * Fusionne le panier courant avec celui dans la base s'il existe
	 * */
	public void fusion(Panier panier);
	
	/**
	 * Recuperation de l'entity panier
	 * */
	public Panier getPanier();
}
