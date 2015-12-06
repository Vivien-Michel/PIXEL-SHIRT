package com.pixel.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Livraison
 */
@WebServlet("/Panier/ModeDeLivraison")
public class ModeDeLivraisonServelet  extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/modeLivraison.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModeDeLivraisonServelet() {
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
	
		 if (request.getParameter("commander") != null) {
				System.out.println("hello");
		    }
		 getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

}
