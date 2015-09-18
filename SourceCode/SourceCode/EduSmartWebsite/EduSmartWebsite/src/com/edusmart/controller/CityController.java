package com.edusmart.controller;

import com.edusmart.utils.HibernateUtil;

public class CityController extends HibernateUtil {

	/*@SuppressWarnings("unchecked")
	public static List<CountryTB> getCountries(){

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<CountryTB> countries = new ArrayList<CountryTB>();
		try {
			countries = session.createQuery("from CountryTB where Status = 1").list();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return countries;
	}*/

	/*@SuppressWarnings("unchecked")
	public static List<StateTB> getAllStates(){

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<StateTB> states = new ArrayList<StateTB>();
		try {
			states = session.createQuery("from StateTB").list();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return states;
	}*/

	/*@SuppressWarnings("unchecked")
	public static List<StateTB> getStates(String countryID){

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<StateTB> states = new ArrayList<StateTB>();
		try {
			if(countryID != null){
				states = session.createQuery("from StateTB where CountryId = " + Integer.parseInt(countryID)).list();
			} else {
				states = session.createQuery("from StateTB").list();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return states;
	}*/

	/*@SuppressWarnings("unchecked")
	public static List<City> getCities(String stateID){

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<City> cities = new ArrayList<City>();
		try {
			if(stateID != null){
				cities = session.createQuery("from City where StateId = " + stateID).list();
			} else {
				cities = session.createQuery("from City").list();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return cities;
	}*/

	/*@SuppressWarnings("unchecked")
	public static List<City> getAllCities(){

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
		List<City> cities = new ArrayList<City>();
		try {
			cities = session.createQuery("from City").list();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		session.getTransaction().commit();
		return cities;
	}*/

}
