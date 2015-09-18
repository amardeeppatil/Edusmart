package com.edusmartweb.edusmart.dao;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.edusmartweb.edusmart.utils.HibernateUtil;



public class CommonController extends com.edusmartweb.edusmart.utils.HibernateUtil {

	public static Object saveOrUpdateObject(Object _object){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        try {
        	session.saveOrUpdate(_object);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		session.flush(); 
		session.getTransaction().commit();
		return _object;
	}

	public static int getCountMaxMinObject(String query){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		Query q=session.createQuery(query);  
	    Object obj = q.list().get(0);
	    int result = Integer.parseInt(obj.toString());
		session.flush(); 
		session.getTransaction().commit();
		return result;
	}  


	@SuppressWarnings("unchecked")
	public static List<Class<?>> getAllObjects(Class<?> _class, String query){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<Class<?>> objects = new ArrayList<Class<?>>();
		try {
			if(query != null){
				//9Object[] arrayOfTables = session.getSessionFactory().getAllClassMetadata().keySet().toArray();
				
				objects = session.createQuery("from " + _class.getSimpleName() + " where " + query).list();
			} else {
				objects = session.createQuery("from " + _class.getSimpleName()).list();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return objects;
	}
	
	@SuppressWarnings("unchecked")
	public static List<Class<?>> getAllObjects(String query){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<Class<?>> objects = new ArrayList<Class<?>>();
		try {
			if(query != null){
				objects = session.createQuery(query).list();
			} 
		} catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return objects;
	}

	public static void deleteObject(int objectId, Class<?> _class) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		try {
			Object object = (Object) session.get(_class, objectId);
			session.delete(object);
		} catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
	}
	
	/*public static void updateObject(int objectId, Class<?> _class) {
		Session session = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		try {
			Object object = (Object) session.get(_class, objectId);
			session.delete(object);
		} catch(Exception e) {
			e.printStackTrace();
		}
		t.commit();
		
	}*/

	public static Object getObjectById(int objectId, Class<?> _class) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		Object object = new Object();
		try {
			object = (Object) session.get(_class, objectId);
		} catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return object;
	}
	
	public static Object getObjectById(String objectId, Class<?> _class) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		Object object = new Object();
		try {
			object = (Object) session.get(_class, objectId);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(objectId);
		
		session.getTransaction().commit();
		return object;
	}
	
	public static boolean checkObjectQuery(String query) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		try {
			if(session.createQuery(query).list().size() != 0){
				session.getTransaction().commit();
				return true;
			} else {
				session.getTransaction().commit();
				return false;
			}
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	public static List<Class<?>> getObjectByQuery(String query){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<Class<?>> objects = new ArrayList<Class<?>>();
		try {
			if(query != null){
				objects = session.createQuery(query).list();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		session.flush();
		session.getTransaction().commit();
		return objects;
	}
	
	@SuppressWarnings("unchecked")
	public static List<Class<?>> getAllObjectsByQuery(String query){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<Class<?>> objects = new ArrayList<Class<?>>();
		try {
			if(query != null){
				objects = session.createQuery(query).list();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		session.flush(); 
		session.getTransaction().commit();
		return objects;
	}
	
}
