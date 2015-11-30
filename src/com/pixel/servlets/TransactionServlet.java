package com.pixel.servlets;

import java.io.IOException;

import javax.ejb.EJB;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pixel.sessions.PanierBean;
import com.pixel.sessions.TransactionBanquaire;
import com.pixel.tools.Banque;

/**
 * Servlet implementation class TransactionServlet
 */
@WebServlet("/Transaction")
public class TransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/transaction.jsp";
	private static final String ATT_TRANSACTION = "transaction";
    
	@EJB
	private TransactionBanquaire transaction;
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
		HttpSession session = request.getSession(true);
		PanierBean panier = (PanierBean) session.getAttribute(AccueilServlet.KEY_SESSION_BEAN);
		if(panier == null){
			try {
				panier = (PanierBean) new InitialContext().lookup("java:global/Pixel_Shirt/PanierBean");
				session.setAttribute(AccueilServlet.KEY_SESSION_BEAN, panier);
			} catch (NamingException e) {
				e.printStackTrace();
			}
		}
		
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		PanierBean panier = (PanierBean) session.getAttribute(AccueilServlet.KEY_SESSION_BEAN);
		if(panier == null){
			try {
				panier = (PanierBean) new InitialContext().lookup("java:global/Pixel_Shirt/PanierBean");
				session.setAttribute(AccueilServlet.KEY_SESSION_BEAN, panier);
			} catch (NamingException e) {
				e.printStackTrace();
			}
		}
		
		if (request.getParameter(ATT_TRANSACTION) != null) {
			Banque client = new Banque(panier.getClient().getNom(),panier.getClient().getPrenom());
			Banque entreprise = AccueilServlet.banque;
			transaction.transaction(panier, client);
			System.out.println("MONTANT :"+panier.getTotal());
			System.out.println("Client fin :"+ client.getNom()+" "+client.getPrenom()+" "+client.getSolde() );
			System.out.println("Entreprise fin :"+ entreprise.getNom()+" "+entreprise.getPrenom()+" "+entreprise.getSolde() );
		}		
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

}
