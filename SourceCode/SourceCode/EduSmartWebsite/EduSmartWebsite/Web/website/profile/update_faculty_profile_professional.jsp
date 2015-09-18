<%@ taglib prefix="s" uri="/struts-tags"%>

<%@page import="com.edusmart.dao.*"%>
<%@page contentType="text/html" import="java.util.*"%>
<%@page import="com.edusmart.controller.CommonController"%>
<%
	UserProfileTB user = UserProfileTB.class.cast(session.getAttribute("USER"));
%>

<div class="panel-body">
	<div class="row" style="margin-left: 0px;">
		<form action="updateOrSaveFacultyProfile" role="form" method="post" enctype="multipart/form-data">
			
			<s:hidden name="AcademyId" />
			<s:hidden name="FormType" value="professionalInfo"/>
			
			<table class="table table-user-information">
				<tbody>
					<tr>
						<td>Professional Details:</td>
						<td>
							<div class="form-group col-md-3">
								<label for="ProfessionalExperience">Experience :</label> 
								<input type="text" name="ProfessionalExperience" class="form-control" placeholder="Address" value="<%=user.getProfessionalExperience()%>"/>
							</div>
							
						</td>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
				</tbody>
			</table>

			<div class="box-footer">
				<s:submit value="Submit" align="center" cssClass="btn btn-primary" />
			</div>
		</form>
	</div>
</div>