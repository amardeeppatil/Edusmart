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
			
			<s:hidden name="FormType" value="emergency"/>
			<s:hidden name="AcademyId" />
			<table class="table table-user-information">
				<tbody>
					<tr>
						<td>Emergency Information :</td>
						<td>
							<div class="form-group col-md-3">
								<label for="Name">Name :</label> 
								<input type="text" name="EFName" class="form-control" placeholder="EFName" value="<%=user.getEFName()%>"/>
								<input type="text" name="EMName" class="form-control" placeholder="EMName" value="<%=user.getEMName()%>"/>
								<input type="text" name="ELName" class="form-control" placeholder="ELName" value="<%=user.getELName()%>"/>
							</div>
							<div class="form-group col-md-3">
								<label for="EContact">Contact :</label> 
								<input type="text" name="EContact" class="form-control" placeholder="EContact" value="<%=user.getEContact()%>"/>
							</div>
							<div class="form-group col-md-3">
								<label for="EEmail">Email :</label> 
								<input type="text" name="EEmail" class="form-control" placeholder="EEmail" value="<%=user.getEEmail()%>"/>
							</div>	
							<div class="form-group col-md-3">
								<label for="ERelationship">RelationShip :</label> 
								<input type="text" name="ERelationship" class="form-control" placeholder="ERelationship" value="<%=user.getERelationship()%>"/>
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