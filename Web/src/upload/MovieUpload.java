package upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import db.Movie;


public class MovieUpload extends ActionSupport{
	
	
	private String moviename;
	private File moviepicture;
	private String moviecontent;
	private String moviepicturetype;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(moviename +"------\n"+ moviecontent +"-----\n"+ moviepicture);
		System.out.println(moviepicturetype + "1");
		
		String [] names = moviepicturetype.split("\\\\");
		
		String name = names[names.length-1];
		
		System.out.println(name);
		
		ActionContext act = ActionContext.getContext();
		String real = ServletActionContext.getServletContext().getRealPath("/upload");
		System.out.println(real);
		try{
		
		File sf = new File(real,name);
		
		FileInputStream fi = new FileInputStream(moviepicture);
		FileOutputStream fo = new FileOutputStream(sf);
		byte [] buff = new byte[100];
		int tem = 0;
		while((tem=fi.read(buff)) != -1)
		{
			fo.write(buff, 0, tem);
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		try{
		Configuration conf = new Configuration().configure();
		@SuppressWarnings("deprecation")
		ServiceRegistry service = new ServiceRegistryBuilder().applySettings(conf.getProperties()).build();
		
		SessionFactory session = conf.buildSessionFactory(service);
		
		Session sess = session.openSession();
		
		Transaction tx = sess.beginTransaction();
		
		Movie m = new Movie();
		
		m.setMovieName(moviename);
		m.setPicName(name);
		m.setComment(moviecontent);
		
		sess.save(m);
		tx.commit();
		
		sess.close();
		session.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String getMoviepicturetype() {
		return moviepicturetype;
	}

	public void setMoviepicturetype(String moviepicturetype) {
		this.moviepicturetype = moviepicturetype;
	}

	public File getMoviepicture() {
		return moviepicture;
	}

	public void setMoviepicture(File moviepicture) {
		this.moviepicture = moviepicture;
	}

	public String getMoviename() {
		return moviename;
	}

	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}

	public String getMoviecontent() {
		return moviecontent;
	}

	public void setMoviecontent(String moviecontent) {
		this.moviecontent = moviecontent;
	}


}
