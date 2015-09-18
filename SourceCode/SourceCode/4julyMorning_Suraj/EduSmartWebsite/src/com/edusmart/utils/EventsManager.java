package com.edusmart.utils;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.dhtmlx.planner.DHXEv;
import com.dhtmlx.planner.DHXEvent;
import com.dhtmlx.planner.DHXEventsManager;

public class EventsManager extends DHXEventsManager {

	public EventsManager(HttpServletRequest request) {
		super(request);
	}
	
	public Iterable<DHXEv> getEvents(){
		ArrayList<DHXEv> events = new ArrayList<DHXEv>();
		
		DHXEvent ev1 = new DHXEvent();
		ev1.setId(1);
		ev1.setStart_date("01/23/2013 05:00");
		ev1.setEnd_date("01/23/2013 09:00");
		ev1.setText("Demo event #1111");
		
		events.add(ev1);
		
		return events;
	}
	

}
