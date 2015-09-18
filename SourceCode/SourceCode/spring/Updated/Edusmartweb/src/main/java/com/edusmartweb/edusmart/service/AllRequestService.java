package com.edusmartweb.edusmart.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.FacultyDetailsTB;
import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.SendRequestDetails;
import com.edusmartweb.edusmart.model.SubjectLevelTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.sun.org.apache.regexp.internal.recompile;

public class AllRequestService {
	private List<SendRequestDetails> PendingRequestDetailsList=new ArrayList<SendRequestDetails>();
	private List<SendRequestDetails> acceptedRequestDetailsList=new ArrayList<SendRequestDetails>();
	private List<UserProfileTB> userProfileList=new ArrayList<UserProfileTB>();
	private  List<UserProfileTB> PendingRequestUserDetails=new ArrayList<UserProfileTB>();
	private  List<UserProfileTB> acceptedRequestUserDetails=new ArrayList<UserProfileTB>();
	private  List<SubjectLevelTB> subjectLevelTBList=new ArrayList<SubjectLevelTB>(); 
	
	public Model getAllRequestList(HttpServletRequest request, Model model)
	{   
		String status="pending";
		int subjectCounter=0;
		PendingRequestUserDetails.clear();
		
		try{
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		PendingRequestDetailsList=(List)CommonController.getAllObjects(SendRequestDetails.class,"status='"+status+"' and toWhom='"+user.getUserId()+"'");
		Iterator pendingListItr=PendingRequestDetailsList.iterator();
		while(pendingListItr.hasNext())
		   {
			SendRequestDetails sendRequestDetails=(SendRequestDetails)pendingListItr.next();
			userProfileList=(List)CommonController.getAllObjects(UserProfileTB.class,"UserId='"+sendRequestDetails.getFromWho()+"'");
			PendingRequestUserDetails.add(userProfileList.get(0));
		    }
		if(pendingListItr.hasNext()){
		List <SendRequestDetails> SendRequestDetailsList=(List)CommonController.getAllObjects("select s.facultyTb from SendRequestDetails s where s.toWhom= '"+user.getUserId()+"'");
		Iterator itr=SendRequestDetailsList.iterator();
		while(itr.hasNext())
		  { subjectCounter++;
			FacultyTb facultyTb=(FacultyTb)itr.next();
		    subjectLevelTBList=(List)CommonController.getAllObjects("select sub.subjectName from SubjectLevelTB sub,FacultyDetailsTB f where sub.subjectId= f.subjectLevelID  and  f.facultyID= '"+facultyTb.getFacultyId()+"'");
			System.out.println(">>>>>"+facultyTb.getFacultyId());
			model.addAttribute("subjectLevelTBList_"+subjectCounter, subjectLevelTBList);
		  }
		}
		model.addAttribute("PendingRequestUserDetails", PendingRequestUserDetails);
		}catch(Exception e){e.printStackTrace();}
		return model;		
	}
	
	
	public Model getAllAcceptedRequestList(HttpServletRequest request, Model model)
	{   
		int subjectCounter=0;
		String status="accepted";
		acceptedRequestUserDetails.clear();
		
		try{
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		acceptedRequestDetailsList=(List)CommonController.getAllObjects(SendRequestDetails.class,"status='"+status+"' and toWhom='"+user.getUserId()+"'");
		Iterator acceptedListItr=acceptedRequestDetailsList.iterator();
		while(acceptedListItr.hasNext())
		   {
			SendRequestDetails sendRequestDetails=(SendRequestDetails)acceptedListItr.next();
			userProfileList=(List)CommonController.getAllObjects(UserProfileTB.class,"UserId='"+sendRequestDetails.getFromWho()+"'");
			acceptedRequestUserDetails.add(userProfileList.get(0));
		    }
		
		List <SendRequestDetails> SendRequestDetailsList=(List)CommonController.getAllObjects("select s.facultyTb from SendRequestDetails s where s.toWhom= '"+user.getUserId()+"'");
		Iterator itr=SendRequestDetailsList.iterator();
		while(itr.hasNext())
		  { subjectCounter++;
			FacultyTb facultyTb=(FacultyTb)itr.next();
		    subjectLevelTBList=(List)CommonController.getAllObjects("select sub.subjectName from SubjectLevelTB sub,FacultyDetailsTB f where sub.subjectId= f.subjectLevelID  and  f.facultyID= '"+facultyTb.getFacultyId()+"'");
			System.out.println(">>>>>"+facultyTb.getFacultyId());
			model.addAttribute("subjectLevelTBList_"+subjectCounter, subjectLevelTBList);
		  }
		model.addAttribute("acceptedRequestUserDetails", acceptedRequestUserDetails);
		}catch(Exception e){e.printStackTrace();}
		return model;		
	}
}
