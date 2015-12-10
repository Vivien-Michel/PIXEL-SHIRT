package com.pixel.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pixel.sessions.PanierBean;

/**
 * Servlet implementation class Livraison
 */
@WebServlet("/Panier/ModeDeLivraison")
public class ModeDeLivraisonServlet  extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/modeLivraison.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModeDeLivraisonServlet() {
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
		HttpSession session = request.getSession();
		PanierBean panier = (PanierBean) session.getAttribute(AccueilServlet.KEY_SESSION_BEAN); 
		String frais = request.getParameter("livraison");
		panier.rollBackFrais();
		
		if(request.getParameter("livraison") !=null){
			panier.setFraisLivraison(Float.parseFloat(frais));
			response.sendRedirect("/Pixel_Shirt/Panier/ModePaiement");
		}else{
			String erreur = "Veuillez choisir un mode de livraison";
			request.setAttribute("erreur", erreur);
			getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}
		
	}

}
