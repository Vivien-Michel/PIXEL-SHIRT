package com.pixel.filtres;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pixel.entities.Panier;
import com.pixel.entities.Utilisateur;
import com.pixel.servlets.AccueilServlet;
import com.pixel.sessions.PanierBean;


@WebFilter(urlPatterns = "/Panier/*")
public class CommandeFilter implements Filter{
	public static final String ACCES_CONNECT   = "/WEB-INF/connnetOuInscription.jsp";
	public static final String ATT_SESSION_USER = "sessionScope.panier.client";
	
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        
        HttpSession session = req.getSession();
        PanierBean panier = (PanierBean) session.getAttribute( AccueilServlet.KEY_SESSION_BEAN );
        
        /* Redirection vers la page de connexion */
    	String chemin =req.getRequestURI().substring( req.getContextPath().length() );
		String form = chemin.substring(chemin.lastIndexOf('/')+1);
		if(form.equals("Gestion")){
			chain.doFilter( request, response );
		}
		else{
//			req.getRequestDispatcher( ACCES_CONNECT ).forward( request, response );
			if ( panier.getClient() == null ) {
	            /* Redirection vers la page publique */
	        	
	        	req.getRequestDispatcher( ACCES_CONNECT ).forward( request, response );
	        	
	        	
	        } else {
	            /* Affichage de la page restreinte */
	            chain.doFilter( request, response );
	        }
    	}
        
        
        
        
        
//        if ( user == null) {
//            /* Redirection vers la page de connexion */
//        	String chemin =req.getRequestURI().substring( req.getContextPath().length() );
//    		String form = chemin.substring(chemin.lastIndexOf('/')+1);
//    		if(form.equals("/Panier/ConnnexionOrInscription")){
//    			chain.doFilter( request, response );
//    		}else{
//    			req.getRequestDispatcher( ACCES_CONNECT ).forward( request, response );
//        	}
//        } else if(user.isAdmin()){
//        	/* Affichage de la page restreinte */
//        	chain.doFilter( request, response );
//        }
//        else {
//            /*Pas un administrateur donc retour à l'accueil*/
//        	resp.sendRedirect( req.getContextPath() + ACCES_ACCUEIL );
//        }
		
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

}
