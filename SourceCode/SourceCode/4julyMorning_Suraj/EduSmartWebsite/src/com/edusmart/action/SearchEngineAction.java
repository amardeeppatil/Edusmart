package com.edusmart.action;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.ProductTB;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchEngineAction extends ActionSupport {

	private static final long serialVersionUID = -586405481138704650L;
	private Map<String, String> inputTypes = new LinkedHashMap<String, String>();
	private List<ProductTB> products = new ArrayList<ProductTB>();
	private JSONArray productJSONArray = new JSONArray();
	
	String page;

	public Map<String, String> getInputTypes() {
		return inputTypes;
	}

	public void setInputTypes(Map<String, String> inputTypes) {
		this.inputTypes = inputTypes;
	}

	public List<ProductTB> getProducts() {
		return products;
	}

	public void setProducts(List<ProductTB> products) {
		this.products = products;
	}

	public JSONArray getProductJSONArray() {
		return productJSONArray;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public void setProductJSONArray(JSONArray productJSONArray) {
		this.productJSONArray = productJSONArray;
	}

	public String viewSearchEngine(){
		setPage("Course");
		String userType = "student";
		if("student".equals(userType)){
			setStudentCriteria();
		} else if("admin".equals(userType)){
			setAdminCriteria();
		} else if("superadmin".equals(userType)){
			setAdminCriteria();
		} else if("faculty".equals(userType)){
			setFacultyCriteria();
		}

		return "success";
	}

	public String getSearchEngineTable(){
		setPage("Course");
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String query = request.getParameter("query");
		System.out.println("1Query : " + query);

		addProducts("Student");
		setStudentCriteria();

		return "success";
	}

	@SuppressWarnings("unchecked")
	public String searchDatabase(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		String query = request.getParameter("query");
		System.out.println("Query : " + query);

		addProducts("Student");
		setStudentCriteria();

		for(ProductTB product : products) {
			JSONObject formDetailsJson = new JSONObject();
			//			formDetailsJson.put("State", product.getState());
			//			formDetailsJson.put("Category", product.getCategory());
			//			formDetailsJson.put("CategoryType", product.getCategoryType());
			//			formDetailsJson.put("Subject", product.getSubject());
			//			formDetailsJson.put("Academy", product.getAcademy());
			//			formDetailsJson.put("City", product.getCity());
			//			formDetailsJson.put("Branch", product.getBranch());
			//			formDetailsJson.put("TuitionFee", product.getTuitionFee());
			productJSONArray.add(formDetailsJson);
		}

		return "success";
	}

	private void setStudentCriteria(){
		inputTypes = new LinkedHashMap<String, String>();
		inputTypes.put("SubjectName", "SubjectName");
		inputTypes.put("AcademyName", "AcademyName");
		inputTypes.put("CityName", "CityName");
		inputTypes.put("BranchName", "BranchName");
		inputTypes.put("TuitionFee", "TuitionFee");
		addProducts("Student");
	}

	private void setFacultyCriteria(){
		inputTypes = new LinkedHashMap<String, String>();
		inputTypes.put("SubjectName", "SubjectName");
		inputTypes.put("AcademyName", "AcademyName");
		inputTypes.put("StateName", "StateName");
		inputTypes.put("CityName", "CityName");
		inputTypes.put("BranchName", "BranchName");
		inputTypes.put("TuitionFee", "TuitionFee");
	}

	private void setAdminCriteria(){
		inputTypes = new LinkedHashMap<String, String>();
		inputTypes.put("SubjectName", "SubjectName");
		inputTypes.put("FacultyName", "FacultyName");
		inputTypes.put("AcademyName", "AcademyName");
		inputTypes.put("StateName", "StateName");
		inputTypes.put("CityName", "CityName");
		inputTypes.put("BranchName", "BranchName");
		inputTypes.put("TuitionFee", "TuitionFee");
	}

	private void addProducts(String userType){
		products = new ArrayList<ProductTB>();

		List<Class<?>> list = new ArrayList<Class<?>>();
		list = CommonController.getAllObjects(ProductTB.class, "Status = 1");
		
		for(int i=0; i<list.size(); i++){
			ProductTB d = ProductTB.class.cast(list.get(i));
			products.add(d);
			System.out.println(products);
		}


		/*product1.setSubject("IDT");
		product1.setFaculty("Vishal");
		product1.setAcademy("EduSmart1");
		product1.setState("Maharashtra");
		product1.setCity("Pune");
		product1.setCategory("Coaching Class");
		product1.setCategoryType("Online Class");
		product1.setBranch("EduSmart");*/
		/*product1.setTuitionFee(1000);
		products.add(product1);*/

		/*product1.setSubject("Law");
		product1.setFaculty("Reddy");
		product1.setAcademy("EduSmart2");
		product1.setState("Maharashtra");
		product1.setCity("Mumbai");
		product1.setCategory("Coaching Class");
		product1.setCategoryType("Virtual Class");
		product1.setBranch("EduSmart");*/
		/*product1.setTuitionFee(1500);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);
		products.add(product1);*/

	}
}
