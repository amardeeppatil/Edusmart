package com.edusmartweb.edusmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class ReportAccessTB {

	@Id
	@GeneratedValue
	int Id;
	String RoleName;
	String ColoumnName;
	String TableName;
	int Status;	
}
