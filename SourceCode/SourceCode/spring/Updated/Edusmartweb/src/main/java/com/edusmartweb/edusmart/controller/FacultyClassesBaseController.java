package com.edusmartweb.edusmart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.CourseTB;
import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.Product;
import com.edusmartweb.edusmart.model.ProductFormModel;
import com.edusmartweb.edusmart.model.SubjectLevelTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.model.VirtualClassProduct;
import com.edusmartweb.edusmart.service.ProductLevelService;
import com.edusmartweb.edusmart.utils.RandomPassword;


@Controller
public class FacultyClassesBaseController {
	private UserProfileTB userProfileTB;
	private Product product=new Product();
	private SubjectLevelTB subjectLevelTB=new SubjectLevelTB();
	private CourseTB courseTB=new CourseTB();
	private ProductFormModel productFormModel=new ProductFormModel();
	private List<CourseTB> courseTBList=new ArrayList<CourseTB>();
	private List<SubjectLevelTB> subjectLevelTBList= new ArrayList<SubjectLevelTB>();
	private List<Product> productList=new ArrayList<Product>();
	private List<FacultyTb> facultyList = new ArrayList<FacultyTb>();
	private FacultyTb faculty;
	private ProductLevelService productLevelService=new ProductLevelService();
	private RandomPassword randomCode=new RandomPassword();
	
	private VirtualClassProduct virtualClassProduct=new VirtualClassProduct();
	private List<VirtualClassProduct> virtualClassProductList=new ArrayList<VirtualClassProduct>();
	
	String productAutoId;
	
	// for calling faculty classes page
	
	@RequestMapping(value="facultyClassesPage")
	public String displayFacultyClassPage(Model model,HttpServletRequest request){
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
		faculty=facultyList.get(0);
		productAutoId="F"+faculty.getFacultyId()+randomCode.generateRandomPassword();
		
		model.addAttribute("productAutoId",productAutoId);
		
		model=productLevelService.getProductDetails(model,request);
		//model=productLevelService.getAllVirtualProduct(model,request);
		
		return "facultyClassesPage";
	}

	//for add Live product functionality
	
	@RequestMapping(value="saveProductValues")
	public String addProduct(@ModelAttribute("productFormModel") ProductFormModel productFormModel,HttpServletRequest request,Model model){
		try{
			System.out.println("in add product method...>>>>>>");
			
			UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
			facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
			faculty=facultyList.get(0);
			
			System.out.println("Printing Subject>>>>>>>>>>>>>>>"+productFormModel.getSubjectLevelTB().getSubjectName());
			subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"subjectName='"+productFormModel.getSubjectLevelTB().getSubjectName()+"'");
			subjectLevelTB=subjectLevelTBList.get(0);
			
			product	=productFormModel.getProduct();
			
			product.setSubjectLevelTB(subjectLevelTB);
			product.setFacultyTb(faculty);
			product.setSubjectName(subjectLevelTB.getSubjectName());
			product.setTypeOfClass("LiveClass");
			product.setStatus("unlaunch");
			CommonController.saveOrUpdateObject(product);	
				
		}
			
