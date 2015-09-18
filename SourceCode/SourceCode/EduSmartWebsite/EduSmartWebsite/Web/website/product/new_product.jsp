<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.edusmart.dao.*"%>
<%@page import="com.edusmart.action.*"%>
<script>
	$(document).ready(
			function() {

				$(".timepicker").timepicker({
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
						});

				$(".nav-tabs li").click(function() {
					$("#editLI").addClass("hidden");
				});

			});


	function submitForm(formId) {
		alert($("#" + formId).serialize());
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
		$("#editLI").show();
		$.ajax({
			type : "POST",
			url : "getProductById.action?ProductId=" + ProductId,
			success : function(data) {
				$("#tab_3").html(data);
				$("#editLI a").trigger("click");
				$("#editLI").removeClass("hidden");
			}
		});
	}

	function getProductSubCategories(formId) {
		var ProductCategoryId = $("#" + formId + " select#productCategory").val();
		if (ProductCategoryId == 3) {
				$("#display").addClass('hidden');
		} else {
			$("#display").removeClass('hidden');
		}
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


<!-- /.box-header -->
<form role="form" action="addProduct" id="productForm" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="ProductName">* Product Name :</label> <input type="text"
				class="form-control" name="ProductName" req="yes"
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
			<label for="ProductSubCategoryId">* Select SubCategory :</label> <select
				id="productSubCategory" name="ProductSubCategoryId"
				name="ProductSubCategoryId"
				class="form-control">
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
			<label for="LevelId">* Select Levels :</label> <select id="levels"
				name="LevelId"
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

		<div id="display">
			<div class="form-group">
				<label for="StartDate">Start Date</label>
				<div class='input-group date' id="fromDatetimepicker1">
					<input type='text' class="form-control" name="StartDate" req="yes" />
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-calendar"></span></span>
				</div>
			</div>



			<div class="col-xs-3 bootstrap-timepicker">
				<div class="form-group" id="fromtime">
					<label for="FromTime">From Time :</label>
					<div class="input-group">
						<input type="text" class="form-control timepicker" name="FromTime" />
						<div class="input-group-addon">
							<i class="fa fa-clock-o"></i>
						</div>
					</div>
				</div>
			</div>

			<div class="col-xs-3 bootstrap-timepicker">
				<div class="form-group" id="totime">
					<label for="ToTime">To Time :</label>
					<div class="input-group">
						<input type="text" class="form-control timepicker" name="ToTime" />
						<div class="input-group-addon">
							<i class="fa fa-clock-o"></i>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group" id="capacity">
				<label for="Capacity">* Capacity :</label> <input type="text"
					class="form-control" name="Capacity" req="yes"
					placeholder="Enter student capacity">
			</div>
		</div>

		<div class="form-group">
			<div class="col-xs-3 form-group" id="duration">
				<label for="Duration">* Duration :</label> <input type="number"
					class="form-control" name="Duration" req="yes"
					placeholder="Enter Duration in days">
			</div>
		</div>

		<div class="form-group" id="tutionfee">
			<label for="TuitionFee">* Amount :</label> <input type="text"
				class="form-control" name="TuitionFee" req="yes"
				placeholder="Enter Amount">
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

		<div class="box-footer">
			<button type="button"
				onclick="javascript:submitForm('productForm');return false;"
				class="btn btn-primary">Submit</button>
		</div>
	</div>
</form>


