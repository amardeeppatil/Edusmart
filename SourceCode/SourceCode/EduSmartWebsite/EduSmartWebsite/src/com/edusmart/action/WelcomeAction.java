package com.edusmart.action;

import com.opensymphony.xwork2.ActionSupport;

public class WelcomeAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	String page;

	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}

	public String displayHome(){
		setPage("Home");
		return "success";
	}	

}
