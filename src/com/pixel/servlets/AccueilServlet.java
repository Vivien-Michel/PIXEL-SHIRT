package com.pixel.servlets;

import java.io.IOException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pixel.sessions.PanierBean;
import com.pixel.tools.Banque;

@WebServlet(urlPatterns = { "/Accueil" })
public class AccueilServlet extends HttpServlet {

	private static final long serialVersionUID = 2476044219517722019L;
	private static final String VUE = "/WEB-INF/accueil.jsp";
	public static final String KEY_SESSION_BEAN = "panier";
	// Initialisation (instance sur server)unique de la banque de l'entreprise pour tout les clients
	public static Banque entreprise = new Banque("Pixel_Shirt","Pixel_Shirt");

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession(true);
		PanierBean panier = (PanierBean) session.getAttribute(KEY_SESSION_BEAN);
		if(panier == null){
			try {
				panier = (PanierBean) new InitialContext().lookup("java:global/Pixel_Shirt/PanierBean");
				session.setAttribute(KEY_SESSION_BEAN, panier);
			} catch (NamingException e) {
				e.printStackTrace();
			}
		}
		
		getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

}
