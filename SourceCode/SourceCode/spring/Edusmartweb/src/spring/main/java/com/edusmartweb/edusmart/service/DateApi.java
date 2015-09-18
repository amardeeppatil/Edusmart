package com.edusmartweb.edusmart.service;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class DateApi {
	 int  day,month,year ;
	GregorianCalendar date = new GregorianCalendar();
	public  String  pickSystemDate(){
		 day= date.get(Calendar.DAY_OF_MONTH);
	     month = date.get(Calendar.MONTH);
	     year = date.get(Calendar.YEAR);
		 String currentFDate =year+"-"+month+"-"+day;
		return currentFDate;
	    
		}
		public static String  pickDate(String pickDate){
			
			String getDate[]=pickDate.split(" ");
			String month=getDate[1];
			int m=0;
			
			switch (month)
			{
			
			
		    case "January" :
		    				m=1;
		                  break;

		    case "February" :
		    				m=2;
		                  break;

		    case "March" :
		    				m=3;
		                  break;

		    case "April" :
		    				m=4;
		                  break;

		    case "May" :
		    				m=5;
		                  break;

		    case "June" :
		    				m=6;
		                  break;

		    case "July" :
		    				m=7;
		                  break;

		    case "August" :
		    				m=8;
		                  break;
			

		    case "September" :
		    				m=9;
		                  break;
			

		    case "October" :
		    				m=10;
		                  break;
		    case "November" :
							m=11;
							break;
		    
		    case "December" :
							m=12;
							break;
		                
		       }
		
//			String formatedDate=getDate[0]+"/"+m+"/"+getDate[2];
			String formatedDate=getDate[2]+"-"+m+"-"+getDate[0];
			System.out.println(formatedDate +" formatedDate");
			return formatedDate;
			
			}
	}


