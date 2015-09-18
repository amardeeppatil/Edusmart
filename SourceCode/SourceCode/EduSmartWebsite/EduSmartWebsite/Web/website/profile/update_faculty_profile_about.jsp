<%@ taglib prefix="s" uri="/struts-tags"%>

<%@page import="com.edusmart.dao.*"%>
<%@page contentType="text/html" import="java.util.*"%>
<%@page import="com.edusmart.controller.CommonController"%>
<%
	UserProfileTB user = UserProfileTB.class.cast(session
			.getAttribute("USER"));
%>

<style type="text/css">
.row {
	margin-left: 0px !important;
}
</style>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$("#addMoreWallpaper")
								.click(
										function() {
											var wallpaperDiv = '<div class="form-group col-md-3 multiWallpapers">'
													+ '<img alt="Academy Wallpaper" src="img/default_profile_pic.png" class="img-circle"/>'
													+ '<input type="file" name="wallpaperFileUpload" onchange="readURL(this);"/>'
													+ '<input type="button" value="Remove" class="deleteWallPaper"/>'
													+ '</div>';
											$("#wallpapers").append(
													wallpaperDiv);
										});

						$("body").on("click", ".deleteWallPaper", function() {
							$(this).parent("div.multiWallpapers").remove();
						});

					});

	function readProfileURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$(".profileImg").attr('src', e.target.result).width(150)
						.height(150);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$(input).parent(".multiWallpapers").children("img").attr('src',
						e.target.result).width(150).height(150);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<div class="panel-body">
	<div class="row" style="margin-left: 0px;">
		<form action="updateOrSaveFacultyProfile" role="form" method="post"
			enctype="multipart/form-data">

			<s:hidden name="FormType" value="about" />
			<s:hidden name="AcademyId" />
			<table class="table table-user-information">
				<tbody>
					<tr>
						<td>Name :</td>
						<td><input type="text" class="form-control" name="FName"
							value="<%=user.getFName()%>" placeholder="Enter First Name">
							<input type="text" class="form-control"
							value="<%=user.getMName()%>" placeholder="Enter Middel Name"
							name="MName"> <input type="text" class="form-control"
							placeholder="Enter Last Name" value="<%=user.getLName()%>"
							name="LName"></td>
					</tr>
					<tr>
						<td>Email Id :</td>
						<td><input req="yes" type="text" class="form-control"
							name="Email" value="<%=user.getEmail()%>"
							placeholder="Enter Email Id"></td>
					</tr>
					<tr>
						<td>Blood Group :</td>
						<td><div class="col-xs-4 form-group">
								<label for="Married">* Blood Group :</label> <select req="yes"
									class="form-control" name="BloodGroup">
									<%
									String bg = user.getBloodGroup();
									if("A+".equalsIgnoreCase(bg)) {
									%>
									<option selected="selected" value="A+">A+</option>
									<option value="B+">B+</option>
									<option value="O+">O+</option>
									<option value="AB+">AB+</option>
									<option value="A-">A-</option>
									<option value="B-">B-</option>
									<option value="O-">O-</option>
									<option value="AB-">AB-</option>
									<%
									} else if("B+".equalsIgnoreCase(bg)) {
									%>
									<option value="A+">A+</option>
									<option selected="selected" value="B+">B+</option>
									<option value="O+">O+</option>
									<option value="AB+">AB+</option>
									<option value="A-">A-</option>
									<option value="B-">B-</option>
									<option value="O-">O-</option>
									<option value="AB-">AB-</option>
									<%
									} else if("AB+".equalsIgnoreCase(bg)) {
									%>
									<option selected="selected" value="A+">A+</option>
									<option value="B+">B+</option>
									<option value="O+">O+</option>
									<option selected="selected" value="AB+">AB+</option>
									<option value="A-">A-</option>
									<option value="B-">B-</option>
									<option value="O-">O-</option>
									<option value="AB-">AB-</option>
									<% }else if("O+".equalsIgnoreCase(bg)) {
									%>
									<option value="A+">A+</option>
									<option value="B+">B+</option>
									<option selected="selected" value="O+">O+</option>
									<option value="AB+">AB+</option>
									<option value="A-">A-</option>
									<option value="B-">B-</option>
									<option value="O-">O-</option>
									<option value="AB-">AB-</option>
									<%
									}else if("A-".equalsIgnoreCase(bg)) {
									%>
									<option value="A+">A+</option>
									<option value="B+">B+</option>
									<option value="O+">O+</option>
									<option value="AB+">AB+</option>
									<option selected="selected" value="A-">A-</option>
									<option value="B-">B-</option>
									<option value="O-">O-</option>
									<option value="AB-">AB-</option>
									<%
									}else if("B-".equalsIgnoreCase(bg)) {
									%>
									<option value="A+">A+</option>
									<option value="B+">B+</option>
									<option value="O+">O+</option>
									<option value="AB+">AB+</option>
									<option value="A-">A-</option>
									<option selected="selected" value="B-">B-</option>
									<option value="O-">O-</option>
									<option value="AB-">AB-</option>
									<%
									} else if("AB-".equalsIgnoreCase(bg)) {
									%>
									<option value="A+">A+</option>
									<option value="B+">B+</option>
									<option value="O+">O+</option>
									<option value="AB+">AB+</option>
									<option value="A-">A-</option>
									<option value="B-">B-</option>
									<option value="O-">O-</option>
									<option selected="selected" value="AB-">AB-</option>
									<%
									}else if("O-".equalsIgnoreCase(bg)) {
									%>
									<option value="A+">A+</option>
									<option value="B+">B+</option>
									<option value="O+">O+</option>
									<option value="AB+">AB+</option>
									<option value="A-">A-</option>
									<option value="B-">B-</option>
									<option selected="selected" value="O-">O-</option>
									<option value="AB-">AB-</option>
									<%
									} else {
									%>
									<option value="A+">A+</option>
									<option value="B+">B+</option>
									<option value="O+">O+</option>
									<option value="AB+">AB+</option>
									<option value="A-">A-</option>
									<option value="B-">B-</option>
									<option value="O-">O-</option>
									<option value="AB-">AB-</option>
									<%} %>
								</select>
							</div></td>
					</tr>
					<tr> <td>
						<%
							if (user.getGender().equalsIgnoreCase("Male")) {
						%>
						<!-- radio -->
						Gender :
						<input type="radio" name="Gender" id="optionsRadios1" value="male" checked> Male<input type="radio" name="Gender" id="optionsRadios2"value="female"> Female
					    <%
							} else {
						%>
						<!-- radio -->
						* Gender :
						<input type="radio" name="Gender" id="optionsRadios1" value="male">	Male<input type="radio" name="Gender" id="optionsRadios2" value="female" checked> Female

						<%
							}
						%>
						</td>
					</tr>
					<tr>
						<td>Profile Picture :</td>
						<td>
							<% if (user.getProfileImage() == null) {%> <img alt="Profile Image"
							src="img/default_profile_pic.png" class="profileImg"
							style="width: 15%;"> <%} else { %> <img alt="Profile Image"
							src="<%=user.getProfileImage()%>" class="profileImg"
							style="width: 15%;"> <%} %> <s:file name="profileFileUpload"
								onchange="readProfileURL(this);" />
						</td>
					</tr>
				</tbody>
			</table>



			<div class="box-footer">
				<s:submit value="Submit" align="center" cssClass="btn btn-primary" />
				<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
			</div>
		</form>
	</div>
</div>