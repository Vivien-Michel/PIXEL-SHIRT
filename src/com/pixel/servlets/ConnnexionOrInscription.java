package com.pixel.servlets;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pixel.entities.Client;
import com.pixel.entities.Utilisateur;
import com.pixel.form.ConnexionForm;
import com.pixel.form.InscriptionForm;
import com.pixel.sessions.ClientDAO;
import com.pixel.sessions.PanierBean;

@WebServlet(urlPatterns = {"/ConnnexionOrInscription"})
public class ConnnexionOrInscription extends HttpServlet{

	
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/connnectOuInscription.jsp";
	public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    
	@EJB
	private ClientDAO user;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public ConnnexionOrInscription() {
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
		HttpSession session = request.getSession(true);
		PanierBean panier = (PanierBean) session.getAttribute(AccueilServlet.KEY_SESSION_BEAN);
		
		if(request.getParameter("civilite") != null){	
			InscriptionForm form = new InscriptionForm( user );
	        /* Traitement de la requête et récupération du bean en résultant */
	        Utilisateur utilisateur = form.inscrireUtilisateur( request, panier);
	        /* Stockage du formulaire et du bean dans l'objet request */
	        if(form.getErreurs().isEmpty()){
	        	String referer = request.getHeader("Referer");
	        	response.sendRedirect(referer);
	        }else{
	        	request.setAttribute( ATT_FORM, form );
	        	request.setAttribute( ATT_USER, utilisateur );
	        	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	        }
		} else{
			ConnexionForm connexion = new ConnexionForm(user);
			Utilisateur utilisateur = connexion.connexionUtilisateur(request);
			
	        if(connexion.getErreurs().isEmpty()){
	        	panier.fusion(((Client) utilisateur).getPanier());
	        	String referer = request.getHeader("Referer");
	        	response.sendRedirect(referer);
	        }else{
	        	request.setAttribute( ATT_FORM, connexion );
	            request.setAttribute( ATT_USER, utilisateur );
	        	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
			}
		}
		
		
		
	}
}
