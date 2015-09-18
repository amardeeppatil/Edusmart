<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.edusmart.dao.*"%>
<%@page import="com.edusmart.action.*"%>
<script>
	$(document).ready(function() {

		$(".timepicker").timepicker({
            showInputs: false
        });
		
		$("#fromDatetimepicker1").datetimepicker({
			format: 'MM/DD/YYYY'
	      });
		$("#toDatetimepicker1").datetimepicker({
			format: 'MM/DD/YYYY'
	      });
		$("#fromDatetimepicker1").on("dp.change",function (e) {
            $('#toDatetimepicker1').data("DateTimePicker").setMinDate(e.date);
         });
         $("#toDatetimepicker1").on("dp.change",function (e) {
            $('#fromDatetimepicker1').data("DateTimePicker").setMaxDate(e.date);
         });
		
		$(".nav-tabs li").click(function(){
			$("#editLI").addClass("hidden");
		});
		
		$('#eduTable').dataTable({
			"bPaginate" : true,
			"bLengthChange" : true,
			"bFilter" : true,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : true
		});
	});

	function submitForm(formId) {
		if (validateForm(formId)) {
			$.ajax({
				type : "POST",
				url : "addProduct",
				data : $("#" + formId).serialize(), // serializes the form's elements.
				success : function(data) {
					location.reload();
				}
			});
		}
	}
	
	function updateForm(ProductId){		
		$("#editLI").show();
		$.ajax({
			type : "POST",
			url : "getProductById.action?ProductId="+ProductId,
			success : function(data) {
				$("#tab_3").html(data);
				$("#editLI a").trigger("click");
				$("#editLI").removeClass("hidden");
			}
		});
	}
	
	function getProductSubCategories(formId) {
		var ProductCategoryId = $("#" + formId +" select#productCategory").val();
		$.getJSON('getProductSubCategories', {
			ProductCategoryId : ProductCategoryId
		}, function(jsonResponse) {
			var select = $("#" + formId +' #productSubCategory');
			select.find('option').remove();
			$.each(jsonResponse.productSubCategoryMap, function(key, value) {
				$('<option>').val(key).text(value).appendTo(select);				
			});
		});
	}
	
	function getCourseLevels(formId) {
		var CourseId = $("#" + formId +" select#courses").val();
		$.getJSON('getLevels', {
			CourseId : CourseId
		}, function(jsonResponse) {
			var select = $("#" + formId +' #levels');
			select.find('option').remove();
			$.each(jsonResponse.levelMap, function(key, value) {
				$('<option>').val(key).text(value).appendTo(select);
			});
			getCourseSubjects(formId);
		});
	}

	function getCourseSubjects(formId) {
		var LevelId = $("#" + formId +" select#levels").val();
		$.getJSON('getSubjects', {
			LevelId : LevelId
		}, function(jsonResponse) {
			var select = $("#" + formId +' #subjects');
			select.find('option').remove();
			$.each(jsonResponse.subjectMap, function(key, value) {
				$('<option>').val(key).text(value).appendTo(select);
			});
		});
	}

</script>

