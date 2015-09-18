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
			<s:hidden name="FormType" value="address"/>
			
			<table class="table table-user-information">
				<tbody>
					<tr>
						<td>Current Address :</td>
						<td>
							<div class="form-group col-md-3">
								<label for="Address">Address1 :</label> 
								<input type="text" name="CAddress1" class="form-control" placeholder="Address" value="<%=user.getCAddress1()%>"/>
							</div>
							<div class="form-group col-md-3">
								<label for="Address">Address2 :</label> 
								<input type="text" name="CAddress2" class="form-control" placeholder="Address" value="<%=user.getCAddress2()%>"/>
							</div>
							<div class="form-group col-md-3">
								<label for="Address">City :</label> 
								<input type="text" name="CCity" class="form-control" placeholder="City" value="<%=user.getCCity()%>"/>
							</div>	
						</td>
						
						
						<td>Permenat Address :</td>
						<td>
							<div class="form-group col-md-3">
								<label for="Address">Address1 :</label> 
								<input type="text" name="PAddress1" class="form-control" placeholder="Address" value="<%=user.getPAddress1()%>"/>
							</div>
							<div class="form-group col-md-3">
								<label for="Address">Address2 :</label> 
								<input type="text" name="PAddress2" class="form-control" placeholder="Address" value="<%=user.getPAddress2()%>"/>
							</div>
							<div class="form-group col-md-3">
								<label for="Address">City :</label> 
								<input type="text" name="PCity" class="form-control" placeholder="City" value="<%=user.getPCity()%>"/>
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