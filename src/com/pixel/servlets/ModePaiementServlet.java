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
@WebServlet("/Panier/ModePaiement")
public class ModePaiementServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/modePaiement.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModePaiementServlet() {
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
		 String paiement = request.getParameter("cb");
		if(paiement !=  null){
			HttpSession session = request.getSession();
			PanierBean panier = (PanierBean) session.getAttribute(AccueilServlet.KEY_SESSION_BEAN);
			panier.setModePaiement(paiement);
			response.sendRedirect(request.getContextPath() + "/Panier/Recapitulatif");
		}else{
			String erreur = "Veuillez choisir un mode de paiement";
			request.setAttribute("erreur", erreur);
			getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}
	}

}
