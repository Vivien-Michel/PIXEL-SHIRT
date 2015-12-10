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
@WebServlet("/Panier/AdresseFacturation")
public class AdresseFacturationServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final String VUE = "/WEB-INF/adresseFacturation.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdresseFacturationServlet() {
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
		 String radioButton = request.getParameter("livraison");
		//Formulaire
		 request.getSession();
		 if(radioButton != null && radioButton.equals("meme")){
			response.sendRedirect("/Pixel_Shirt/Panier/ModeDeLivraison");
		}else if(radioButton !=null && radioButton.equals("differente")){
			response.sendRedirect("/Pixel_Shirt/Panier/AdresseLivraison");
		} else{
			getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}

	}

}
