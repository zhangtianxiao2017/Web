package movie;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import db.HibernateTools;
import db.Movie;

public class MovieDelete  extends ActionSupport{
	private String movieid;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("MovieDelete"+movieid);
		
		Session s1 = HibernateTools.getSession();
		
		Transaction tx = s1.beginTransaction();
		
		String hql = "from Movie as m where m.id = ?";
		
	    Query q = s1.createQuery(hql);
	    
	    q.setString(0, movieid);
		
	    List<Movie> list = q.list();
	    
	    Movie m2 = null;
	    
	    for(Movie m : list)
	    {
	    	m2 = m;
	    }
	    
	    s1.delete(m2);
	    
	    tx.commit();
	    
	    s1.close();
	    
		
		return SUCCESS;
	}
	
	public String getMovieid() {
		return movieid;
	}
	public void setMovieid(String movieid) {
		this.movieid = movieid;
	}
}
