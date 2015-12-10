package com.pixel.sessions;

import java.io.Serializable;
import java.util.List;

import javax.ejb.Remote;

import com.pixel.entities.Article;
import com.pixel.exceptions.DAOException;

@Remote
public interface ArticleDAORemote extends Serializable{
	/**
	 * Création d'un article dans la base de données
	 * */
	public void creer(Article article) throws DAOException;
	
	/**
	 * Récupération de tous les articles dans la base
	 * */
	public List<?> findAll() throws DAOException;
	
	public List<?> findByOption(String option) throws DAOException;
	
	public Article findById(String Id) throws DAOException;
	
	public Article update(Article article);
	
	public List<Article> findByTag(List<String> tags) throws DAOException;
	
}
