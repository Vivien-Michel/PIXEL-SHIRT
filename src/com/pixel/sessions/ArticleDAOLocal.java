package com.pixel.sessions;

import java.io.IOException;

import javax.ejb.Local;
import javax.servlet.http.HttpServletResponse;

@Local
public interface ArticleDAOLocal {
	
	public void getImage(String id_article, HttpServletResponse response) throws IOException;

}
