<%@ taglib prefix="s" uri="/struts-tags"%>

<%@page import="com.edusmart.dao.*"%>
<%@page contentType="text/html" import="java.util.*"%>
<%@page import="com.edusmart.controller.CommonController"%>
<%
	UserProfileTB user = UserProfileTB.class.cast(session
			.getAttribute("USER"));
%>

<div class="panel-body">
	<div class="row" style="margin-left: 0px;">
		<form action="updateOrSaveFacultyProfile" role="form" method="post"
			enctype="multipart/form-data">

			<s:hidden name="AcademyId" />
			<s:hidden name="FormType" value="bank" />

			<table class="table table-user-information">
				<tbody>
					<tr>
						<td>
							<div class="form-group col-md-3">
								<label for="BankName">Bank Name :</label> <input type="text"
									name="BankName" class="form-control" placeholder="Bank Name"
									value="<%=user.getBankName()%>" />
							</div>

						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group col-md-3">
								<label for="AccountType">Account Type:</label> <input
									type="text" name="AccountType" class="form-control"
									placeholder="Bank Name" value="<%=user.getAccountType()%>" />
							</div>

						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group col-md-3">
								<label for="IfscCode">IFSC Code:</label> <input type="text"
									name="IfscCode" class="form-control" placeholder="Ifsc Code"
									value="<%=user.getIfscCode()%>" />
							</div>

						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group col-md-3">
								<label for="AccountNumber">Account No:</label> <input
									type="text" name="AccountNumber" class="form-control"
									placeholder="Bank Name" value="<%=user.getAccountNumber()%>" />
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