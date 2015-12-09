package com.pixel.form;

import javax.servlet.http.HttpServletRequest;

import com.pixel.entities.Article;
import com.pixel.sessions.ArticleDAO;
import com.pixel.sessions.ClientDAO;
import com.pixel.sessions.PanierBean;

public class PanierForm extends Form {
	
	private boolean suppr=false;

	public PanierForm(ClientDAO client){
		this.user=client;
	}
	
	public PanierForm(ArticleDAO article){
		this.articleDao=article;
	}
	
	public void update(HttpServletRequest request, PanierBean panier){
		suppr=false;
		int quantite=0;
		// Recupération du paramètre article_id dans la balise input de type "hidden" du fichier panierGestion.jsp
		String article_id = request.getParameter(CHAMP_ART_ID);
		if (request.getParameter(CHAMP_QUANT) != null) {
			// Recupération du paramètre quantite dans le fichier panierGestion.jsp
			String q = request.getParameter(CHAMP_QUANT);
			try{
				quantite = Integer.parseInt(q);
			}catch(NumberFormatException e){
				setErreur(CHAMP_QUANT, "La quantité doit être un entier");
			}
			// Update panier (ID,TOTAL,QUANTITE)
			panier.update(article_id,quantite);

	    } else if (request.getParameter("supprimer") != null) {
	          panier.supprimer(article_id);
	    } else if (request.getParameter("deconnexion") != null){
	    	  panier.getPanier().setClient(null);
	    }else if(request.getParameter("supprimerCompte") != null){
	    	user.supprimer(panier.getClient());
	    	panier.getPanier().setClient(null);
	    	suppr=true;
		}
	
	}
	
	public void addArticle(HttpServletRequest request, PanierBean panier){
		
		int quantite=0;
		String quantites = (String) request.getParameter("quantite");
		try{
			quantite = Integer.parseInt(quantites);
		}catch(NumberFormatException e){
			setErreur(CHAMP_QUANT, "La quantité doit être un entier");
		}
		String articleid = request.getParameter(CHAMP_ART_ID);
		Article article = articleDao.findById(articleid);
		
		if(article.getQuantite()-quantite>=0){
			article.setQuantite(article.getQuantite()-quantite);
			articleDao.update(article);
			panier.addArticle(article, quantite);
		}
	}

	public boolean supprimerCompte(){
		return suppr;
	}
}