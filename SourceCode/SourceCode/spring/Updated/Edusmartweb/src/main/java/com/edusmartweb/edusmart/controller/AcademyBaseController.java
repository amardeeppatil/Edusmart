package com.edusmartweb.edusmart.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Calendar;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AboutTB;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.NotificationTb;
import com.edusmartweb.edusmart.model.Product;
import com.edusmartweb.edusmart.model.ProductFormModel;
import com.edusmartweb.edusmart.model.SendRequestDetails;
import com.edusmartweb.edusmart.model.SubjectLevelTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.AcademyLevelService;
import com.edusmartweb.edusmart.service.AllRequestService;
import com.edusmartweb.edusmart.service.AssociateLevelServiceImpl;
import com.edusmartweb.edusmart.service.FacultyCourseLevelServiceImpl;
import com.edusmartweb.edusmart.service.ProductLevelService;
import com.edusmartweb.edusmart.service.SearchService;
import com.edusmartweb.edusmart.service.TempleteServiceGetMessage;
import com.edusmartweb.edusmart.utils.RandomPassword;
import com.edusmartweb.edusmart.utils.SendMail;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Properties;

@Controller
public class AcademyBaseController {
	private UserProfileTB userProfileTB;
	private AcademyTB academy;
	private Calendar calendar = Calendar.getInstance();
	private DateFormat dateFormat = new SimpleDateFormat("d MMM yyyy hh:mm a");
	private Calendar cal = Calendar.getInstance();
	private String pickdate;
	private List<AboutTB> aboutUsPostList = new ArrayList<AboutTB>();
	private List<Product> liveAndVirtualProductList = new ArrayList<Product>();
	private List<Product> studyAndOnlineProductList = new ArrayList<Product>();
	private AboutTB tempDesc;
	private AcademyLevelService academyServiceobj = new AcademyLevelService();
	private SendMail mail = new SendMail();
	private SendRequestDetails sendRequestDetailsTemp=new SendRequestDetails();
	@RequestMapping(value = "academyProfile")
	public String timeLinePage(HttpServletRequest request, Model model) {
		System.out.println(" tine LinePage method");
		try {
			academyServiceobj.listAllInfo(request, model);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "academyProfile";

	}

	@RequestMapping("loadLevels")
	@ResponseBody
	public Map<String,List<SubjectLevelTB>> loadLevelsFaculty(HttpServletRequest request)
	{
		int facultyIdRequested=Integer.valueOf(request.getParameter("facultyId"));
	    return FacultyCourseLevelServiceImpl.getAllCourseLevelData(request,facultyIdRequested);
	}
	
	
	@RequestMapping(value = "/saveAcademyPost")
	public String aboutPage(@ModelAttribute("postData") AboutTB aboutTB,
			HttpServletRequest request, Model model) {

		UserProfileTB user = UserProfileTB.class.cast(request.getSession()
				.getAttribute("USER"));
		try {
			System.out.println(" About page method");
			String qquery3 = "academyTB = '" + user.getAcademy().getAcademyId()
					+ "'  ORDER BY aboutId DESC";
			String qquery = "AcademyId = '" + user.getAcademy().getAcademyId()
					+ "'";
			String qquery2 = "academyTB = '" + user.getAcademy().getAcademyId()
					+ "'";
			List<AcademyTB> academyPostList = (List) CommonController
					.getAllObjects(AcademyTB.class, qquery);

			if (academyPostList.size() > 0) {
				academy = AcademyTB.class.cast(academyPostList.get(0));
				aboutTB.setAcademyTB(academy);
				pickdate = dateFormat.format(calendar.getTime());
				aboutTB.setDate(pickdate);
				CommonController.saveOrUpdateObject(aboutTB);
			}
			aboutUsPostList = (List) CommonController.getAllObjects(
					AboutTB.class, qquery3);
			model = academyServiceobj.listAllInfo(request, model);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "academyProfile";
	}

	@RequestMapping(value = "editPost")
	public String editAcademyPost(@ModelAttribute("editData") AboutTB aboutTB,
			HttpServletRequest request, Model model) {
		try {
			aboutUsPostList = (List) CommonController.getAllObjects(
					AboutTB.class, "aboutId='" + aboutTB.getAboutId() + "'");

			if (aboutUsPostList.size() > 0) {
				tempDesc = (AboutTB) aboutUsPostList.get(0);
				aboutTB.setDate(tempDesc.getDate());
				// aboutTB.setUserProfileTB(tempDesc.getUserProfileTB());
				aboutTB.setAcademyTB(tempDesc.getAcademyTB());
			}

			System.out.println("About Description" + aboutTB.getAboutId());

			CommonController.saveOrUpdateObject(aboutTB);

		} catch (Exception e) {
			e.printStackTrace();
		}
		academyServiceobj.listAllInfo(request, model);
		return "editAcademyPost";
	}

	@RequestMapping(value = "removePost")
	@ResponseBody
	public void removePost(HttpServletRequest request, Model model) {
		try {
			int aboutId;
			aboutId = Integer.parseInt(request.getParameter("aboutId"));
			CommonController.deleteObject(aboutId, AboutTB.class);
			academyServiceobj.listAllInfo(request, model);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "removePostByFaculty")
	@ResponseBody
	public void removePostFaculty(HttpServletRequest request, Model model) {
		try {
			int aboutId;
			aboutId = Integer.parseInt(request.getParameter("aboutId"));
			CommonController.deleteObject(aboutId, AboutTB.class);
			// academyServiceobj.listAllInfo(request, model);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private AllRequestService allRequestService = new AllRequestService();
	private List<UserProfileTB> userProfileList = new ArrayList<UserProfileTB>();

	@RequestMapping("viewFacultyRequest")
	public String facultyRequests(Model model, HttpServletRequest request) {
		try{
			model=allRequestService.getAllRequestList(request,model);
			model=allRequestService.getAllAcceptedRequestList(request,model);
			
			model=FacultyCourseLevelServiceImpl.getAllCourseLevel(model,request,2);// provide facultyId Dynamically using ajax call
					
			//model.addAttribute("PendingRequestUserDetails",userProfileList);
			//System.out.println("hello ");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "facultyTab";
	}

	ProductLevelService productLevelService = new ProductLevelService();

	@RequestMapping(value = "academyClasses")
	public String displayAcademyClasses(Model model, HttpServletRequest request) {
		
		try{
		System.out.println("Academy Classes");

		model = productLevelService.getLaunchProduct(model,request);
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return "viewAcademyClasses";

	}
	
	
	@RequestMapping(value = "productPreviewAcademy")
	
	public String displayProductPreviewAcademy(Model model,
			HttpServletRequest request) {
		try{
		
		System.out.println("displayProductPreviewAcademy");
		int userId=Integer.valueOf(request.getParameter("userId"));
		
		model.addAttribute("userId",userId);
		
		model = productLevelService.getAcceptedProductDetails(model, request,userId);
		}
		catch(Exception e){
			
			e.printStackTrace();
			
		}
		return "productPreviewByAcademy";	
	}
	
	
	
	
	private List<SendRequestDetails> PendingRequestDetailsList = new ArrayList<SendRequestDetails>();
	//private NotificationTb notificationTb = new NotificationTb();
	private String status = "pending";

	@RequestMapping(value = "mailByFaculty")
	@ResponseBody
	public void responseByFaculty(HttpServletRequest request)
			throws AddressException, MessagingException {
		try {

			String userMail = request.getParameter("userMail");
			int userId = Integer.valueOf(request.getParameter("userId"));

			UserProfileTB user = UserProfileTB.class.cast(request.getSession()
					.getAttribute("USER"));
			PendingRequestDetailsList = (List) CommonController.getAllObjects(
					SendRequestDetails.class, "status='" + status
							+ "' and fromWho='" + userId + "'");
			SendRequestDetails sendRequestDetails = PendingRequestDetailsList
					.get(0);
			sendRequestDetails.setStatus("accepted");
			CommonController.saveOrUpdateObject(sendRequestDetails);
			System.out.println("Status is change");

			mail.mailsend(userMail, TempleteServiceGetMessage
					.getTemplete("acceptFacultyRequest"));
			
			/*notificationTb
					.setNotificationDate(dateFormat.format(cal.getTime()));
			notificationTb.setNotificationContent(TempleteServiceGetMessage
					.getTemplete("acceptFacultyRequest"));
			notificationTb.setNotificationTo(userId);
			notificationTb.setNotificationBy(user.getFName());
			notificationTb.setUserProfileTB(user);
			CommonController.saveOrUpdateObject(notificationTb);*/
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private SubjectLevelTB subjectLevelTB = new SubjectLevelTB();
	private FacultyTb facultyTb = new FacultyTb();
	private RandomPassword randomCode=new RandomPassword();
	@RequestMapping(value = "publishProduct")
	public String publishProductByAcademy(
			@ModelAttribute("productFormData") Product product, Model model,
			HttpServletRequest request) {
		UserProfileTB user = UserProfileTB.class.cast(request.getSession()
				.getAttribute("USER"));
		System.out.println("Publish Product");
		int productId = Integer.valueOf(request.getParameter("productId"));
		int subjectId = Integer
				.valueOf(request.getParameter("subjectLevelRef"));
		int facultyId = Integer.valueOf(request.getParameter("facultyRef"));

		facultyTb.setFacultyId(facultyId);
		subjectLevelTB.setSubjectId(subjectId);
		String autoProductId=product.getProductAutoId();
		String productAutoId=autoProductId+"P"+randomCode.generateRandomPassword();
		product.setProductAutoId(productAutoId);
		product.setSubjectLevelTB(subjectLevelTB);
		product.setFacultyTb(facultyTb);
		product.setTypeOfClass("LiveClass");
				
		product.setStatus("launch");
		CommonController.saveOrUpdateObject(product);
		int launchProductUserId=Integer.valueOf(request.getParameter("userId"));
		model = productLevelService.getAcceptedProductDetails(model, request,launchProductUserId);
		

		// TempleteServiceGetMessage templeteServiceGetMessage=new
		// TempleteServiceGetMessage();
		
		/*notificationTb.setNotificationDate(dateFormat.format(cal.getTime()));
		notificationTb.setNotificationContent(TempleteServiceGetMessage
				.getTemplete("productAdd"));
		notificationTb.setNotificationTo(1);
		notificationTb.setNotificationBy(user.getFName());
		notificationTb.setUserProfileTB(user);
		CommonController.saveOrUpdateObject(notificationTb);*/

		System.out.println(request.getParameter("productId"));

		return "productPreviewByAcademy";
	}
	

	private Product tempProdect;
	private List<SubjectLevelTB> subjectLevelTBList = new ArrayList<SubjectLevelTB>();
	private List<FacultyTb> facultyList = new ArrayList<FacultyTb>();

	/*edit fully Live product*/
	
	@RequestMapping(value = "editProductData")
	public String editProduct(
			@ModelAttribute("editproductForm") Product product,
			HttpServletRequest request, Model model) {

		try {
			System.out.println("editProduct>>>>>>>>>>>>>>>>>>>>>"
					+ request.getParameter("productId"));
			int productId = Integer.valueOf(request.getParameter("productId"));

			UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
			/*facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
			facultyTb = facultyList.get(0);*/
			/*subjectLevelTBList = (List) CommonController.getAllObjects(SubjectLevelTB.class, "subjectName='" + product.getSubjectLevelTB().getSubjectName() + "'");
			subjectLevelTB = subjectLevelTBList.get(0);*/
			
			int subjectId = Integer.valueOf(request.getParameter("subjectLevelRef"));
			int facultyId = Integer.valueOf(request.getParameter("facultyRef"));
			subjectLevelTB.setSubjectId(subjectId);
			facultyTb.setFacultyId(facultyId);
			tempProdect=product;
			tempProdect.setProductId(productId);
			tempProdect.setSubjectLevelTB(subjectLevelTB);
			tempProdect.setFacultyTb(facultyTb);
			//tempProdect.setSubjectName(subjectLevelTB.getSubjectName());
			tempProdect.setStatus("launch");
			tempProdect.setTypeOfClass("LiveClass");
			CommonController.saveOrUpdateObject(tempProdect);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "updateFinalLiveProduct";
	}
	
		
	
  /*for virtual product publish*/
	
	@RequestMapping(value = "publishVirtualProduct")
	public String publishVirtualProductByAcademy(
			@ModelAttribute("virtualProduct") Product product, Model model,
			HttpServletRequest request) {
		
		int userId=Integer.valueOf(request.getParameter("userId"));
		System.out.println(userId);
		
		UserProfileTB user = UserProfileTB.class.cast(request.getSession()
				.getAttribute("USER"));
		System.out.println("Publish Product");
		int productId = Integer.valueOf(request.getParameter("productId"));
		int subjectId = Integer
				.valueOf(request.getParameter("subjectLevelRef"));
		int facultyId = Integer.valueOf(request.getParameter("facultyRef"));

		facultyTb.setFacultyId(facultyId);
		subjectLevelTB.setSubjectId(subjectId);
		product.setSubjectLevelTB(subjectLevelTB);
		product.setFacultyTb(facultyTb);
		product.setTypeOfClass("VirtualClass");
		
		product.setStatus("launch");
		CommonController.saveOrUpdateObject(product);
		int launchProductUserId=Integer.valueOf(request.getParameter("userId"));
		model = productLevelService.getAcceptedProductDetails(model, request,launchProductUserId);

		// TempleteServiceGetMessage templeteServiceGetMessage=new
		// TempleteServiceGetMessage();
		
		/*notificationTb.setNotificationDate(dateFormat.format(cal.getTime()));
		notificationTb.setNotificationContent(TempleteServiceGetMessage
				.getTemplete("productAdd"));
		notificationTb.setNotificationTo(1);
		notificationTb.setNotificationBy(user.getFName());
		notificationTb.setUserProfileTB(user);
		CommonController.saveOrUpdateObject(notificationTb);*/

		System.out.println(request.getParameter("productId"));

		return "productPreviewByAcademy";
	}
	
/*edit fully Virtual product*/
	
	@RequestMapping(value = "editVirtualProductData")
	public String editVirtualProduct(
			@ModelAttribute("editVirtualproduct") Product product,
			HttpServletRequest request, Model model) {

		try {
			System.out.println("editProduct>>>>>>>>>>>>>>>>>>>>>"
					+ request.getParameter("productId"));
			int productId = Integer.valueOf(request.getParameter("productId"));

			UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
			/*facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+user.getUserId()+"'");
			facultyTb = facultyList.get(0);*/
			/*subjectLevelTBList = (List) CommonController.getAllObjects(SubjectLevelTB.class, "subjectName='" + product.getSubjectLevelTB().getSubjectName() + "'");
			subjectLevelTB = subjectLevelTBList.get(0);*/
			
			int subjectId = Integer.valueOf(request.getParameter("subjectLevelRef"));
			int facultyId = Integer.valueOf(request.getParameter("facultyRef"));
			subjectLevelTB.setSubjectId(subjectId);
			facultyTb.setFacultyId(facultyId);
			tempProdect=product;
			tempProdect.setProductId(productId);
			tempProdect.setSubjectLevelTB(subjectLevelTB);
			tempProdect.setFacultyTb(facultyTb);
			//tempProdect.setSubjectName(subjectLevelTB.getSubjectName());
			tempProdect.setStatus("launch");
			tempProdect.setTypeOfClass("VirtualClass");
			CommonController.saveOrUpdateObject(tempProdect);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		model = productLevelService.getLaunchProduct(model,request);
		return "updateFinalVirtualProduct";
	}
	
	
	@RequestMapping(value="addToCart")
	@ResponseBody
	public String productAddToCart(HttpServletRequest request,HttpSession cartSession){
		
		try{
		int productId=Integer.parseInt(request.getParameter("productId"));
		
		Product product=(Product)CommonController.getObjectById(productId,Product.class);
		if(product.getTypeOfClass().equals("LiveClass")||product.getTypeOfClass().equals("VirtualClass"))
			{
			liveAndVirtualProductList.add(product);
			}
		if(product.getTypeOfClass().equals("OnlineClass")||product.getTypeOfClass().equals("StudyMaterial"))
			{
			 studyAndOnlineProductList.add(product);
			}
		cartSession.setAttribute("liveAndVirtualProductList", liveAndVirtualProductList);
		cartSession.setAttribute("studyAndOnlineProductList", studyAndOnlineProductList);
		}catch(Exception e){e.printStackTrace();}
		return "already";
	}

	@RequestMapping(value="removeFinalProduct")
	@ResponseBody
	public void removeProduct(HttpServletRequest request,Model model){
		try{
		
		int productId;
		productId=Integer.parseInt(request.getParameter("productId"));
		CommonController.deleteObject(productId,Product.class);
		model=productLevelService.getProductDetails(model,request);
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	@RequestMapping("confirmFaculty")
	public String acceptFaculty(HttpServletRequest request) 
	{
		try{
			
	int userIdOfRequestedFaculty=Integer.valueOf(request.getParameter("userId"));
	UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
	PendingRequestDetailsList=(List)CommonController.getAllObjects(SendRequestDetails.class,"status='"+status+"' and fromWho='"+userIdOfRequestedFaculty+"'");
	SendRequestDetails sendRequestDetails=PendingRequestDetailsList.get(0);
	sendRequestDetails.setStatus("accepted");
	sendRequestDetailsTemp=(SendRequestDetails)CommonController.saveOrUpdateObject(sendRequestDetails);
	
	
	
	facultyList=(List)CommonController.getAllObjects(FacultyTb.class,"userProfileTB='"+userIdOfRequestedFaculty+"'");
	facultyTb=facultyList.get(0);
	String CASubjectArray[]=null,CSSubjectArray[]=null,CMASubjectArray[]=null;
  
	
	System.out.println("CA"+request.getParameter("CA")+" CS "+request.getParameter("CS"));
	
	
	
	if(request.getParameter("CA")!=null && request.getParameter("CA").equals("CA"))
    { 
    	CSSubjectArray=request.getParameterValues("subjectLevelTB.CAlevelName");
    	AssociateLevelServiceImpl.associateLevelAcceptRequest(1,user,facultyTb,CSSubjectArray,sendRequestDetailsTemp.getRequestId());
    }
	if(request.getParameter("CS")!=null && request.getParameter("CS").equals("CS"))
    {
    	CASubjectArray=request.getParameterValues("subjectLevelTB.CSlevelName");
    	AssociateLevelServiceImpl.associateLevelAcceptRequest(2,user,facultyTb,CASubjectArray,sendRequestDetailsTemp.getRequestId());
        
    }
    
    if(request.getParameter("CMA")!=null && request.getParameter("CMA").equals("CMA"))
    {
    	CMASubjectArray=request.getParameterValues("subjectLevelTB.CMAlevelName");
    	AssociateLevelServiceImpl.associateLevelAcceptRequest(3,user,facultyTb,CMASubjectArray,sendRequestDetailsTemp.getRequestId());
    }
	
		}catch(Exception e){e.printStackTrace();}
		
	/*	return "viewFacultyRequest";*/
		return "academyProfile";
	}
	
}
