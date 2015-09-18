<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.edusmart.dao.UserProfileTB"%>
<% UserProfileTB user = UserProfileTB.class.cast(session.getAttribute("USER")); %>

<section class="sidebar">
	<!-- Sidebar user panel -->
	<div class="user-panel">
		<div class="pull-left image">
			<img src="img/avatar3.png" class="img-circle" alt="User Image" />
		</div>
		<div class="pull-left info">
			<p>
				Hello,
				<%= user.getUserName().toString() %></p>

			<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
		</div>
	</div>
	<!-- search form -->
	<!-- <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form> -->
	<!-- /.search form -->
	<!-- sidebar menu: : style can be found in sidebar.less -->
	<ul class="sidebar-menu">
		<li><s:url id="viewDashboardURL" action="viewDashboard">

			</s:url> <s:a href="%{viewDashboardURL}">
				<i class="fa fa-dashboard"></i> Dashboard</s:a></li>

		<%-- <%
			if (user.getUserType() == 0) {
		%> --%>
		<li class="treeview"><a href="#"> <i
				class="fa fa-fw fa-gears"></i> <span>Masters</span> <i
				class="fa pull-right fa-angle-left"></i>
		</a>
			<ul class="treeview-menu">
				<li><s:url id="viewCountriesURL" action="viewCountries">

					</s:url> <s:a href="%{viewCountriesURL}">
						<i class="fa fa-angle-double-right"></i> Country</s:a></li>

				<li><s:url id="viewStatesURL" action="viewStates">

					</s:url> <s:a href="%{viewStatesURL}">
						<i class="fa fa-angle-double-right"></i> State</s:a></li>

				<li><s:url id="viewCitiesURL" action="viewCities">

					</s:url> <s:a href="%{viewCitiesURL}">
						<i class="fa fa-angle-double-right"></i> City</s:a></li>

				<li><s:url id="viewCourseURL" action="viewCourses">

					</s:url> <s:a href="%{viewCourseURL}">
						<i class="fa fa-angle-double-right"></i> Course Of Study</s:a></li>

				<li><s:url id="viewLevelOfStudyURL" action="viewLevels">

					</s:url> <s:a href="%{viewLevelOfStudyURL}">
						<i class="fa fa-angle-double-right"></i> Level Of Study</s:a></li>

				<li><s:url id="viewModeOfCoachingURL" action="viewMode">

					</s:url> <s:a href="%{viewModeOfCoachingURL}">
						<i class="fa fa-angle-double-right"></i>Mode Of Coaching</s:a></li>

				<li><s:url id="viewCourseSubjectURL"
						action="viewCourseSubjects">

					</s:url> <s:a href="%{viewCourseSubjectURL}">
						<i class="fa fa-angle-double-right"></i>Subject</s:a></li>

				<li><s:url id="viewBatchURL" action="viewBatches">

					</s:url> <s:a href="%{viewBatchURL}">
						<i class="fa fa-angle-double-right"></i> Batch</s:a></li>

				<li><s:url id="viewFeesURL" action="viewFees">

					</s:url> <s:a href="%{viewFeesURL}">
						<i class="fa fa-angle-double-right"></i> Fee Structure</s:a></li>

				<li><s:url id="viewInstallmentsURL" action="viewInstallments">

					</s:url> <s:a href="%{viewInstallmentsURL}">
						<i class="fa fa-angle-double-right"></i> Installment Structure</s:a></li>

				<li><s:url id="viewHolidaysURL" action="viewHolidays">

					</s:url> <s:a href="%{viewHolidaysURL}">
						<i class="fa fa-angle-double-right"></i> Holiday</s:a></li>

				<li><s:url id="viewDesignationsURL" action="viewDesignations">

					</s:url> <s:a href="%{viewDesignationsURL}">
						<i class="fa fa-angle-double-right"></i> Designation</s:a></li>

				<li><s:url id="viewEducationsURL" action="viewEducations">

					</s:url> <s:a href="%{viewEducationsURL}">
						<i class="fa fa-angle-double-right"></i> Education</s:a></li>

				<li><s:url id="viewMediaSourceURL" action="viewMediaSource">

					</s:url> <s:a href="%{viewMediaSourceURL}">
						<i class="fa fa-angle-double-right"></i> Media Source</s:a></li>

				<li><s:url id="viewCallStatusURL" action="viewCallStatus">

					</s:url> <s:a href="%{viewCallStatusURL}">
						<i class="fa fa-angle-double-right"></i>Call Status</s:a></li>

				<li><s:url id="viewExamTermssURL" action="viewExamTerms">

					</s:url> <s:a href="%{viewExamTermssURL}">
						<i class="fa fa-angle-double-right"></i>Exam Term</s:a></li>

				<li><s:url id="viewImageURL" action="viewImage">

					</s:url> <s:a href="%{viewImageURL}">
						<i class="fa fa-angle-double-right"></i>Image</s:a></li>
				
				<li><s:url id="viewProductCategoryURL" action="viewProductCategory">
				
					</s:url> <s:a href="%{viewProductCategoryURL}">
						<i class="fa fa-angle-double-right"></i>Product Categories</s:a></li>
				
				<li><s:url id="viewProductSubCategoryURL" action="viewProductSubCategory">
				
					</s:url> <s:a href="%{viewProductSubCategoryURL}">
						<i class="fa fa-angle-double-right"></i>Product SubCategories</s:a></li>

			</ul></li>
		<%-- <%
			}
		%> --%>

		<li><s:url id="viewBranchesURL" action="viewBranches">

			</s:url> <s:a href="%{viewBranchesURL}">
				<i class="fa fa-angle-double-right"></i> Branch</s:a></li>

		<li><s:url id="viewEnquiryURL" action="viewEnquiries">

			</s:url> <s:a href="%{viewEnquiryURL}">
				<i class="fa fa-fw fa-info-circle"></i> Inquiry</s:a></li>

		<li><s:url id="viewAdmissionsURL" action="viewAdmissions">

			</s:url> <s:a href="%{viewAdmissionsURL}">
				<i class="fa fa-fw fa-book"></i>Admission</s:a></li>

		<li><s:url id="viewStudentURL" action="viewStudents">

			</s:url> <s:a href="%{viewStudentURL}">
				<i class="fa fa-fw fa-user"></i>Student</s:a></li>

		<li><s:url id="viewEmployeesURL" action="viewEmployees">

			</s:url> <s:a href="%{viewEmployeesURL}">
				<i class="fa fa-fw fa-group"></i>Employee</s:a></li>

		<li class="treeview"><a href="#"> <i
				class="fa fa-fw fa-gears"></i> <span>Faculty</span> <i
				class="fa pull-right fa-angle-left"></i></a>
			<ul class="treeview-menu">
				<li><s:url id="viewFacultiesURL" action="viewFaculties">

					</s:url> <s:a href="%{viewFacultiesURL}">
						<i class="fa fa-fw fa-group"></i>Faculties</s:a></li>
						
				<li><s:url id="viewFacultySubjectURL" action="viewFacultySubjects">

					</s:url> <s:a href="%{viewFacultySubjectURL}">
						<i class="fa fa-fw fa-group"></i>Faculty Subject</s:a></li>		
			</ul></li>

		<li><s:url id="viewCouncellorsURL" action="viewCouncellors">

			</s:url> <s:a href="%{viewCouncellorsURL}">
				<i class="fa fa-fw fa-phone"></i>Councellor</s:a></li>

		<li><s:url id="viewAcademyAccountsURL" action="viewAcademyAccounts">
			</s:url> <s:a href="%{viewAcademyAccountsURL}">
				<i class="fa fa-fw fa-phone"></i>Academy Account</s:a></li>

		<li class="treeview"><a href="#"> <i
				class="fa fa-fw fa-gears"></i> <span>Reports</span> <i
				class="fa pull-right fa-angle-left"></i></a>
			<ul class="treeview-menu">
				<li><s:url id="viewInquiryReportsURL" action="viewInquiryReports"></s:url> <s:a href="%{viewInquiryReportsURL}">
						<i class="fa fa-angle-double-right"></i> Inquiry</s:a></li>
			</ul></li>
			
		<li class="treeview"><a href="#"> <i class="fa fa-fw fa-gears"></i> <span>Search Engine</span> 
			<i class="fa pull-right fa-angle-left"></i></a>
			<ul class="treeview-menu">
				<li><s:url id="viewSearchEngineURL" action="viewSearchEngine">
					</s:url> <s:a href="%{viewSearchEngineURL}"><i class="fa fa-fw fa-phone"></i>Search Page</s:a></li>
				<li><s:url id="viewSearchRoleSettingURL" action="viewSearchRoleSetting">
					</s:url> <s:a href="%{viewSearchRoleSettingURL}"><i class="fa fa-fw fa-phone"></i>Role Setting</s:a></li>	
			</ul></li>	
							
	</ul>
</section>
<!-- /.sidebar -->
