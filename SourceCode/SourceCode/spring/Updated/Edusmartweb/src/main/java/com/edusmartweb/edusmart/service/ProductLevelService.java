package com.edusmartweb.edusmart.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.Product;
import com.edusmartweb.edusmart.model.ProductFormModel;
import com.edusmartweb.edusmart.model.SendRequestDetails;
import com.edusmartweb.edusmart.model.SubjectLevelTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.model.VirtualClassProduct;
import com.edusmartweb.edusmart.utils.RandomPassword;

public class ProductLevelService {
	
	private SendRequestDetails sendRequestDetails=new SendRequestDetails();
	private SubjectLevelTB subjectLevelTB=new SubjectLevelTB();
	private List<Product> liveProductList=new ArrayList<Product>();
	private List<Product> virtualProductList=new ArrayList<Product>();
	private List<Product> onlineProductList=new ArrayList<Product>();
	private List<Product> studyProductList=new ArrayList<Product>();
	private Product product=new Product();
	private ProductFormModel productFormModel=new ProductFormModel();
	private FacultyTb faculty;
	private List<FacultyTb> facultyList = new ArrayList<FacultyTb>();
	private List<SendRequestDetails> SendRequestDetailsList = new ArrayList<SendRequestDetails>();
	
	
	
	public Model getProductDetails(Model model,HttpServletRequest request) {
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		
		String typeOfClass="LiveClass";
		String status="unlaunch";
				
		//facultyList=(List)CommonController.getAllObjects("from FacultyTb f where f.userProfileTB='"+userId+"'");
		facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
		faculty=facultyList.get(0);
				
		liveProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"' and status='"+status+"' and facultyTb='"+faculty.getFacultyId()+"'    ORDER BY productId DESC");
		model.addAttribute("liveProductList", liveProductList);
		
		typeOfClass="VirtualClass";
		status="unlaunch";
		
		virtualProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"' and status='"+status+"' and facultyTb='"+faculty.getFacultyId()+"'    ORDER BY productId DESC");
		model.addAttribute("virtualProductList", virtualProductList);
		
		typeOfClass="OnlineClass";
		String onlineStatus="launch";
		onlineProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"' and status='"+onlineStatus+"' and facultyTb='"+faculty.getFacultyId()+"'    ORDER BY productId DESC");
		model.addAttribute("onlineProductList", onlineProductList);
		
		typeOfClass="StudyMaterial";
		String studyStatus="launch";
		
		studyProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"' and status='"+studyStatus+"' and facultyTb='"+faculty.getFacultyId()+"'    ORDER BY productId DESC");
		model.addAttribute("studyProductList", studyProductList);
		
		return model;
		
	}
	

	String status="";
	
	String productAutoId;
	private RandomPassword randomCode=new RandomPassword();
	
	
	/*for  product in Academy*/
	
	public  Model  getAcceptedProductDetails(Model model,HttpServletRequest request,int userId) {
		
     	status="accepted";
     	String typeOfClass="LiveClass";
     	String productStatus="unlaunch";
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		SendRequestDetailsList=(List)CommonController.getAllObjects(SendRequestDetails.class,"toWhom='"+user.getUserId()+"' and status='"+status+"'");
		sendRequestDetails=SendRequestDetailsList.get(0);
		facultyList=(List)CommonController.getAllObjects("from FacultyTb f where f.userProfileTB='"+userId+"'");
		faculty=facultyList.get(0);
		liveProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"'  and facultyTb='"+faculty.getFacultyId()+"'");//and status='"+productStatus+"'
				
		
		model.addAttribute("productList", liveProductList);
		
		typeOfClass="VirtualClass";
		
		virtualProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"' and status='"+productStatus+"' and facultyTb='"+faculty.getFacultyId()+"'    ORDER BY productId DESC");
		model.addAttribute("virtualProductList", virtualProductList);
			
		return model;
		
	}
	
	public List getLiveProductList(Model model,int userId){
		String typeOfClass="LiveClass";
		facultyList=(List)CommonController.getAllObjects("from FacultyTb f where f.userProfileTB='"+userId+"'");
		faculty=facultyList.get(0);
		
		liveProductList=(List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"'  and facultyTb='"+faculty.getFacultyId()+"'");
		//model.addAttribute("liveProductList", liveProductList);
		return liveProductList;
		
	}
	
	
	
	public  Model  getLaunchProduct(Model model,HttpServletRequest request) {
		
     	String productStatus="launch";
     	
     	String typeOfClass="LiveClass";
     	liveProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"' and status='"+productStatus+"'");
     	
     	typeOfClass="VirtualClass";
     	virtualProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"' and status='"+productStatus+"'");
     	
     	typeOfClass="OnlineClass";
     	onlineProductList = (List) CommonController.getAllObjects("from Product where typeOfClass='"+typeOfClass+"' and status='"+productStatus+"'");
     	model.addAttribute("liveProductList", liveProductList);
     	model.addAttribute("virtualProductList", virtualProductList);
     	model.addAttribute("onlineProductList", onlineProductList);
     	return model;
	}

}
