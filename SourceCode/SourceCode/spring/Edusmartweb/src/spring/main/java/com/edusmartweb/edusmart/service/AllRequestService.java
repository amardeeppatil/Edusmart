package com.edusmartweb.edusmart.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.SendRequestDetails;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.sun.org.apache.regexp.internal.recompile;

public class AllRequestService {
	private List<SendRequestDetails> PendingRequestDetailsList=new ArrayList<SendRequestDetails>();
	private List<UserProfileTB> userProfileList=new ArrayList<UserProfileTB>();
	private  List<UserProfileTB> PendingRequestUserDetails=new ArrayList<UserProfileTB>();
	String status="pending";
	public List getAllRequestList(HttpServletRequest request)
	{   PendingRequestUserDetails.clear();
		
		try{
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		PendingRequestDetailsList=(List)CommonController.getAllObjects(SendRequestDetails.class,"status='"+status+"' and toWhom='"+user.getUserId()+"'");
		Iterator pendingListItr=PendingRequestDetailsList.iterator();
		while(pendingListItr.hasNext()){
			SendRequestDetails sendRequestDetails=(SendRequestDetails)pendingListItr.next();
			userProfileList=(List)CommonController.getAllObjects(UserProfileTB.class,"UserId='"+sendRequestDetails.getFromWho()+"'");
			PendingRequestUserDetails.add(userProfileList.get(0));
		}
		
		//model.addAttribute("PendingRequestDetailsList", PendingRequestUserDetails);
		System.out.println("data "+PendingRequestUserDetails.size());
		}catch(Exception e){e.printStackTrace();}
		return PendingRequestUserDetails;		
	}
}
