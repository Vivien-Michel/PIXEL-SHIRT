package com.pixel.servlets;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pixel.sessions.ArticleDAO;

@WebServlet(urlPatterns = "/images/*")
public class ImageServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 179729273420052777L;
	@EJB
	private ArticleDAO articleDao;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String chemin =request.getRequestURI().substring( request.getContextPath().length() );
		String id_article = chemin.substring(chemin.lastIndexOf('/')+1); 
		articleDao.getImage(id_article, response);
	}

}
