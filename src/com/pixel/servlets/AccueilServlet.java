package com.pixel.servlets;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pixel.sessions.ArticleDAO;

@WebServlet(urlPatterns = { "/Accueil" })
public class AccueilServlet extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 2476044219517722019L;
	private static final String VUE = "/WEB-INF/accueil.jsp";
	public static final String KEY_SESSION_BEAN = "panier";  
	private static final String ATT_ART= "listeArticles";
	@EJB
	private ArticleDAO articleDao;
	
	
	public AccueilServlet() {
        super();
    }
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<?> articles = articleDao.findAll();
		request.setAttribute( ATT_ART, articles );
		getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}
	
	

}
