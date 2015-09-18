package com.edusmartweb.edusmart.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.edusmartweb.edusmart.dao.CommonController;

import com.edusmartweb.edusmart.model.AssociateLevels;
import com.edusmartweb.edusmart.model.CourseTB;

import com.edusmartweb.edusmart.model.FacultyTb;
import com.edusmartweb.edusmart.model.SubjectLevelTB;
import com.edusmartweb.edusmart.model.UserProfileTB;

public class AssociateLevelServiceImpl {

	                                                  
	public static void associateLevelRequest(int courseID,UserProfileTB user,FacultyTb facultyTb,String levelArray[],int requestId) {
		 List<AssociateLevels> AssociateLevelsList = new ArrayList<AssociateLevels>();

		Set<SubjectLevelTB> subjectLevelTBset=new HashSet<SubjectLevelTB>();
		 CourseTB courseTB;
		 try{
			
			courseTB=(CourseTB)CommonController.getObjectById(courseID,CourseTB.class);
			int indexValue=0;
			while(levelArray.length>indexValue)
			  { 
				AssociateLevels associateLevels=new AssociateLevels();
				AssociateLevels associateLevelsTemp=new AssociateLevels();
			
				System.out.println(levelArray[indexValue]);
				
				
				List<SubjectLevelTB> subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"level='"+levelArray[indexValue]+"'  and courseTB='"+courseID+"'");
			
				
				
				if(subjectLevelTBList.size()>0)
			  {
				subjectLevelTBset.add(subjectLevelTBList.get(0));
				associateLevels.setFacultyID(facultyTb.getFacultyId());
				associateLevels.setCourseID(courseTB.getCourseId());
				
				System.out.println("subject Id inserted "+subjectLevelTBList.get(0).getSubjectId());
				
				associateLevels.setSubjectLevelID(subjectLevelTBList.get(0).getSubjectId());
				
				associateLevels.setRequestID(requestId);
				associateLevels.setUserDetailsID(user.getUserId());
				CommonController.saveOrUpdateObject(associateLevels);  
							  }
			indexValue++;
			}
		
			}catch(Exception e){e.printStackTrace();}
		
		
	}
	
	
	public static void associateLevelAcceptRequest(int courseID,UserProfileTB user,FacultyTb facultyTb,String levelArray[],int requestId) {
	
		 List<AssociateLevels> AssociateLevelsList = new ArrayList<AssociateLevels>();

			Set<SubjectLevelTB> subjectLevelTBset=new HashSet<SubjectLevelTB>();
			 CourseTB courseTB;
			 try{
				
				 //Delete previous records
				 AssociateLevels associateLevelsTemp=new AssociateLevels();
				 AssociateLevelsList=(List)CommonController.getAllObjects("from AssociateLevels where courseID='"+courseID+"' and facultyID= '"+facultyTb.getFacultyId()+"' and requestID='"+requestId+"'");
					Iterator itr=AssociateLevelsList.iterator();
					while(itr.hasNext())
					{
						 associateLevelsTemp=(AssociateLevels)itr.next();
					    CommonController.deleteObject(associateLevelsTemp.getAssociateLevelsId(), AssociateLevels.class);
					    System.out.println("Deleted Record");
					}
				
				courseTB=(CourseTB)CommonController.getObjectById(courseID,CourseTB.class);
				int indexValue=0;
				while(levelArray.length>indexValue)
				  { 
					AssociateLevels associateLevels=new AssociateLevels();
					
					System.out.println(levelArray[indexValue]);
					List<SubjectLevelTB> subjectLevelTBList=(List)CommonController.getAllObjects(SubjectLevelTB.class,"level='"+levelArray[indexValue]+"'");
				if(subjectLevelTBList.size()>0)
				  {
					subjectLevelTBset.add(subjectLevelTBList.get(0));
					associateLevels.setFacultyID(facultyTb.getFacultyId());
					associateLevels.setCourseID(courseTB.getCourseId());
					associateLevels.setSubjectLevelID(subjectLevelTBList.get(0).getSubjectId());
					associateLevels.setRequestID(requestId);
					associateLevels.setUserDetailsID(user.getUserId());
					
					CommonController.saveOrUpdateObject(associateLevels);  
					System.out.println("Save NEW Record");
					
				  }
				indexValue++;
				}
			
				}catch(Exception e){e.printStackTrace();}
	
	
	}
}
