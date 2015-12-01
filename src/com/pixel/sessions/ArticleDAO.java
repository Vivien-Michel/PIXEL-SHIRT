package com.pixel.sessions;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import com.pixel.entities.Article;
import com.pixel.exceptions.DAOException;
import com.pixel.tools.SortMap;

@Stateless
public class ArticleDAO implements ArticleDAORemote, ArticleDAOLocal{
	
	@PersistenceContext( unitName = "bdd_pixel_shirt" )
    private EntityManager em;
	
	private static final String JPQL_SELECT_BASE = "SELECT a FROM Article a";
	
	
	public void creer(Article article) throws DAOException{
		try {
            em.persist( article );
        } catch ( Exception e ) {
            throw new DAOException( e );
        }
	}
	
	public List<?> findAll() throws DAOException{
		List<?> list=null;
		Query query = em.createQuery(JPQL_SELECT_BASE + " ORDER BY a.id_article");
		try {
			list= query.getResultList();
		} catch ( NoResultException e ) {
            return null;
        } catch ( Exception e ) {
            throw new DAOException( e );
        }
		return list;	
	}
	
	public List<?> findByOption(String option) throws DAOException{
		List<?> list=null;
		Query query = em.createQuery(JPQL_SELECT_BASE+" WHERE a."+option+":="+option);
		query.setParameter(option, option);
		try {
			list= query.getResultList();
		} catch ( NoResultException e ) {
            return null;
        } catch ( Exception e ) {
            throw new DAOException( e );
        }
		return list;	
	}
	
	public Article findById(String Id) throws DAOException{
		Article article = null;
		Long id = Long.parseLong(Id);
		try {
			article = (Article) em.find(Article.class, id);
		} catch ( NoResultException e ) {
            return null;
        } catch ( Exception e ) {
            throw new DAOException( e );
        }
		return article;
	}
	
	public List<Article> findByTag(List<String> tags) throws DAOException{
		List<Article> articles = null;
		Map<Article, Integer> articleMap = new HashMap<>();
		TypedQuery<Article> query = em.createQuery(JPQL_SELECT_BASE+" WHERE :tag IN (a.tags)",Article.class);
		for(String tag : tags){
			query.setParameter("tag", tag);
			try {
				articles= query.getResultList();
				for(Article article : articles){
					//System.out.println("article id: " + article.getId());
					Integer nbTag = articleMap.get(article);
					//System.out.println("article nbTag: " + nbTag);
					if(nbTag != null){
						articleMap.put(article,nbTag+1);
					}else{
						articleMap.put(article,1);
					}
				}
			}catch ( Exception e ) {
	            throw new DAOException( e );
	        }
		}
		articles = SortMap.sortMap(articleMap);
		//System.out.println("article list: " + articles.size());
		return articles;
	}
	
	public Article update(Article article){
		return em.merge(article);
	}

	public void getImage(String id_article, HttpServletResponse response) throws IOException {
		response.setContentType("image/jpeg");
		Article article = findById(id_article);
		response.setContentLength(article.getImage().length);
        ServletOutputStream outputStream = response.getOutputStream();
        outputStream.write(article.getImage(),0,article.getImage().length);
        outputStream.flush();
        outputStream.close();
	}
}