		catch(Exception e){

			e.printStackTrace();

		}
		model=productLevelService.getProductDetails(model, request);
		return "facultyClassesPage";
		
	}
	

	private Product tempProdect;
	
	@RequestMapping(value="editFacultyProduct")
	public String editProduct(@ModelAttribute("editFacultyLiveProduct") ProductFormModel productFormModel,HttpServletRequest request,Model model){
		
		try{
		System.out.println("editProduct>>>>>>>>>>>>>>>>>>>>>"+request.getParameter("productId"));
		int productId=Integer.valueOf(request.getParameter("productId"));
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
		faculty=facultyList.get(0);
		
		productList=(List)CommonController.getAllObjects(Product.class,"productId='"+productId+"'");
		product=productList.get(0);
		
		subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"subjectName='"+productFormModel.getSubjectLevelTB().getSubjectName()+"'");
		subjectLevelTB=subjectLevelTBList.get(0);
		//tempProdect=(Product)CommonController.getObjectById(productId,Product.class);
		tempProdect	=productFormModel.getProduct();
		tempProdect.setProductId(productId);
		tempProdect.setSubjectLevelTB(subjectLevelTB);
		tempProdect.setFacultyTb(faculty);
		tempProdect.setStatus(product.getStatus());
		tempProdect.setSubjectName(product.getSubjectName());
		
		CommonController.saveOrUpdateObject(tempProdect);
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		model=productLevelService.getProductDetails(model, request);
		return "updatedProduct";
	}
	
	@RequestMapping(value="removeProduct")
	@ResponseBody
	public void removeProduct(HttpServletRequest request,Model model){
		try{
		System.out.println("In Remove Product>>>>>>>>>>>>>>>>>>>");
		int productId;
		productId=Integer.parseInt(request.getParameter("productId"));
		CommonController.deleteObject(productId,Product.class);
		//System.out.println("deleted product Id"+productId);
		model=productLevelService.getProductDetails(model,request);
		}catch(Exception e){e.printStackTrace();}
	}
	
	/*for Save Virtual Product*/
	
	@RequestMapping(value="saveVirtualProduct")
	public String addVirtualProduct(@ModelAttribute("virtualProduct") ProductFormModel productFormModel,HttpServletRequest request,Model model){
		try{
			System.out.println("in add Virtual product method...>>>>>>");
			
			UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
			facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
			faculty=facultyList.get(0);
			
			System.out.println("Printing Subject>>>>>>>>>>>>>>>"+productFormModel.getSubjectLevelTB().getSubjectName());
			subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"subjectName='"+productFormModel.getSubjectLevelTB().getSubjectName()+"'");
			subjectLevelTB=subjectLevelTBList.get(0);
			
			product	=productFormModel.getProduct();
			
			product.setSubjectLevelTB(subjectLevelTB);
			product.setFacultyTb(faculty);
			product.setSubjectName(subjectLevelTB.getSubjectName());
			product.setTypeOfClass("VirtualClass");
			product.setStatus("unlaunch");
			CommonController.saveOrUpdateObject(product);	
			//model=productLevelService.getAllVirtualProduct(model, request);
				
		}
			
		catch(Exception e){

			e.printStackTrace();

		}
		//model=productLevelService.getProductDetails(model, request);
		return "facultyClassesPage";
		
	}

	/*for edit Virtual Product*/
	
	@RequestMapping(value="editVirtualProduct")
	public String editVirtualProduct(@ModelAttribute("VirtualProduct") ProductFormModel productFormModel,HttpServletRequest request,Model model){
		
		try{
		System.out.println("editVirtualProduct>>>>>>>>>>>>>>>>>>>>>"+request.getParameter("productId"));
		int productId=Integer.valueOf(request.getParameter("productId"));
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
		faculty=facultyList.get(0);
		
		productList=(List)CommonController.getAllObjects(Product.class,"productId='"+productId+"'");
		product=productList.get(0);
		
		subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"subjectName='"+productFormModel.getSubjectLevelTB().getSubjectName()+"'");
		subjectLevelTB=subjectLevelTBList.get(0);
		//tempProdect=(Product)CommonController.getObjectById(productId,Product.class);
		tempProdect	=productFormModel.getProduct();
		tempProdect.setProductId(productId);
		tempProdect.setSubjectLevelTB(subjectLevelTB);
		tempProdect.setFacultyTb(faculty);
		tempProdect.setTypeOfClass("VirtualClass");
		tempProdect.setStatus(product.getStatus());
		tempProdect.setSubjectName(product.getSubjectName());
		
		CommonController.saveOrUpdateObject(tempProdect);
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		model=productLevelService.getProductDetails(model, request);
		return "updateVirtualProduct";
	}
	
	/*for delete Virtual Product*/
	
	@RequestMapping(value="removeVirtualProduct")
	@ResponseBody
	public void removeVirtualProduct(HttpServletRequest request,Model model){
		try{
		System.out.println("In Remove Product>>>>>>>>>>>>>>>>>>>");
		int productId;
		productId=Integer.parseInt(request.getParameter("productId"));
		CommonController.deleteObject(productId,Product.class);
		//System.out.println("deleted product Id"+productId);
		model=productLevelService.getProductDetails(model,request);
		}catch(Exception e){e.printStackTrace();}
	}	
	
	
	/*Add Online class's*/
	
	@RequestMapping(value="saveOnlineProduct")
	public String addOnlineProduct(@ModelAttribute("onlineproduct") ProductFormModel productFormModel,HttpServletRequest request,Model model){
		try{
			System.out.println("in add Online product method...>>>>>>");
			
			UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
			facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
			faculty=facultyList.get(0);
			
			System.out.println("Printing Subject>>>>>>>>>>>>>>>"+productFormModel.getSubjectLevelTB().getSubjectName());
			subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"subjectName='"+productFormModel.getSubjectLevelTB().getSubjectName()+"'");
			subjectLevelTB=subjectLevelTBList.get(0);
			
			product	=productFormModel.getProduct();
			
			product.setSubjectLevelTB(subjectLevelTB);
			product.setFacultyTb(faculty);
			product.setSubjectName(subjectLevelTB.getSubjectName());
			product.setTypeOfClass("OnlineClass");
			product.setStatus("launch");
			CommonController.saveOrUpdateObject(product);	
				
		}
			
		catch(Exception e){

			e.printStackTrace();

		}
		model=productLevelService.getProductDetails(model, request);
		return "facultyClassesPage";
		
	}
	
	/*edit Online product*/
		
	@RequestMapping(value="editOnlineProduct")
	public String editOnlineProduct(@ModelAttribute("editOnlinePro") ProductFormModel productFormModel,HttpServletRequest request,Model model){
		
		try{
		System.out.println("editProduct>>>>>>>>>>>>>>>>>>>>>"+request.getParameter("productId"));
		int productId=Integer.valueOf(request.getParameter("productId"));
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
		faculty=facultyList.get(0);
		
		System.out.println("Printing Subject>>>>>>>>>>>>>>>"+productFormModel.getSubjectLevelTB().getSubjectName());
		subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"subjectName='"+productFormModel.getSubjectLevelTB().getSubjectName()+"'");
		subjectLevelTB=subjectLevelTBList.get(0);
		//tempProdect=(Product)CommonController.getObjectById(productId,Product.class);
		tempProdect	=productFormModel.getProduct();
		tempProdect.setProductId(productId);
		tempProdect.setSubjectLevelTB(subjectLevelTB);
		tempProdect.setFacultyTb(faculty);
		tempProdect.setSubjectName(subjectLevelTB.getSubjectName());
		tempProdect.setTypeOfClass("OnlineClass");
		tempProdect.setStatus("launch");
		CommonController.saveOrUpdateObject(tempProdect);
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		model=productLevelService.getProductDetails(model, request);
		return "updateOnlineProduct";
	}
	
	/*remove Online product*/
	
	@RequestMapping(value="removeOnlineProduct")
	@ResponseBody
	public void removeOnlineProduct(HttpServletRequest request,Model model){
		try{
		System.out.println("In Remove Product>>>>>>>>>>>>>>>>>>>");
		int productId;
		productId=Integer.parseInt(request.getParameter("productId"));
		CommonController.deleteObject(productId,Product.class);
		//System.out.println("deleted product Id"+productId);
		model=productLevelService.getProductDetails(model,request);
		}catch(Exception e){e.printStackTrace();}
	}
	
