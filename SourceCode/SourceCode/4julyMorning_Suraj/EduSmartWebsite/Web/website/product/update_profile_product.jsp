<%@ taglib prefix="s" uri="/struts-tags"%>

<script src="js/AdminLTE/app.js" type="text/javascript"></script>
<script src="js/AdminLTE/demo.js" type="text/javascript"></script>

<script>
	$(document).ready(
			function() {

				$(".timepicker").timepicker({
					showInputs : false
				});

				$("#fromDatetimepicker2").datetimepicker({
					format : 'MM/DD/YYYY'
				});
				$("#toDatetimepicker2").datetimepicker({
					format : 'MM/DD/YYYY'
				});
				$("#fromDatetimepicker2").on(
						"dp.change",
						function(e) {
							$('#toDatetimepicker2').data("DateTimePicker")
									.setMinDate(e.date);
						});
				$("#toDatetimepicker2").on(
						"dp.change",
						function(e) {
							$('#fromDatetimepicker2').data("DateTimePicker")
									.setMaxDate(e.date);
						});

			});

	function displayUpdateForm() {
		$('#information').addClass('hidden');
		$('#editProductForm').removeClass('hidden');

	}
</script>

<div class="panel-body">
	<!-- left column -->
	<div class="row" style="margin-left: 0px;">
		<s:push value="product">
			<!-- form start -->
			<div id="information">
				<table class="table table-user-information">
					<tbody>
						<tr>
							<td>Product Name :</td>
							<td><s:property value='ProductName' /></td>
						</tr>

						<tr>
							<td>Product Category :</td>
							<td><s:property value='ProductCategoryName' /></td>
						</tr>

						<tr>
							<td>Product SubCategory :</td>
							<td><s:property value='ProductSubCategoryName' /></td>
						</tr>

						<tr>
							<td>Course Name :</td>
							<td><s:property value='CourseName' /></td>
						</tr>

						<tr>
							<td>Level Of Study :</td>
							<td><s:property value='LevelName' /></td>
						</tr>
						<tr>
							<td>Subject :</td>
							<td><s:property value='SubjectName' /></td>
						</tr>
						<tr>
							<td>Branch Name :</td>
							<td><s:property value='BranchName' /></td>
						</tr>
						<tr>
							<td>Start Date :</td>
							<td><s:property value='StartDate' /></td>
						</tr>
						<tr>
							<td>Duration :</td>
							<td><s:property value='Duration' /></td>
						</tr>
						<tr>
							<td>From Time :</td>
							<td><s:property value='FromTime' /></td>
						</tr>
						<tr>
							<td>To Time :</td>
							<td><s:property value='ToTime' /></td>
						</tr>
						<tr>
							<td>Status :</td>
							<s:if test="%{Status==1}">
								<td>Active</td>
							</s:if>
							<s:if test="%{Status==0}">
								<td>Inactive</td>
							</s:if>
						</tr>
					</tbody>

				</table>
				<a onclick="displayUpdateForm();" class="btn btn-primary">Update</a>
			</div>


			<!-- form start -->
			<form class="hidden" role="form" action="addProduct"
				id="editProductForm" method="post">
				<s:hidden name="ProductId" />

				<table>
					<tbody>
						<tr>
							<td><label for="ProductName">* Product Name :</label></td>
							<td><input type="text" class="form-control"
								name="ProductName" value="<s:property value='ProductName'/>"
								placeholder="Enter Product Name""></td>
						</tr>

						<tr>
							<td>
							<s:select id="productCategory" name="ProductCategoryId"
									list="productCategoryMap" listKey="key" listValue="value"
									headerKey="0" headerValue="--- Select Category ---" label="Select Category :"
									labelposition="<s:property value='ProductCategoryId'/>"
									onchange="javascript:getProductSubCategories('productForm');return false;" /></td>
						</tr>

						<tr>
							<td>
							<s:select name="ProductSubCategoryId"
									list="productSubCategoryMap" listKey="key"
									id="productSubCategory" listValue="value" headerKey="0" label="Select SubCategory"
									req="yes" headerValue="--- Select SubCategory ---"
									labelposition="<s:property value='ProductSubCategoryId'/>"
									type="select" /></td>
						</tr>

						<tr>
							<td>
							<s:select id="courses" name="CourseId"
									list="courseOfStudyMap" listKey="key" listValue="value"
									headerKey="0" headerValue="--- Select Course ---" label="Select Course :"
									cssClass="form-control"
									onchange="javascript:getCourseLevels('productForm');return false;" />
							<td>
						</tr>

						<tr>
							<td><s:select name="LevelId" list="levelMap" listKey="key"
									id="levels" listValue="value" headerKey="0" req="yes" label="Select Levels :"
									headerValue="--- Select Levels ---" cssClass="form-control"
									onchange="javascript:getCourseSubjects('productForm');return false;"
									labelposition="<s:property value='LevelId'/>" type="select" />
							</td>
						</tr>

						<tr>
							<td><s:select name="SubjectId" list="subjectMap"
									listKey="key" id="subjects" listValue="value" headerKey="0" label="Select Subjects :"
									req="yes" headerValue="--- Select Subjects ---"
									cssClass="form-control"
									labelposition="<s:property value='SubjectId'/>" type="select" />
							</td>
						</tr>

						<tr>
							<td><label for="StartDate">Start Date</label></td>
							<td><div class='input-group date' id="fromDatetimepicker1">
									<input type='text' class="form-control" name="StartDate"
										req="yes" value="<s:property value='StartDate'/>" /> <span
										class="input-group-addon"><span
										class="glyphicon glyphicon-calendar"></span></span>
								</div></td>
						</tr>

						<tr>
							<td><label for="Duration">* Duration :</label></td>
							<td><input type="number" class="form-control"
								name="Duration" req="yes" value="<s:property value='Duration'/>"
								placeholder="Enter Duration in days"></td>
						</tr>


						<tr>
							<td><label for="FromTime">From Time :</label></td>
							<td><div class="bootstrap-timepicker">
									<div class="input-group">
										<input type="text" class="form-control timepicker"
											name="FromTime" value="<s:property value='FromTime'/>" />
										<div class="input-group-addon">
											<i class="fa fa-clock-o"></i>
										</div>
									</div>
								</div></td>
						<tr>
							<td><label for="ToTime">To Time :</label></td>
							<td><div class="bootstrap-timepicker">
									<input type="text" class="form-control timepicker"
										name="ToTime" value="<s:property value='ToTime'/>" />
									<div class="input-group-addon">
										<i class="fa fa-clock-o"></i>
									</div>
								</div></td>
						</tr>

					</tbody>
				</table>
				<!-- radio -->
				<label>* Status :</label>
				<s:if test="%{Status==1}">
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
				</s:if>
				<s:if test="%{Status==0}">
					<div class="radio">
						<label> <input type="radio" name="Status"
							id="optionsRadios1" value="1"> Active
						</label>
					</div>
					<div class="radio">
						<label> <input type="radio" name="Status"
							id="optionsRadios2" value="0" checked> Inactive
						</label>
					</div>
				</s:if>
				<a onclick="javascript:submitForm('editProductForm');return false;"
					class="btn btn-primary">Submit</a>
			</form>
		</s:push>
	</div>
</div>
