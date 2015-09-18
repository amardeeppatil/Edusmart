package com.edusmart.action;

import javax.servlet.http.HttpServletRequest;

import com.edusmart.utils.RoseIndiaCaptcha;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public  class CaptchaAction  extends ActionSupport {
	
	private static final long serialVersionUID = 4270026022780430258L;

	public String execute() throws Exception {
		HttpServletRequest request  = (HttpServletRequest) ActionContext.getContext().get(org.apache.struts2.StrutsStatics.HTTP_REQUEST);
		javax.servlet.http.HttpSession session = request.getSession();
		String parm = request.getParameter("j_captcha_response");
		String c= (String)session.getAttribute(RoseIndiaCaptcha.CAPTCHA_KEY) ;
		System.out.println(c + " = " + parm);
		if(!parm.equals(c) ){
			addActionError("Invalid Code! Please try again!");
			return ERROR;
		}else{
			return SUCCESS;
		}
	}
}