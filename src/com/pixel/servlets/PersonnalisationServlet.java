package com.pixel.servlets;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pixel.entities.Article;
import com.pixel.sessions.ArticleDAO;

/**
 * Servlet implementation class PersonnalisationServlet
 */
@WebServlet("/Personnalisation")
public class PersonnalisationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/personnalisation.jsp";
	private static final String ATT_ART = "article";
    
	@EJB
	private ArticleDAO articleDao;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonnalisationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id !=null){
			Pattern intOnly = Pattern.compile("\\d{1,10}");
			Matcher matcher = intOnly.matcher(id);
			if(matcher.find()){
				Article article = articleDao.findById(id);
				request.setAttribute("article", article);
				this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
			}else{
				response.sendRedirect(request.getContextPath() + "/Accueil");
			}
		}else{
			response.sendRedirect(request.getContextPath() + "/Accueil");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

}
