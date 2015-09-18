<%@ taglib prefix="s" uri="/struts-tags"%>

<%@page import="com.edusmart.dao.*"%>
<%@page contentType="text/html" import="java.util.*"%>
<%@page import="com.edusmart.controller.CommonController"%>
<%
	UserProfileTB user = UserProfileTB.class.cast(session
			.getAttribute("USER"));
%>

<style type="text/css">
.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}

.profile-bx {
	
}

.profile-menu {
	background-color: #fff;
}

.mrg1 {
	margin: 5px;
}

.edt-ttl {
	width: 40%;
	padding: 8px 15px;
	float: left;
	font-size: 12px;
}

.edt-ttl span {
	padding-left: 20px;
	padding-right: 20px;
}
</style>

<div class="panel-body">

	<div class="row-fluid">
		<div class="accordion" id="accordion2">
			<% if(user!=null){ %>

			<!-- Personal Information -->
			<div class="accordion-group">
				<div class="accordion-heading" style="height: 30px;">
					<span class="edt-ttl"><strong>Personal Information</strong></span>
					<a class="accordion-toggle collapsed pull-right"
						data-toggle="collapse" data-parent="#accordion2"
						href="#collapseOne"> View+ </a>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
				<div id="collapseOne" class="accordion-body collapse"
					style="height: 0px;">
					<div class="accordion-inner" id="personalInfo">
						<table class="table table-user-information">
							<tbody>
								<tr>
									<td>Name :</td>
									<td><%=user.getFName()%> <%=user.getLName()%></td>
								</tr>
								<tr>
									<td>Email Id :</td>
									<td><%=user.getEmail()%></td>
								</tr>
								<tr>
									<td>Gender:</td>
									<td><%=user.getGender()%></td>
								</tr>

								<tr>
									<td>Blood Group :</td>
									<td><%=user.getBloodGroup()%></td>
								</tr>
								<tr>
									<td>Profile Picture :</td>
									<td>
										<div class="col-md-3 col-lg-3 ">
											<%
												if (user.getProfileImage() == null) {
											%>
											<img alt="Academy Logo" src="img/default_profile_pic.png"
												class="img-circle">
											<%
												} else {
											%>
											<img alt="Academy Logo" src="<%=user.getProfileImage()%>"
												class="img-circle" style="width: 10%;">
											<%
												}
											%>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<a style="float: right;" href="#" id="updateFacultyProfile">
							Update </a>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>

			<!-- Contact Information -->

			<div class="accordion-group">
				<div class="accordion-heading" style="height: 30px;">
					<span class="edt-ttl"><strong>Contact Details</strong></span><a
						class="accordion-toggle collapsed pull-right"
						data-toggle="collapse" data-parent="#accordion2"
						href="#collapseContactInfo"> View+ </a>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
				<div id="collapseContactInfo" class="accordion-body collapse"
					style="height: 0px;">
					<div class="accordion-inner" id="contactDetails">
						<table class="table table-user-information">
							<tbody>

								<tr>
									<td>Contact Number :</td>
									<td><%=user.getContact()%></td>
								</tr>
								<tr>
									<td>Alternate Email Id :</td>
									<td><%=user.getEmail()%></td>
								</tr>

							</tbody>
						</table>
						<a style="float: right;" href="#" id="updateFacultyContactDetails">
							Update </a>
					</div>
				</div>
			</div>

			<!-- Address Details -->

			<div class="accordion-group">
				<div class="accordion-heading" style="height: 30px;">
					<span class="edt-ttl"><strong>Address Details</strong></span><a
						class="accordion-toggle collapsed pull-right"
						data-toggle="collapse" data-parent="#accordion2"
						href="#addressCollapse"> View+ </a>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
				<div id="addressCollapse" class="accordion-body collapse"
					style="height: 0px;">
					<div class="accordion-inner" id="addressDetails">
						<table class="table table-user-information">
							<tbody>
								<tr>
									<%
											Object pcountryObj = CommonController.getObjectById(user.getPCountry(), CountryTB.class);
											String PCountryName = "";
											if (pcountryObj != null) {
												PCountryName = CountryTB.class.cast(pcountryObj).getCountryName().toString();
											}
									%>
									<%
											Object pstateObj = CommonController.getObjectById(user.getPState(), StateTB.class);
											String PStateName = "";
											if (pstateObj != null) {
												PStateName = StateTB.class.cast(pstateObj).getStateName().toString();
											}
									%>
									<%
											Object ccountryObj = CommonController.getObjectById(user.getCCountry(), CountryTB.class);
											String CCountryName = "";
											if (ccountryObj != null) {
												CCountryName = CountryTB.class.cast(ccountryObj).getCountryName().toString();
											}
									%>
									<%
											Object cstateObj = CommonController.getObjectById(user.getCState(), StateTB.class);
											String CStateName = "";
											if (cstateObj != null) {
												CStateName = StateTB.class.cast(cstateObj).getStateName().toString();
											}
									%>
									<td>Current Address :</td>
									<td><%=user.getCAddress1()%>, <%=user.getCAddress2()%>,<br>
										<%=user.getCCity()%>, <%=CStateName%>, <%=CCountryName%> - <%=user.getCPincode()%></td>
								</tr>
								<tr>
									<td>Permanent Address :</td>
									<td><%=user.getPAddress1()%>, <%=user.getPAddress2()%>,<br>
										<%=user.getPCity()%>, <%=user.getPCountry()%> - <%=user.getPPincode()%></td>
								</tr>
								<tr>

								</tr>
								<tr>

								</tr>
							</tbody>
						</table>
						<a style="float: right;" href="#" id="updateFacultyProfileAddress">
							Update </a>
					</div>
				</div>
			</div>

			<!-- Emergency Contact -->

			<div class="accordion-group">
				<div class="accordion-heading" style="height: 30px;">
					<span class="edt-ttl"><strong>Emergency Contact</strong></span><a
						class="accordion-toggle collapsed pull-right"
						data-toggle="collapse" data-parent="#accordion2"
						href="#collapseEmergencyContact"> View+ </a>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
				<div id="collapseEmergencyContact" class="accordion-body collapse"
					style="height: 0px;">
					<div class="accordion-inner" id="emergencyDetails">
						<table class="table table-user-information">
							<tbody>

								<tr>
									<td>Name :</td>
									<td><%=user.getEFName() +" "+ user.getELName()%></td>
								</tr>
								<tr>
									<td>Contact No:</td>
									<td><%=user.getEContact()%></td>
								</tr>
								<tr>
									<td>Email :</td>
									<td><%=user.getEEmail()%></td>
								</tr>
								<tr>
									<td>Relationship :</td>
									<td><%=user.getERelationship()%></td>
								</tr>
							</tbody>
						</table>
						<a style="float: right;" href="#"
							id="updateFacultyProfileEmergency"> Update </a>
					</div>
				</div>
			</div>


			<!-- Professional Details -->

			<div class="accordion-group">
				<div class="accordion-heading" style="height: 30px;">
					<span class="edt-ttl"><strong>Professional Details</strong></span><a
						class="accordion-toggle collapsed pull-right"
						data-toggle="collapse" data-parent="#accordion2"
						href="#collapseProfessionalDetails"> View+ </a>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
				<div id="collapseProfessionalDetails"
					class="accordion-body collapse" style="height: 0px;">
					<div class="accordion-inner" id="professionalDetails">
						<table class="table table-user-information">
							<tbody>

								<tr>
									<td>Professional Experience :</td>
									<td><%=user.getProfessionalExperience()%></td>
								</tr>
								<tr>
									<td>Video:</td>
								</tr>
								<tr>
									<td>Wallpaper :</td>
								</tr>
								
							</tbody>
						</table>
						<a style="float: right;" href="#" id="updateFacultyProfessional">
							Update </a>
					</div>
				</div>
			</div>

			<!-- Bank Details -->

			<div class="accordion-group">
				<div class="accordion-heading" style="height: 30px;">
					<span class="edt-ttl"><strong>Bank Details</strong></span><a
						class="accordion-toggle collapsed pull-right"
						data-toggle="collapse" data-parent="#accordion2"
						href="#updateFacultyBankDetails"> View+ </a>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
				<div id="updateFacultyBankDetails" class="accordion-body collapse"
					style="height: 0px;">
					<div class="accordion-inner" id="bankDetails">
						<table class="table table-user-information">
							<tbody>

								<tr>
									<td>Bank Name:</td>
									<td><%=user.getBankName()%></td>
								</tr>
								<tr>
									<td>Account Type:</td>
									<td><%=user.getAccountType()%></td>
								</tr>
								<tr>
									<td>IFSC Code:</td>
									<td><%=user.getIfscCode()%></td>
								</tr>
								<tr>
									<td>Account No:</td>
									<td><%=user.getAccountNumber()%></td>
								</tr>
							</tbody>
						</table>
						<a style="float: right;" href="#" id="updateFacultyBankDetails">
							Update </a>
					</div>
				</div>
			</div>
			<%} %>
		</div>
	</div>
</div>
