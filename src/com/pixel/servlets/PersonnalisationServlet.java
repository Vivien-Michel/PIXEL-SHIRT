package com.pixel.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pixel.entities.Article;
import com.pixel.form.PanierForm;
import com.pixel.sessions.ArticleDAO;
import com.pixel.sessions.PanierBean;

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
		String modele = request.getParameter("modele");
		
		if(modele!=null){
			List<String> tags= new ArrayList<>();
			tags.add(request.getParameter("modele"));
			tags.add(request.getParameter("couleur"));
			tags.add(request.getParameter("taille"));
			List<Article> listArticle = null;
			listArticle=articleDao.findByTag(tags);
			Article article = listArticle.get(0);
			request.setAttribute( ATT_ART, article );
		}else{
			HttpSession session = request.getSession();
			PanierBean panier = (PanierBean) session.getAttribute(AccueilServlet.KEY_SESSION_BEAN);
			
			PanierForm form = new PanierForm(articleDao);
			form.addArticle(request, panier);
			String id = request.getParameter("article_id");
			Article article = articleDao.findById(id);
			request.setAttribute("addcarddetail", "addcarddetail");
			request.setAttribute("article", article);
		}
		
		getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

}
