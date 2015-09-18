package com.edusmartweb.edusmart.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.edusmartweb.edusmart.controller.AcademyBaseController;

public class TempleteServiceGetMessage {
	public static String getTemplete(String propertyName) {

		String result = "";
		Properties prop = new Properties();
		String propFileName = "templete.properties";
		InputStream input = null;

		try {
			input = AcademyBaseController.class.getClassLoader().getResourceAsStream(propFileName);
			prop.load(input);
			
			result = prop.getProperty(propertyName).toString();

		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
}
