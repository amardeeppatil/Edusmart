<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.edusmart.dao.*"%>
<%@page contentType="text/html" import="java.util.*"%>
<%@page import="com.edusmart.controller.CommonController"%>
<%
	UserProfileTB user = UserProfileTB.class.cast(session
			.getAttribute("USER"));
%>
<style>
.dropdown-menu {
	margin-top: 5px;
}

.btn {
	display: inline-block;
	padding: 4px 12px;
	margin-bottom: 0;
	font-size: 14px;
	line-height: 20px;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #333333;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	background-color: #f5f5f5;
	background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff),
		to(#e6e6e6));
	background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',
		endColorstr='#ffe6e6e6', GradientType=0);
	border-color: #e6e6e6 #e6e6e6 #bfbfbf;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled= false);
	border: 1px solid #cccccc;
	border-bottom-color: #b3b3b3;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px
		rgba(0, 0, 0, .05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px
		rgba(0, 0, 0, .05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px
		rgba(0, 0, 0, .05);
}

a {
	color: #0088cc;
	text-decoration: none;
}

user agent stylesheeta:-webkit-any-link {
	color: -webkit-link;
	text-decoration: underline;
	cursor: auto;
}

Inherited from div.span2.text-center
.text-center {
	text-align: center;
}

Inherited from body
body {
	margin: 0;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 20px;
	color: #333333;
	background-color: #ffffff;
}

Inherited from html
html {
	font-size: 100%;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
}
</style>
<script>
	$(document).ready(function() {

		/* $(".timepicker").timepicker({
			showInputs : false
		}); 

		$("#fromDatetimepicker1").datetimepicker({
			format : 'MM/DD/YYYY'
		});
		$("#toDatetimepicker1").datetimepicker({
			format : 'MM/DD/YYYY'
		});
		$("#fromDatetimepicker1").on(
				"dp.change",
				function(e) {
					$('#toDatetimepicker1').data("DateTimePicker")
							.setMinDate(e.date);
				});
		$("#toDatetimepicker1").on(
				"dp.change",
				function(e) {
					$('#fromDatetimepicker1').data("DateTimePicker")
							.setMaxDate(e.date);
				});*/

		$(".nav-tabs li").click(function() {
			$("#editLI").addClass("hidden");
		});

		/* $('#eduTable').dataTable({
			"bPaginate" : true,
			"bLengthChange" : true,
			"bFilter" : true,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : true
		}); */

		$("body").on("click", "div#addCourse", function() {
			$.ajax({
				type : "GET",
				url : "addNewProduct",
				success : function(data) {
					$("#profileContainer").html(data);
				}
			});
		});

		$("body").on("click", "div#addProduct", function() {
			$.ajax({
				type : "GET",
				url : "addNewProduct",
				success : function(data) {
					$("#profileContainer").html(data);
				}
			});
		});
	});

	function submitForm(formId) {
		$.ajax({
			type : "POST",
			url : "addProduct",
			data : $("#" + formId).serialize(), // serializes the form's elements.
			success : function(data) {
				location.reload();
			}
		});
	}

	function updateForm(ProductId) {
		$.ajax({
			type : "POST",
			url : "getProductById.action?ProductId=" + ProductId,
			success : function(data) {
				$("#productList").html(data);
			}
		});
	}

	function getProductSubCategories(formId) {
		var ProductCategoryId = $("#" + formId + " select#productCategory")
				.val();
		$.getJSON('getProductSubCategories', {
			ProductCategoryId : ProductCategoryId
		}, function(jsonResponse) {
			var select = $("#" + formId + ' #productSubCategory');
			select.find('option').remove();
			$.each(jsonResponse.productSubCategoryMap, function(key, value) {
				$('<option>').val(key).text(value).appendTo(select);
			});
		});
	}

	function getCourseLevels(formId) {
		var CourseId = $("#" + formId + " select#courses").val();
		$.getJSON('getLevels', {
			CourseId : CourseId
		}, function(jsonResponse) {
			var select = $("#" + formId + ' #levels');
			select.find('option').remove();
			$.each(jsonResponse.levelMap, function(key, value) {
				$('<option>').val(key).text(value).appendTo(select);
			});
			getCourseSubjects(formId);
		});
	}

	function getCourseSubjects(formId) {
		var LevelId = $("#" + formId + " select#levels").val();
		$.getJSON('getSubjects', {
			LevelId : LevelId
		}, function(jsonResponse) {
			var select = $("#" + formId + ' #subjects');
			select.find('option').remove();
			$.each(jsonResponse.subjectMap, function(key, value) {
				$('<option>').val(key).text(value).appendTo(select);
			});
		});
	}
</script>


<div class="container-fluid">
	<div class="row-fluid">

		<div class="span9" style="margin-top: 20px;">
			<div class="hero-unit">

				<div class="span3" style="height: 180px;">
					<%
					if (user!= null) {
						if (user.getProfileImage() == null) {
					%>
					<img alt="Profile Image" src="img/default_profile_pic.png"
						class="profileImg"
						style="width: 167px; height: 167px; position: relative; bottom: 0px; padding-left:10px;">
					<%
						} else {
					%>
					<img alt="Profile Image" src="<%=user.getProfileImage()%>"
						class="profileImg"
						style="width: 167px; height: 171px; position: relative; bottom: 0px; padding-left:10px;">
					<%
						}
					}
					%>

				</div>
				<% if(user!=null && user.getUserType() < 4 && user.getUserType() > 0){ %>
				<div class="span5 pull-right"
					style="height: 40px; bottom: -135px; position: relative;">
					<div id="addProduct" class="btn btn-primary mrg1">New
						Product&raquo;</div>
				</div>
				<% } %>

				<div class="clearfix"></div>
				<div class="row-fluid profile-menu">
					<ul class="nav nav-pills offset2"
						style="margin-bottom: 0 !important;">
						<li><a href="#">Timeline</a></li>
						<li><s:a href="facultyProfile">About</s:a></li>
						<li class="active"><s:a action="facultyProducts">Products</s:a></li>
						<li><a href="#">Courses</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">More <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
					</ul>
				</div>
			</div>

			<div id="profileContainer">
				<div class="panel-body">
					<!-- left column -->
					<div class="row" style="margin-left: 0px;">
						<!-- general form elements -->
						<div class="row-fluid">
							<div class="span12" style="margin: 0px !important;">
								<%
									int i = 1;
								%>
								<s:iterator value="products" var="p">
									<%
										if (i % 6 == 1) {
									%>
									<div class="span2 text-center" style="margin-left: 0px;">
										<%
											} else {
										%>
										<div class="span2 text-center">
											<%
												}
											%>

											<div class="edu-pro">
											<h4>
													<s:property value="key.ProductName" />
												</h4>
												<p>
													<% if((request.getAttribute("key.StartDate").toString()).contains("/")){%>
														<s:property value="key.StartDate" />
													<% } else {%>
														&nbsp;
													<%} %>
												</p>
												<p>
													<s:property value="key.Duration" />
													(min)
												</p>
												<p>
													<s:property value="key.FromTime" />
													to
													<s:property value="key.ToTime" />
												</p>
												<p>
													Rs:
													<s:property value="key.TuitionFee" />
												</p>
												<br>
											</div>
										</div>

										<%
											i++;
										%>
									
								</s:iterator>
							</div>
							Total :<s:property value="total" />
						</div>
					</div>
				</div>
			</div>
			<!--/row-->
		</div>

		<div class="span3" style="margin-top: 20px;">
			<div class="well sidebar-nav">
				<ul class="nav nav-list">
					<li class="nav-header"><h4>Testimonials</h4></li>
				</ul>
			</div>
			<!--/.well -->
		</div>
		<!--/span-->
	</div>
	<!--/row-->

</div>
