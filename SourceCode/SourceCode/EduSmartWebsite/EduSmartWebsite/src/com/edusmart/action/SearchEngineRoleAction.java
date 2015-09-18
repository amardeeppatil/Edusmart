package com.edusmart.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchEngineRoleAction extends ActionSupport {

	private static final long serialVersionUID = 3571988392796345226L;
	private JSONArray roleJSONArray = new JSONArray();
	private JSONArray productValuesArray = new JSONArray();
	
	public JSONArray getProductValuesArray() {
		return productValuesArray;
	}
	public void setProductValuesArray(JSONArray productValuesArray) {
		this.productValuesArray = productValuesArray;
	}
	public JSONArray getRoleJSONArray() {
		return roleJSONArray;
	}
	public void setRoleJSONArray(JSONArray roleJSONArray) {
		this.roleJSONArray = roleJSONArray;
	}
	
	public String viewSearchEngineRoles(){
		setProductValues();
		return "success";
	}

	public String getUserSearchEngineRoles(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String userType = request.getParameter("userType");
		System.out.println(userType);
		setProductValues();
		if("student".equals(userType)){
			setStudentCriteria();
		} else if("academy".equals(userType)){
			setAdminCriteria();
		} else if("edusmart".equals(userType)){
			setAdminCriteria();
		} else if("faculty".equals(userType)){
			setFacultyCriteria();
		}

		return "success";
	}
	
	public String updateUserSearchEngineRoles(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String userType = request.getParameter("userType");
		String assignedValues = request.getParameter("assignedValues");
		System.out.println("User type = " + userType + " & its search engine roles = " + assignedValues);
		return "success";
	}
	
	@SuppressWarnings("unchecked")
	private void setProductValues(){
		JSONObject productValuesJson = new JSONObject();
		productValuesJson.putIfAbsent("Subject", "Subject");
		productValuesJson.putIfAbsent("Academy", "Academy");
		productValuesJson.putIfAbsent("City", "City");
		productValuesJson.putIfAbsent("Branch", "Branch");
		productValuesJson.putIfAbsent("TuitionFee", "Tuition Fee");
		productValuesJson.putIfAbsent("State", "State");
		productValuesJson.putIfAbsent("Category", "Category");
		productValuesJson.putIfAbsent("CategoryType", "Category Type");	
		productValuesArray.add(productValuesJson);
	}
	
	@SuppressWarnings("unchecked")
	private void setStudentCriteria(){
		JSONObject formDetailsJson = new JSONObject();
		formDetailsJson.put("Subject", "Subject");
		formDetailsJson.put("Academy", "Academy");
		formDetailsJson.put("City", "City");
		formDetailsJson.put("Branch", "Branch");
		formDetailsJson.put("TuitionFee", "Tuition Fee");
		roleJSONArray.add(formDetailsJson);		
	}

	@SuppressWarnings("unchecked")
	private void setFacultyCriteria(){
		JSONObject formDetailsJson = new JSONObject();
		formDetailsJson.put("Subject", "Subject");
		formDetailsJson.put("Academy", "Academy");
		formDetailsJson.put("City", "City");
		formDetailsJson.put("Branch", "Branch");
		formDetailsJson.put("TuitionFee", "Tuition Fee");
		roleJSONArray.add(formDetailsJson);
	}

	@SuppressWarnings("unchecked")
	private void setAdminCriteria(){
		JSONObject formDetailsJson = new JSONObject();
		formDetailsJson.put("Subject", "Subject");
		formDetailsJson.put("Academy", "Academy");
		formDetailsJson.put("Faculty", "Faculty");
		formDetailsJson.put("State", "State");
		formDetailsJson.put("City", "City");
		formDetailsJson.put("Branch", "Coaching Center");
		formDetailsJson.put("TuitionFee", "Tuition Fee");
		formDetailsJson.put("Category", "Category");
		roleJSONArray.add(formDetailsJson);
	}

}
