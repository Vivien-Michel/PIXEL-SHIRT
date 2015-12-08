package com.pixel.servlets;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pixel.entities.Utilisateur;
import com.pixel.filtres.AdminFilter;
import com.pixel.form.ConnexionForm;
import com.pixel.sessions.ClientDAO;

/**
 * Servlet implementation class ConnexionAdminServlet
 */
@WebServlet("/Admin/Connexion")
public class ConnexionAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
	private static final String VUE = "/WEB-INF/connexion.jsp";
	
	@EJB
    ClientDAO user;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnexionAdminServlet() {
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
		ConnexionForm connexion = new ConnexionForm(user);
		Utilisateur utilisateur = connexion.connexionUtilisateur(request);
		
		if(connexion.getErreurs().isEmpty()){
			request.getSession().setAttribute(AdminFilter.ATT_SESSION_USER, utilisateur);
			response.sendRedirect( request.getContextPath() + "/Admin/AjoutArticle"  );
		}else{
			request.setAttribute( ATT_FORM, connexion );
            request.setAttribute( ATT_USER, utilisateur );
        	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
		}
	
	}

}
