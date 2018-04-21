package db;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class HibernateTools {
	public static Configuration conf;
	public static ServiceRegistry serviceReg;
	public static SessionFactory sessionFac;
	public static Session session;
	
	

	static{
		conf = new Configuration().configure();
		serviceReg = new ServiceRegistryBuilder().applySettings(conf.getProperties()).build();
		sessionFac = conf.buildSessionFactory(serviceReg);
	}
	
	public static void closeSessionFactory(){
		sessionFac.close();
	}
	
	public static Session getSession() {
		session = sessionFac.openSession();
		return session;
	}
	
	
}