/*Add Study Material */
	
	@RequestMapping(value="saveStudyProduct")
	public String addStudyProduct(@ModelAttribute("studyProduct") ProductFormModel productFormModel,HttpServletRequest request,Model model){
		try{
			System.out.println("in add Study product method...>>>>>>");
			
			UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
			facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
			faculty=facultyList.get(0);
			
			System.out.println("Printing Subject>>>>>>>>>>>>>>>"+productFormModel.getSubjectLevelTB().getSubjectName());
			subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"subjectName='"+productFormModel.getSubjectLevelTB().getSubjectName()+"'");
			subjectLevelTB=subjectLevelTBList.get(0);
			
			product	=productFormModel.getProduct();
			
			product.setSubjectLevelTB(subjectLevelTB);
			product.setFacultyTb(faculty);
			product.setSubjectName(subjectLevelTB.getSubjectName());
			product.setTypeOfClass("StudyMaterial");
			product.setStatus("launch");
			CommonController.saveOrUpdateObject(product);	
				
		}
			
		catch(Exception e){

			e.printStackTrace();

		}
		model=productLevelService.getProductDetails(model, request);
		return "facultyClassesPage";
		
	}
	
	/*edit study Material*/
	
	@RequestMapping(value="editStudyProduct")
	public String editStudyProduct(@ModelAttribute("editStudyMaterial") ProductFormModel productFormModel,HttpServletRequest request,Model model){
		
		try{
		System.out.println("editStudyMaterial>>>>>>>>>>>>>>>>>>>>>"+request.getParameter("productId"));
		int productId=Integer.valueOf(request.getParameter("productId"));
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
		faculty=facultyList.get(0);
		
		System.out.println("Printing Subject>>>>>>>>>>>>>>>"+productFormModel.getSubjectLevelTB().getSubjectName());
		subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"subjectName='"+productFormModel.getSubjectLevelTB().getSubjectName()+"'");
		subjectLevelTB=subjectLevelTBList.get(0);
		//tempProdect=(Product)CommonController.getObjectById(productId,Product.class);
		tempProdect	=productFormModel.getProduct();
		tempProdect.setProductId(productId);
		tempProdect.setSubjectLevelTB(subjectLevelTB);
		tempProdect.setFacultyTb(faculty);
		tempProdect.setSubjectName(subjectLevelTB.getSubjectName());
		tempProdect.setTypeOfClass("StudyMaterial");
		tempProdect.setStatus("launch");
		CommonController.saveOrUpdateObject(tempProdect);
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		model=productLevelService.getProductDetails(model, request);
		return "updateStudyProduct";
	}
	
/*remove Online product*/
	
	@RequestMapping(value="removeStudyProduct")
	@ResponseBody
	public void removeStudyProduct(HttpServletRequest request,Model model){
		try{
		System.out.println("In removeStudyProduct>>>>>>>>>>>>>>>>>>>");
		int productId;
		productId=Integer.parseInt(request.getParameter("productId"));
		CommonController.deleteObject(productId,Product.class);
		//System.out.println("deleted product Id"+productId);
		model=productLevelService.getProductDetails(model,request);
		}catch(Exception e){e.printStackTrace();}
	}
	
	
	
}
