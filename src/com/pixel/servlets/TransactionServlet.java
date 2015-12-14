package com.pixel.servlets;

import java.io.IOException;
import java.util.Map.Entry;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;

import com.pixel.entities.Article;
import com.pixel.entities.Commande;
import com.pixel.entities.Historique;
import com.pixel.sessions.ArticleDAO;
import com.pixel.sessions.MailGenerator;
import com.pixel.sessions.PanierBean;
import com.pixel.sessions.TransactionBanquaire;
import com.pixel.tools.Banque;
import com.pixel.tools.TypeMail;

/**
 * Servlet implementation class TransactionServlet
 */
@WebServlet("/Transaction")
public class TransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/accueil.jsp";
	private static final String ATT_TRANSACTION = "transaction";
    
	@EJB
	private TransactionBanquaire transaction;
	
	@EJB
	private MailGenerator mailGenerator;
	
	@EJB
	private ArticleDAO articleDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		PanierBean panier = (PanierBean) session.getAttribute(AccueilServlet.KEY_SESSION_BEAN);
		
		if (request.getParameter(ATT_TRANSACTION) != null) {
			Banque client = new Banque(panier.getClient().getNom(),panier.getClient().getPrenom());
			try {
				if(transaction.transaction(client,Float.parseFloat(panier.getTotal().replaceAll(",", ".")),AccueilServlet.entreprise)){
					mailGenerator.sendMail(panier, TypeMail.Confirmation);
					//Création historique
					Historique historique = new Historique();
					
					for(Entry<Article, Integer> map : panier.getPanier().getCommande().getArticles().entrySet()){
						Article article = map.getKey();
						Integer quantite = map.getValue();
						article.setQuantite(article.getQuantite()-quantite);
						articleDao.update(article);	
						if(article.getQuantite()-quantite<=0){
							mailGenerator.sendMail(panier, TypeMail.Admin);
						}
			    	}
					//Validation de la commande
					panier.getPanier().getCommande().setDate(new DateTime());
					panier.getPanier().getCommande().setValide(true);
						
					//Information de l'historique
					historique.setCommande(panier.getPanier().getCommande());
					historique.setClient(panier.getClient());
					//La commande connait l'historique dans lequel elle est référencée
					panier.getPanier().getCommande().setHistorique(historique);
					//Ajoput à l'historique client
					panier.getClient().getHistoriques().add(historique);
					//Création d'une nouvelle commande
					Commande commande = new Commande();
					commande.setDate(new DateTime());
					commande.setValide(false);
					panier.getPanier().setCommande(commande);
					panier.update();
					session.setAttribute("transaction_success", "transaction_success");
				}else{
					session.setAttribute("transaction_failed", "transaction_failed");
				}
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}		
		response.sendRedirect(request.getContextPath()+"/Accueil");
	}

}
