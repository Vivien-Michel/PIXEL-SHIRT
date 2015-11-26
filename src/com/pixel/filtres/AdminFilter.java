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

import com.pixel.entities.Utilisateur;

@WebFilter(urlPatterns = "/Admin/*")
public class AdminFilter implements Filter {
	public static final String ACCES_CONNECT   = "/Admin/Connexion";
	public static final String ACCES_INSCRIPTION   = "/WEB-INF/inscription.jsp";
	public static final String ACCES_ACCUEIL = "/Accueil";
    public static final String ATT_SESSION_USER = "Admin";
	
    @Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        
        HttpSession session = req.getSession();
        Utilisateur user = (Utilisateur) session.getAttribute( ATT_SESSION_USER );
        if ( user == null) {
            /* Redirection vers la page de connexion */
        	String chemin =req.getRequestURI().substring( req.getContextPath().length() );
    		String form = chemin.substring(chemin.lastIndexOf('/')+1);
    		if(form.equals("Inscription")){
    			chain.doFilter( request, response );
    		}else{
    			req.getRequestDispatcher( ACCES_CONNECT ).forward( request, response );
        	}
        } else if(user.isAdmin()){
        	/* Affichage de la page restreinte */
        	chain.doFilter( request, response );
        }
        else {
            /*Pas un administrateur donc retour à l'accueil*/
        	resp.sendRedirect( req.getContextPath() + ACCES_ACCUEIL );
        }

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