<section class="content-header">
	<h1>Product Master</h1>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab_1" data-toggle="tab">Products
								List</a></li>
						<li><a href="#tab_2" data-toggle="tab">Add New Product</a></li>
						<li id="editLI" class="hidden"><a href="#tab_3"
							data-toggle="tab">Edit Product</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_1">
							<div class="box-body  table-responsive">

								<table id="eduTable" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th style="width: 10px">#</th>
											<th>Product Name</th>
											<!-- 												<th>Branch</th> -->
											<th class="text-center">Status</th>
											<th class="col-md-1 text-center">Edit</th>
											<th class="col-md-1 text-center">Delete</th>
										</tr>
									</thead>
									<tbody>
										<%
											int i = 1;
										%>
										<s:iterator value="productList">
											<tr>
												<td class="text-center">
													<%
														out.print(i);
													%>
												</td>
												<td><s:property value="ProductName" /></td>
												<td class="text-center"><s:if test="%{Status == 0}"> Inactive </s:if>
													<s:if test="%{Status == 1}"> Active </s:if></td>
												<td class="text-center"><s:a href="#">
														<i
															onclick="javascript:updateForm(<s:property value="ProductId" />);return false;"
															class="fa fa-fw fa-pencil-square-o"></i>
													</s:a></td>
												<td class="text-center"><s:url id="deleteURL"
														action="deleteProductCategory">
														<s:param name="ProductId" value="%{ProductId}"></s:param>
													</s:url> <s:a href="%{deleteURL}">
														<i class="fa fa-fw fa-trash-o"></i>
													</s:a></td>
											</tr>
											<%
												i++;
											%>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
						<!-- /.tab-pane -->
						<div class="tab-pane" id="tab_2">
							<div class="box-header">
								<h3 class="box-title">New Product Information</h3>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<form role="form" action="addProduct" id="productForm"
								method="post">
								<%-- 								<% UserProfileTB user = UserProfileTB.class.cast(session.getAttribute("USER")); %> --%>
								<div class="box-body">
									<div class="form-group">
										<label for="ProductName">* Product Name :</label> <input
											type="text" class="form-control" name="ProductName" req="yes"
											placeholder="Enter Product Name"">
									</div>
									<%-- <input type="hidden" name="BranchId" value="<%= user.getBranchId() %>"> --%>
									<%-- <input type="hidden" name="AcademyId" value="<%= user.getAcademy() %>"> --%>
									<%-- <input type="hidden" name="FacultyId" value="<%= user.getUserId() %>"> --%>

									<div class="form-group">
										<label for="ProductCategoryId">* Select Category :</label>
										<s:select id="productCategory" name="ProductCategoryId"
											list="productCategoryMap" listKey="key" listValue="value"
											headerKey="0" headerValue="--- Select Category ---"
											cssClass="form-control"
											onchange="javascript:getProductSubCategories('productForm');return false;" />
									</div>

									<div class="form-group">
										<label for="ProductSubCategoryId">* Select SubCategory
											:</label> <select id="productSubCategory" name="ProductSubCategoryId"
											name="ProductSubCategoryId" class="form-control">
											<option value="0">--- Select SubCategory ---</option>
										</select>
									</div>

									<div class="form-group">
										<label for="CourseID">* Select Course :</label>
										<s:select id="courses" name="CourseId" list="courseOfStudyMap"
											listKey="key" listValue="value" headerKey="0"
											headerValue="--- Select Course ---" cssClass="form-control"
											onchange="javascript:getCourseLevels('productForm');return false;" />
									</div>

									<div class="form-group">
										<label for="LevelId">* Select Levels :</label> <select
											id="levels" name="LevelId"
											onchange="javascript:getCourseSubjects('productForm');return false;"
											class="form-control">
											<option value="0">--- Select Levels ---</option>
										</select>
									</div>

									<div class="form-group">
										<label for="SubjectId">* Select Subjects :</label> <select
											id="subjects" name="SubjectId" class="form-control">
											<option value="0">--- Select Subjects ---</option>
										</select>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-xs-3 form-group">
												<label for="StartDate">Start Date</label>
												<div class='input-group date' id="fromDatetimepicker1">
													<input type='text' class="form-control" name="StartDate"
														req="yes" /> <span class="input-group-addon"><span
														class="glyphicon glyphicon-calendar"></span></span>
												</div>
											</div>

											<div class="col-xs-3 form-group">
												<label for="Duration">* Duration :</label> <input
													type="number" class="form-control" name="Duration"
													req="yes" placeholder="Enter Duration in days">
											</div>

											<%-- <div class="col-xs-3 form-group">
												<label for="ToDate">To Date :</label>
												<div class='input-group date' id="toDatetimepicker1">
													<input type='text' class="form-control" name="ToDate"
														req="yes" /> <span class="input-group-addon"><span
														class="glyphicon glyphicon-calendar"></span></span>
												</div>
											</div> --%>

											<div class="col-xs-3 bootstrap-timepicker">
												<div class="form-group">
													<label for="FromTime">From Time :</label>
													<div class="input-group">
														<input type="text" class="form-control timepicker"
															name="FromTime" />
														<div class="input-group-addon">
															<i class="fa fa-clock-o"></i>
														</div>
													</div>
												</div>
											</div>

											<div class="col-xs-3 bootstrap-timepicker">
												<div class="form-group">
													<label for="ToTime">To Time :</label>
													<div class="input-group">
														<input type="text" class="form-control timepicker"
															name="ToTime" />
														<div class="input-group-addon">
															<i class="fa fa-clock-o"></i>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-group">
										<label for="Capacity">* Capacity :</label> <input type="text"
											class="form-control" name="Capacity" req="yes"
											placeholder="Enter student capacity">
									</div>

									<div class="form-group">
										<label for="TuitionFee">* Tuition Fee :</label> <input
											type="text" class="form-control" name="TuitionFee" req="yes"
											placeholder="Enter tuition fee">
									</div>
								</div>


								<!-- radio -->

								<div class="form-group">
									<label>* Status :</label>
									<div class="radio">
										<label> <input type="radio" name="Status"
											id="optionsRadios1" value="1" checked> Active
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="Status"
											id="optionsRadios2" value="0"> Inactive
										</label>
									</div>
								</div>
						</div>
						<!-- /.box-body -->

						<div class="box-footer">
							<button type="button"
								onclick="javascript:submitForm('productForm');return false;"
								class="btn btn-primary">Submit</button>
						</div>
						</form>
					</div>

					<div class="tab-pane" id="tab_3"></div>
					<!-- /.tab-pane -->
				</div>
				<!-- /.tab-content -->
			</div>
			<!-- nav-tabs-custom -->
		</div>
	</div>
	<!--/.col (left) -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

