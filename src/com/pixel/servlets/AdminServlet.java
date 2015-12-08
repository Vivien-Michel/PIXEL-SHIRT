package com.pixel.servlets;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pixel.entities.Utilisateur;
import com.pixel.form.InscriptionForm;
import com.pixel.sessions.ClientDAO;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/Admin/Inscription")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
	private static final String VUE = "/WEB-INF/inscription.jsp";
	
	@EJB
    private ClientDAO user;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
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
		InscriptionForm form = new InscriptionForm( user );
        /* Traitement de la requête et récupération du bean en résultant */
        Utilisateur utilisateur = form.inscrireAdmin(request);
        if(form.getErreurs().isEmpty()){
        	response.sendRedirect( request.getContextPath() + "/Admin/AjoutArticle"  );
        }else{
        	request.setAttribute( ATT_FORM, form );
            request.setAttribute( ATT_USER, utilisateur );
        	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }
	}

}
