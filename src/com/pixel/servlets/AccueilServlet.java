package com.pixel.servlets;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pixel.tools.Banque;
import com.pixel.sessions.ArticleDAO;

@WebServlet(urlPatterns = { "/Accueil" })
public class AccueilServlet extends HttpServlet {

	private static final long serialVersionUID = 2476044219517722019L;
	private static final String VUE = "/WEB-INF/accueil.jsp";
	public static final String KEY_SESSION_BEAN = "panier";  
	private static final String ATT_ART= "listeArticles";
	// Initialisation (instance sur server)unique de la banque de l'entreprise pour tout les clients
	public static Banque entreprise = new Banque("Pixel_Shirt","Pixel_Shirt");
	
	@EJB
	private ArticleDAO articleDao;
	
	
	public AccueilServlet() {
        super();
    }
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		if(session.getAttribute("add")!=null){
			request.setAttribute("addcard", "addcard");
		}else if(session.getAttribute("transaction_success")!=null){
			request.setAttribute("transaction_success", "transaction_success");
		}else if(session.getAttribute("transaction_failed")!=null){
			request.setAttribute("transaction_failed", "transaction_failed");
		}
		List<?> articles = articleDao.findAll();
		request.setAttribute( ATT_ART, articles );
		session.setAttribute("add", null);
		session.setAttribute("transaction_success", null);
		session.setAttribute("transaction_failed", null);
		getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}
	
	

}
