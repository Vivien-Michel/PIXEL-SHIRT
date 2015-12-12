package com.pixel.servlets;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pixel.form.PanierForm;
import com.pixel.sessions.ArticleDAO;
import com.pixel.sessions.PanierBean;

/**
 * Servlet implementation class AffichageArticleServlet
 */
@WebServlet("/Articles")
public class AffichageArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/accueil.jsp";  
	
	@EJB
	private ArticleDAO articleDao;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public AffichageArticleServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		PanierBean panier = (PanierBean) session.getAttribute(AccueilServlet.KEY_SESSION_BEAN);
		PanierForm form = new PanierForm(articleDao);
		form.addArticle(request, panier);
		response.sendRedirect("Accueil");
	}

}
