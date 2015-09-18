package com.edusmart.controller;

import com.edusmart.utils.HibernateUtil;

public class LoginController extends HibernateUtil {

	/*@SuppressWarnings("unchecked")
	public UserLoginTB checkUser(UserLoginTB u){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		
		List<UserLoginTB> logins = new ArrayList<UserLoginTB>();
		try {
			logins = session.createQuery("from UserLoginTB where username='" + u.getUserName() + "' and password = '" +
											u.getPassword() + "'").list();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		session.getTransaction().commit();
		if(logins.size() !=0){
			return logins.get(0);
		} else {
			return null;
		}
	}*/
	
}
