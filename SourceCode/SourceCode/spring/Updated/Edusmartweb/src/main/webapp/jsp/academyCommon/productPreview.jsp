<%@page import="com.edusmartweb.edusmart.utils.RandomPassword"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>

function publishProduct(divId,productId,productAutoId,level, topic, typeOfBatch,
			numberOfLectures, subjectName, productDescription, notify,
			attemptFrom, attemptTo,subjectLevelRef,facultyRef) {
		
		$('#putAttemptFrom').val(attemptFrom);
		$('#putAttemptTo').val(attemptTo);
		$('#putProductAutoId').val(productAutoId);
		$('#putLevel').val(level);
		$('#putTopic').val(topic);
		$('#putTypeOfBatch').val(typeOfBatch);
		$('#putNumberOfLectures').val(numberOfLectures);
		$('#putSubjectName').val(subjectName);
		$('#putProductDescription').val(productDescription);
		$('#putNotify').val(notify);
		$('#putsubjectRef').val(subjectLevelRef);
		$('#putfacultyRef').val(facultyRef);
		
		
		$('#setProductAutoId').val(productAutoId);
		$('#setProductId').val(productId);
		$('#setAttemptFrom').val(attemptFrom);
		$('#setAttemptTo').val(attemptTo);
		$('#setLevel').val(level);
		$('#setTopic').val(topic);
		$('#setTypeOfBatch').val(typeOfBatch);
		$('#setNumberOfLectures').val(numberOfLectures);
		$('#setSubjectName').val(subjectName);
		$('#setProductDescription').val(productDescription);
		$('#setNotify').val(notify);
		
		
	}
	
</script>

<script>
function hideDeleteMsg(divId){	
	$('#demo'+divId+'').hide();
	}
function Show_Div(divId) {
    $('#demo'+divId+'').show();
}
</script>

<script type="text/javascript">
function publishVirualProduct(productId,productAutoId,level, topic, typeOfBatch,
		numberOfLectures, subjectName, productDescription, notify,
		attemptFrom, attemptTo,subjectLevelRef,facultyRef) {
	
	alert(productAutoId);
	$('#putVAttemptFrom').val(attemptFrom);
	$('#putVAttemptTo').val(attemptTo);
	$('#putVProductAutoId').val(productAutoId);
	$('#putVLevel').val(level);
	$('#putVTopic').val(topic);
	$('#putVTypeOfBatch').val(typeOfBatch);
	$('#putVNumberOfLectures').val(numberOfLectures);
	$('#putVSubjectName').val(subjectName);
	$('#putVProductDescription').val(productDescription);
	$('#putVNotify').val(notify);
	$('#putVsubjectRef').val(subjectLevelRef);
	$('#putVfacultyRef').val(facultyRef);
	
	
	
	$('#setVProductId').val(productId);
	$('#setVProductAutoId').val(productAutoId);
	$('#setVAttemptFrom').val(attemptFrom);
	$('#setVAttemptTo').val(attemptTo);
	$('#setVLevel').val(level);
	$('#setVTopic').val(topic);
	$('#setVTypeOfBatch').val(typeOfBatch);
	$('#setVNumberOfLectures').val(numberOfLectures);
	$('#setVSubjectName').val(subjectName);
	$('#setVProductDescription').val(productDescription);
	$('#setVNotify').val(notify);
	
	
}


</script>




<div class="col-md-12 home-bg ">
<!-- publish pop up -->


<form:form action="publishProduct" commandName="productFormData" method="post">
<input type="hidden" name="productId" id="setProductId">
<input type="hidden" name="attemptFrom" id="putAttemptFrom">
<input type="hidden" name="attemptTo" id="putAttemptTo">
<input type="hidden" name="productAutoId" id="putProductAutoId">
<input type="hidden" name="level" id="putLevel">
<input type="hidden" name="topic" id="putTopic">
<input type="hidden" name="typeOfBatch" id="putTypeOfBatch">
<input type="hidden" name="numberOfLectures" id="putNumberOfLectures">
<input type="hidden" name="subjectName" id="putSubjectName">
<input type="hidden" name="productDescription" id="putProductDescription">
<input type="hidden" name="notify" id="putNotify">
<input type="hidden" name="subjectLevelRef" id="putsubjectRef">
<input type="hidden" name="facultyRef" id="putfacultyRef">
<input type="hidden" name="userId" value="${userId}">

	<div class=" bs-example-tabs tab	">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4>
					<i class="fa fa-search-plus fa-lg"></i> Class Preview
				</h4>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="modal fade " id="exampleModal1" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
			data-target=".bs-example-modal-lg">
			<div class="modal-dialog bs-example-modal-lg">
				<div class="modal-content">
					<div class="modal-body pd-none">

						<div class="panel panel-default">



							<div class="panel-body ">
								<div class="">

									<div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="pull-left col-lg-3">CA-Live Classes</h4>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close" style="padding: 10px;">
													<span aria-hidden="true">&times;</span>
												</button>
												<div class=" col-lg-3">
													<select type="text" name="attemptFrom"
														id="setAttemptFrom" class="form-control " disabled>
														<option>Apr 2015</option>
														<option>Oct 2016</option>
													</select>
												</div>
												<div class="  col-lg-3 mrg-bt">
													<select type="text" name="attemptTo"
														id="setAttemptTo" class="form-control " disabled>
														<option>Oct 2015</option>
														<option>Apl 2016</option>
													</select>
												</div>
												<span class=" pull-right col-lg-2">
													<div class="input-group">
														<input type="text" name="productAutoId" id="setProductAutoId"
														value="${productAutoId}"	class="form-control date-width lginput-lg disabled"
															placeholder="545362" disabled>
													</div>
												</span>
												<div class="clearfix"></div>
											</div>
											<div class="bg-white ">
												<div class="panel-group" style="margin-top: 0px;">
													<div class="panel panel-default" id="panel1">
														<div id="collapseOne" class="panel-collapse collapse in">
															<div class="panel-body">
																<div class="profile-new">
																	<div class="col-lg-3 ">
																		<img alt="" src="entireApp/images/students.jpg"
																			class="img-responsive">
																	</div>
																	<div class="col-lg-9 ">
																		<div class="personal-bg">
																			<div class="row">
																				<div class="col-xs-12 col-sm-12 col-md-12">
																					<span class="pull-left">
																						<h4 class="great">CA</h4>
																					</span>
																					<div class="col-xs-12 col-sm-5 col-md-5">
																						<div class="form-group">
																							<select type="text" name="level"
																								id="setLevel" class="form-control " disabled>
																								<option>Select Level</option>
																								<option>CPT</option>
																								<option>IPC</option>
																								<option>Final</option>
																							</select>
																						</div>
																					</div>
																					<div class="col-xs-12 col-sm-5 col-md-5">
																						<div class="form-group">
																							<select type="text"
																								name="subjectName"
																								id="setSubjectName" class="form-control "
																								disabled>
																								<option>Select Subject</option>
																								<option>Mercantile Laws</option>
																								<option>General Economics</option>
																								<option>Company Law</option>
																								<option>Advanced Accounting</option>
																								<option>Financial Reporting</option>
																								<option>Direct Laws</option>
																							</select>
																						</div>
																					</div>
																					<div class="clearfix"></div>
																				</div>
																				<div class="col-xs-12 col-sm-12 col-md-12">
																					<div class="form-group">
																						<input type="text" name="topic"
																							id="setTopic" class="form-control"
																							placeholder="VAT" disabled>
																					</div>
																				</div>
																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group">
																						<select type="text" name="typeOfBatch" disabled="disabled"
																							id="setTypeOfBatch" class="form-control ">
																							<option>Batch Type</option>
																										<option>Other</option>
																										<option>Regular</option>
																										<option>Revision</option>
																										<option>FastTrack</option>
																						</select>
																					</div>
																				</div>

																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group">
																						<input type="text"
																													name="numberOfLectures"
																													id="setNumberOfLectures"
																													class="form-control " disabled="disabled"
																													placeholder="Number of lectures">
																											</div>
																					</div>
																				</div>

																				<div class="clearfix"></div>
																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group">
																						<input type="text" name="fees"	id="setFees" class="form-control "
																							placeholder="Fees">
																					</div>
																				</div>
																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group  ">
																						<div class="input-group date ">
																							<span class="input-group-addon in"><i
																								class="fa fa-calendar"></i> </span>


																							<div class="demo-1">
																								<input type='text'
																									class="form-control demo-1 date-width lg">
																							</div>
																						</div>


																					</div>
																				</div>


																				<p class="col-lg-6 ">
																					<a href="javascript:eToggle('atag3','helptxt');"
																						style="color: #000;">Add your more info <i
																						class="fa fa-plus-square"></i>
																					</a>
																				</p>
																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group">
																						<input type="text" name="days"
																							id="first_name" class="form-control "
																							placeholder="Days">
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="clearfix"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div>
													<div id="helptxt" style="display: none" class="col-lg-12">
														<p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum
															dolor sit amet, consectetur adipisicing elit.</p>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="clearfix"></div>
											<div class="bottom-bg live-batch">
												<div class="col-lg-9 ">

													<div class="form-group col-lg-4">
														<input type="text" id="setBatchTiming" name="batchTiming"
															class="form-control" placeholder="Batch timing">
													</div>
													<div class="form-group col-lg-4">
														<input type="text"  id="setCapacity"  name="capacity"
															class="form-control" placeholder="Capacity">
													</div>

												</div>



												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="panel-footer">
								<div class="row">
									<div class="col-md-7">
										<div class="form-group">
											<div class="btn-group">
												<button type="submit" class="btn btn-primary">Confirm</button>
											</div>
											<div class="btn-group">
												<button type="reset" class="btn btn-default">Reset</button>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<a href="#" class="pull-left share" data-toggle="tooltip"
											title="Share on your timeline" data-placement="bottom"> <img
											src="entireApp/images/plane.png"></a>
										<div class="form-group pull-right">
											<select type="text"
												class="form-control multiselect multiselect-icon"
												multiple="multiple" role="multiselect">
												<option value="Academy" data-icon="">Academy</option>
												<option value="Faculty" data-icon="">Faculty</option>
												<option value="Student" data-icon="">Student</option>
											</select>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form:form>
		
		<!--End publish popup -->
		
<!--Start Virtual Publish popup  -->

<form:form action="publishVirtualProduct" commandName="virtualProduct" method="post">
<input type="hidden" name="productId" id="setVProductId">
<input type="hidden" name="attemptFrom" id="putVAttemptFrom">
<input type="hidden" name="attemptTo" id="putVAttemptTo">
<input type="hidden" name="productAutoId" id="putVProductAutoId">
<input type="hidden" name="level" id="putVLevel">
<input type="hidden" name="topic" id="putVTopic">
<input type="hidden" name="typeOfBatch" id="putVTypeOfBatch">
<input type="hidden" name="numberOfLectures" id="putVNumberOfLectures">
<input type="hidden" name="subjectName" id="putVSubjectName">
<input type="hidden" name="productDescription" id="putVProductDescription">
<input type="hidden" name="notify" id="putVNotify">
<input type="hidden" name="subjectLevelRef" id="putVsubjectRef">
<input type="hidden" name="facultyRef" id="putVfacultyRef">
<input type="hidden" name="userId" value="${userId}">
	<div class=" bs-example-tabs tab	">
		
	<div class="modal fade " id="exampleModal2" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
			data-target=".bs-example-modal-lg">
			<div class="modal-dialog bs-example-modal-lg">
				<div class="modal-content">
					<div class="modal-body pd-none">

						<div class="panel panel-default">



							<div class="panel-body ">
								<div class="">

									<div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="pull-left col-lg-3">Virtual Classes</h4>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close" style="padding: 10px;">
													<span aria-hidden="true">&times;</span>
												</button>
												<div class=" col-lg-3">
													<select type="text" name="attemptFrom"
														id="setVAttemptFrom" class="form-control " disabled>
														<option>Apr 2015</option>
														<option>Oct 2016</option>
													</select>
												</div>
												<div class="  col-lg-3 mrg-bt">
													<select type="text" name="attemptTo"
														id="setVAttemptTo" class="form-control " disabled>
														<option>Oct 2015</option>
														<option>Apl 2016</option>
													</select>
												</div>
												<span class=" pull-right col-lg-2">
													<div class="input-group">
														<input type="text" name="productAutoId" id="setVProductAutoId"
														value="${productAutoId}" class="form-control date-width lginput-lg disabled"
															placeholder="Product ID" disabled>
													</div>
												</span>
												<div class="clearfix"></div>
											</div>
											<div class="bg-white ">
												<div class="panel-group" style="margin-top: 0px;">
													<div class="panel panel-default" id="panel1">
														<div id="collapseOne" class="panel-collapse collapse in">
															<div class="panel-body">
																<div class="profile-new">
																	<div class="col-lg-3 ">
																		<img alt="" src="entireApp/images/students.jpg"
																			class="img-responsive">
																	</div>
																	<div class="col-lg-9 ">
																		<div class="personal-bg">
																			<div class="row">
																				<div class="col-xs-12 col-sm-12 col-md-12">
																					<span class="pull-left">
																						<h4 class="great">CA</h4>
																					</span>
																					<div class="col-xs-12 col-sm-5 col-md-5">
																						<div class="form-group">
																							<select type="text" name="level"
																								id="setVLevel" class="form-control " disabled>
																								<option>Select Level</option>
																								<option>CPT</option>
																								<option>IPC</option>
																								<option>Final</option>
																							</select>
																						</div>
																					</div>
																					<div class="col-xs-12 col-sm-5 col-md-5">
																						<div class="form-group">
																							<select type="text"
																								name="subjectName"
																								id="setVSubjectName" class="form-control "
																								disabled>
																								<option>Select Subject</option>
																								<option>Mercantile Laws</option>
																								<option>General Economics</option>
																								<option>Company Law</option>
																								<option>Advanced Accounting</option>
																								<option>Financial Reporting</option>
																								<option>Direct Laws</option>
																							</select>
																						</div>
																					</div>
																					<div class="clearfix"></div>
																				</div>
																				<div class="col-xs-12 col-sm-12 col-md-12">
																					<div class="form-group">
																						<input type="text" name="topic"
																							id="setVTopic" class="form-control"
																							placeholder="topic" disabled>
																					</div>
																				</div>
																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group">
																						<select type="text" name="typeOfBatch" disabled="disabled"
																							id="setVTypeOfBatch" class="form-control ">
																							<option>Batch Type</option>
																										<option>Other</option>
																										<option>Regular</option>
																										<option>Revision</option>
																										<option>FastTrack</option>
																						</select>
																					</div>
																				</div>

																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group">
																						<input type="text"
																													name="numberOfLectures"
																													id="setVNumberOfLectures"
																													class="form-control " disabled="disabled"
																													placeholder="Number of lectures">
																											</div>
																					</div>
																				</div>

																				<div class="clearfix"></div>
																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group">
																						<input type="text" name="fees"	id="setVFees" class="form-control "
																							placeholder="Fees">
																					</div>
																				</div>
																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group  ">
																						<div class="input-group date " id="dp1">
																							<span class="input-group-addon in"><i
																								class="fa fa-calendar"></i> </span> <input type="text"
																								class="datepicker form-control date-width lg" name="startDate"
																								id="setStartDate"
																								placeholder="Select Start date">
																						</div>
																					</div>
																				</div>


																				<p class="col-lg-6 ">
																					<a href="javascript:eToggle('atag2','helptxt');"
																						style="color: #000;">Add your more info <i
																						class="fa fa-plus-square"></i>
																					</a>
																				</p>
																				<div class="col-xs-12 col-sm-6 col-md-6">
																					<div class="form-group">
																						<input type="text" name="days"
																							id="setVDays" class="form-control "
																							placeholder="Days">
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="clearfix"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div>
													<div id="helptxt" style="display: none" class="col-lg-12">
														<p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum
															dolor sit amet, consectetur adipisicing elit.</p>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="clearfix"></div>
											<div class="bottom-bg live-batch">
												<div class="col-lg-9 ">

													<div class="form-group col-lg-4">
														<input type="text" id="setVBatchTiming" name="batchTiming"
															class="form-control" placeholder="Batch timing">
													</div>
													<div class="form-group col-lg-4">
														<input type="text"  id="setVCapacity"  name="capacity"
															class="form-control" placeholder="Capacity">
													</div>

												</div>



												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="panel-footer">
								<div class="row">
									<div class="col-md-7">
										<div class="form-group">
											<div class="btn-group">
												<button type="submit" class="btn btn-primary">Confirm</button>
											</div>
											<div class="btn-group">
												<button type="reset" class="btn btn-default">Reset</button>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<a href="#" class="pull-left share" data-toggle="tooltip"
											title="Share on your timeline" data-placement="bottom"> <img
											src="entireApp/images/plane.png"></a>
										<div class="form-group pull-right">
											<select type="text" name="notify" id="setVNotify"
												class="form-control multiselect multiselect-icon"
												multiple="multiple" role="multiselect">
												<option value="Academy" data-icon="">Academy</option>
												<option value="Faculty" data-icon="">Faculty</option>
												<option value="Student" data-icon="">Student</option>
											</select>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</form:form>

<!--End Virtual Publish popup  -->		
		<div class="parentHorizontalTab">
			<ul class="resp-tabs-list hor_1 pull-left col-lg-12">
				<li>CA</li>
				<li>CS</li>
				<li>CMA</li>
				<span class="pull-right col-lg-5">

					<div id="imaginary_container" style="margin-top: 6px;">
						<div class="input-group stylish-input-group">
							<input type="text" class="form-control " placeholder="Search">
							<span class="input-group-addon">
								<button type="submit">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</span>
						</div>
					</div>
				</span>
			</ul>

			<div class="resp-tabs-container hor_1">
				<div>

					<c:forEach items="${productList}" var="productObj">
						<div class="panel panel-default">
							<div class="panel panel-default">
								<div class="panel-heading" style="padding: 3px 14px !important;">
									<p class="pull-left col-lg-3">
										<strong>Live Classes </strong>
									</p>
									<div class="col-lg-5">
										<p>Applicable for ${productObj.attemptFrom} : ${productObj.attemptTo}</p>
									</div>
									<span class="  col-lg-2">
										<div class="input-group">
											<p>
												<strong>ID -</strong> ${productObj.productAutoId}
											</p>
										</div>
									</span> 
									<span style="float: right; margin-right: 11px;"><span
											 data-toggle="tooltip" title=""
											data-placement="bottom" data-original-title="Delete"
											onclick="Show_Div(${productObj.productId})"> <i
												class="fa fa-trash-o blue"></i></span></span>
								
									<div class="clearfix"></div>
									
								</div>
							</div>
							<div class="bg-white ">
							
							<div id="demo${productObj.productId}"
									style="display: none; position: absolute; z-index: 999; right: 35px; top: -13px;">
									<div class="alert alert-block delete-pop">
										<p>Are you sure want to delete?</p>
										<div class="clearfix"></div>
										<a class="confirm col-lg-6 top-rht" data-dismiss=""><button
												type="button" class="btn btn-success btn-xs"
												onclick="removeProduct(${productObj.productId})">Confirm</button></a>

										<a class="close col-lg-6 top-rht" data-dismiss=""><button
												type="button" class="btn btn-warning btn-xs"
												onClick="hideDeleteMsg(${productObj.productId})">
												Cancel</button></a>
									</div>
								</div>
								<div class="panel-group mg-none">
									<div class="panel panel-default" id="panel1">
										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="profile-new">
													<div class="col-lg-2 ">
														<div class="img-res">
															<img alt="" src="entireApp/images/user.png"
																class="img-responsive">
															<div class="user-img-bg">
																<p>John Smith</p>
															</div>
														</div>
													</div>
													<div class="col-lg-8 ">
														<div class="personal-bg mg-none">
															<div class="row">
																<div class="col-xs-12 col-sm-12 col-md-12">
																	<span class="pull-left">
																		<h4 class="great">CA</h4>
																	</span>
																	<div data-example-id="simple-responsive-table"
																		class="col-lg-11 table-pd">
																		<div class="table-responsive ">
																			<div class="clearfix"></div>
																			<table class="table cutom-table">
																				<tbody>
																					<tr>
																						<td class=""><span class="level-bg ">CPT</span></td>
																						<td class=""><a href="#"
																							data-toggle="tooltip" title=""
																							data-placement="bottom"
																							data-original-title="Economics"><strong><c:out
																										value="${productObj.subjectName}" /></strong></a></td>
																						<td class=""><c:out
																								value="${productObj.topic}" /></td>
																						<td class=""><c:out value="${productObj.typeOfBatch}" /> 
																						&nbsp;Batch</td>


																					</tr>
																					<tr>
																						<td class="last"><c:out
																								value="${productObj.numberOfLectures}" />
																							Lectures</td>
																						<td class="last"><a
																							href="javascript:eToggle('','helptxt1');"
																							id="read" style="font-size: 14px;">More Info
																								<i class="fa fa-plus-square"></i>
																						</a></td>


																					</tr>
																				</tbody>
																			</table>
																		</div>

																	</div>
																</div>
															</div>
														</div>
														<div class="clearfix"></div>
													</div>
											<% RandomPassword randomCode=new RandomPassword();
											String productAutoId="A1"+randomCode.generateRandomPassword();
											 pageContext.setAttribute("productAutoId", productAutoId);
												%>
													<%-- <c:set var="academyAutoId" value="${pageScope.productAutoId}"/>
													<c:set var="facultyAutoId" value="${productObj.productAutoId}"/>
													<c:set var="string3" value="${fn:join(facultyAutoId, academyAutoId)}" /> --%>
													<div class="col-lg-2 personal-bg mg-none text-cen">
														<button type="button" class="btn btn-primary "
															data-toggle="modal" data-target="#exampleModal1"
															data-whatever=""
															onclick="publishProduct('live','${productObj.productId}','${productObj.productAutoId}${pageScope.productAutoId}','${productObj.level}','${productObj.topic}','${productObj.typeOfBatch}','${productObj.numberOfLectures}','${productObj.subjectName}','${productObj.productDescription}','${productObj.notify}','${productObj.attemptFrom}','${productObj.attemptTo}','${productObj.subjectLevelTB.subjectId}','${productObj.facultyTb.facultyId}')">Publish</button>
														
														<div class=" mg-top mg-bt">
															<div aria-label="First group" role="group"
																class="btn-group">
																<button class="btn btn-default btn-xs" type="button">
																	<a href="#" data-toggle="tooltip" title=""
																		data-placement="bottom"
																		data-original-title="Demo Video"><i
																		class="fa fa-youtube-play orange"></i></a>
																</button>
																<button class="btn btn-default btn-xs" type="button">
																	<a href="#" data-toggle="tooltip" title=""
																		data-placement="bottom"
																		data-original-title="Download Syllabus"><i
																		class="fa fa-book orange"></i></a>
																</button>
															</div>
														</div>

													</div>
													<div class="clearfix"></div>
													<div class="col-lg-12">
														<div id="helptxt1"
															style="display: none; margin-top: 10px;">
															<div>
																<p>Lorem ipsum dolor sit amet. veritatis, Lorem
																	ipsum dolor sit amet, Lorem ipsum dolor sit amet.
																	veritatis, Lorem ipsum dolor</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<hr class="colorline">
						
		</c:forEach>
					
					
					
			<c:forEach items="${virtualProductList}" var="virualProductObj">
						<div class="panel panel-default">
							<div class="panel panel-default">
								<div class="panel-heading" style="padding: 3px 14px !important;">
									<p class="pull-left col-lg-3">
										<strong>Virtual Classes </strong>
									</p>
									<div class="col-lg-5">
										<p>Applicable for ${virualProductObj.attemptFrom} : ${virualProductObj.attemptTo}</p>
									</div>
									<span class="  col-lg-2">
										<div class="input-group">
											<p>
												<strong>ID-</strong> ${virualProductObj.productAutoId}
											</p>
										</div>
									</span>   <span style="float: left; margin-right: 11px;"><a
											href="#" data-toggle="tooltip" title=""
											data-placement="bottom" data-original-title="Delete"> <i
												class="fa fa-trash-o blue"></i></a></span>
									
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="bg-white ">
								<div class="panel-group mg-none">
									<div class="panel panel-default" id="panel1">
										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="profile-new">
													<div class="col-lg-2 ">
														<div class="img-res">
															<img alt="" src="entireApp/images/user.png"
																class="img-responsive">
															<div class="user-img-bg">
																<p>John Smith</p>
															</div>
														</div>
													</div>
													<div class="col-lg-8 ">
														<div class="personal-bg mg-none">
															<div class="row">
																<div class="col-xs-12 col-sm-12 col-md-12">
																	<span class="pull-left">
																		<h4 class="great">CA</h4>
																	</span>
																	<div data-example-id="simple-responsive-table"
																		class="col-lg-11 table-pd">
																		<div class="table-responsive ">
																			<div class="clearfix"></div>
																			<table class="table cutom-table">
																				<tbody>
																					<tr>
																						<td class=""><span class="level-bg ">
																						<c:out value="${virualProductObj.level}" /></span></td>
																						<td class=""><a href="#"
																							data-toggle="tooltip" title=""
																							data-placement="bottom"
																							data-original-title="Economics"><strong><c:out
																										value="${virualProductObj.subjectName}" /></strong></a></td>
																						<td class=""><c:out
																								value="${virualProductObj.topic}" /></td>
																						<td class=""><c:out value="${virualProductObj.typeOfBatch}" /> 
																						&nbsp;Batch</td>


																					</tr>
																					<tr>
																						<td class="last"><c:out
																								value="${virualProductObj.numberOfLectures}" />
																							Lectures</td>
																						<td class="last"><a
																							href="javascript:eToggle('','helptxt2');"
																							id="read" style="font-size: 14px;">More Info
																								<i class="fa fa-plus-square"></i>
																						</a></td>


																					</tr>
																				</tbody>
																			</table>
																		</div>

																	</div>
																</div>
															</div>
														</div>
														<div class="clearfix"></div>
													</div>
													
													<% RandomPassword randomCode=new RandomPassword();
											String productAutoId="A1"+randomCode.generateRandomPassword();
											 pageContext.setAttribute("productAutoId", productAutoId);
												%>
													
													<div class="col-lg-2 personal-bg mg-none text-cen">
														<button type="button" class="btn btn-primary "
															data-toggle="modal" data-target="#exampleModal2"
															data-whatever=""
															onclick="publishVirualProduct('${virualProductObj.productId}','${virualProductObj.productAutoId} ${pageScope.productAutoId}','${virualProductObj.level}','${virualProductObj.topic}','${virualProductObj.typeOfBatch}','${virualProductObj.numberOfLectures}','${virualProductObj.subjectName}','${virualProductObj.productDescription}','${virualProductObj.notify}','${virualProductObj.attemptFrom}','${virualProductObj.attemptTo}','${virualProductObj.subjectLevelTB.subjectId}','${virualProductObj.facultyTb.facultyId}')">Publish</button>
														
														<div class=" mg-top mg-bt">
															<div aria-label="First group" role="group"
																class="btn-group">
																<button class="btn btn-default btn-xs" type="button">
																	<a href="#" data-toggle="tooltip" title=""
																		data-placement="bottom"
																		data-original-title="Demo Video"><i
																		class="fa fa-youtube-play orange"></i></a>
																</button>
																<button class="btn btn-default btn-xs" type="button">
																	<a href="#" data-toggle="tooltip" title=""
																		data-placement="bottom"
																		data-original-title="Download Syllabus"><i
																		class="fa fa-book orange"></i></a>
																</button>
															</div>
														</div>

													</div>
													<div class="clearfix"></div>
													<div class="col-lg-12">
														<div id="helptxt2"
															style="display: none; margin-top: 10px;">
															<div>
																<p><c:out value="${virualProductObj.productDescription}" /></p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
				<hr class="colorline">
	</c:forEach>

					

					
				</div>
				<div>
					<div class="panel panel-default">
						<div class="panel panel-default">
							<div class="panel-heading" style="padding: 3px 14px !important;">
								<p class="pull-left col-lg-3">
									<strong>Live Classes </strong>
								</p>
								<div class="col-lg-5">
									<p>Applicable for Apr 2015 : Oct 2015</p>
								</div>
								<span class="  col-lg-2">
									<div class="input-group">
										<p>
											<strong>ID-</strong> 3656
										</p>
									</div>
								</span> <span style="float: right; margin-right: 11px;"> <a
									href="#" data-toggle="modal" data-target="#exampleModal1"
									data-whatever=""> <i class="fa fa-pencil"></i></a> <span
									style="float: left; margin-right: 11px;"><a href="#"
										data-toggle="tooltip" title="" data-placement="bottom"
										data-original-title="Delete"> <i
											class="fa fa-trash-o blue"></i></a></span>
								</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="bg-white ">
							<div class="panel-group mg-none">
								<div class="panel panel-default" id="panel1">
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="profile-new">
												<div class="col-lg-2 ">
													<div class="img-res">
														<img alt="" src="entireApp/images/user.png"
															class="img-responsive">
														<div class="user-img-bg">
															<p>John Smith</p>
														</div>
													</div>
												</div>
												<div class="col-lg-8 ">
													<div class="personal-bg mg-none">
														<div class="row">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<span class="pull-left">
																	<h4 class="great">CA</h4>
																</span>
																<div data-example-id="simple-responsive-table"
																	class="col-lg-11 table-pd">
																	<div class="table-responsive ">
																		<div class="clearfix"></div>
																		<table class="table cutom-table">
																			<tbody>
																				<tr>
																					<td class=""><span class="level-bg ">CPT</span></td>
																					<td class=""><a href="#" data-toggle="tooltip"
																						title="" data-placement="bottom"
																						data-original-title="Economics"><strong>ECE</strong></a></td>
																					<td class="">VAT</td>
																					<td class="">Regular Batch</td>


																				</tr>
																				<tr>
																					<td class="last">22 lectures</td>
																					<td class="last"><a
																						href="javascript:eToggle('','helptxt3');"
																						id="read" style="font-size: 14px;">More Info <i
																							class="fa fa-plus-square"></i>
																					</a></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>

																</div>
															</div>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="col-lg-2 personal-bg mg-none text-cen">
													<button type="button" class="btn btn-primary "
														data-toggle="modal" data-target="#exampleModal1"
														data-whatever="">Publish</button>
													<div class=" mg-top mg-bt">
														<div aria-label="First group" role="group"
															class="btn-group">
															<button class="btn btn-default btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Demo Video"><i
																	class="fa fa-youtube-play orange"></i></a>
															</button>
															<button class="btn btn-default btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Download Syllabus"><i
																	class="fa fa-book orange"></i></a>
															</button>
														</div>
													</div>

												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr class="colorline">
					<div class="panel panel-default">
						<div class="panel panel-default">
							<div class="panel-heading" style="padding: 3px 14px !important;">
								<p class="pull-left col-lg-3">
									<strong>Virtual Classes </strong>
								</p>
								<div class="col-lg-5">
									<p>Applicable for Apr 2015 : Oct 2015</p>
								</div>
								<span class="  col-lg-2">
									<div class="input-group">
										<p>
											<strong>ID-</strong> 3656
										</p>
									</div>
								</span> <span style="float: right; margin-right: 11px;"> <a
									href="#" data-toggle="modal" data-target="#exampleModal1"
									data-whatever=""> <i class="fa fa-pencil"></i></a> <span
									style="float: left; margin-right: 11px;"><a href="#"
										data-toggle="tooltip" title="" data-placement="bottom"
										data-original-title="Delete"> <i
											class="fa fa-trash-o blue"></i></a></span>
								</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="bg-white ">
							<div class="panel-group mg-none">
								<div class="panel panel-default" id="panel1">
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="profile-new">
												<div class="col-lg-2 ">
													<div class="img-res">
														<img alt="" src="entireApp/images/user.png"
															class="img-responsive">
														<div class="user-img-bg">
															<p>John Smith</p>
														</div>
													</div>
												</div>
												<div class="col-lg-8 ">
													<div class="personal-bg mg-none">
														<div class="row">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<span class="pull-left">
																	<h4 class="great">CA</h4>
																</span>
																<div data-example-id="simple-responsive-table"
																	class="col-lg-11 table-pd">
																	<div class="table-responsive ">
																		<div class="clearfix"></div>
																		<table class="table cutom-table">
																			<tbody>
																				<tr>
																					<td class=""><span class="level-bg ">CPT</span></td>
																					<td class=""><a href="#" data-toggle="tooltip"
																						title="" data-placement="bottom"
																						data-original-title="Economics"><strong>ECE</strong></a></td>
																					<td class="">VAT</td>
																					<td class="">Regular Batch</td>


																				</tr>
																				<tr>
																					<td class="last">22 lectures</td>
																					<td class="last"><a
																						href="javascript:eToggle('','helptxt4');"
																						id="read" style="font-size: 14px;">More Info <i
																							class="fa fa-plus-square"></i>
																					</a></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>

																</div>
															</div>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="col-lg-2 personal-bg mg-none text-cen">
													<button type="button" class="btn btn-primary "
														data-toggle="modal" data-target="#exampleModal1"
														data-whatever="">Publish</button>
													<div class=" mg-top mg-bt">
														<div aria-label="First group" role="group"
															class="btn-group">
															<button class="btn btn-default btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Demo Video"><i
																	class="fa fa-youtube-play orange"></i></a>
															</button>
															<button class="btn btn-default btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Download Syllabus"><i
																	class="fa fa-book orange"></i></a>
															</button>
														</div>
													</div>

												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr class="colorline">
					
				</div>
				<div>
					<div class="panel panel-default">
						<div class="panel panel-default">
							<div class="panel-heading" style="padding: 3px 14px !important;">
								<p class="pull-left col-lg-3">
									<strong>Live Classes </strong>
								</p>
								<div class="col-lg-5">
									<p>Applicable for Apr 2015 : Oct 2015</p>
								</div>
								<span class="  col-lg-2">
									<div class="input-group">
										<p>
											<strong>ID-</strong> 3656
										</p>
									</div>
								</span> <span style="float: right; margin-right: 11px;"> <a
									href="#" data-toggle="modal" data-target="#exampleModal1"
									data-whatever=""> <i class="fa fa-pencil"></i></a> <span
									style="float: left; margin-right: 11px;"><a href="#"
										data-toggle="tooltip" title="" data-placement="bottom"
										data-original-title="Delete"> <i
											class="fa fa-trash-o blue"></i></a></span>
								</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="bg-white ">
							<div class="panel-group mg-none">
								<div class="panel panel-default" id="panel1">
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="profile-new">
												<div class="col-lg-2 ">
													<div class="img-res">
														<img alt="" src="entireApp/images/user.png"
															class="img-responsive">
														<div class="user-img-bg">
															<p>John Smith</p>
														</div>
													</div>
												</div>
												<div class="col-lg-8 ">
													<div class="personal-bg mg-none">
														<div class="row">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<span class="pull-left">
																	<h4 class="great">CA</h4>
																</span>
																<div data-example-id="simple-responsive-table"
																	class="col-lg-11 table-pd">
																	<div class="table-responsive ">
																		<div class="clearfix"></div>
																		<table class="table cutom-table">
																			<tbody>
																				<tr>
																					<td class=""><span class="level-bg ">CPT</span></td>
																					<td class=""><a href="#" data-toggle="tooltip"
																						title="" data-placement="bottom"
																						data-original-title="Economics"><strong>ECE</strong></a></td>
																					<td class="">VAT</td>
																					<td class="">Regular Batch</td>


																				</tr>
																				<tr>
																					<td class="last">22 lectures</td>
																					<td class="last"><a
																						href="javascript:eToggle('','helptxt5');"
																						id="read" style="font-size: 14px;">More Info <i
																							class="fa fa-plus-square"></i>
																					</a></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>

																</div>
															</div>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="col-lg-2 personal-bg mg-none text-cen">
													<button type="button" class="btn btn-primary "
														data-toggle="modal" data-target="#exampleModal1"
														data-whatever="">Publish</button>
													<div class=" mg-top mg-bt">
														<div aria-label="First group" role="group"
															class="btn-group">
															<button class="btn btn-default btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Demo Video"><i
																	class="fa fa-youtube-play orange"></i></a>
															</button>
															<button class="btn btn-default btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Download Syllabus"><i
																	class="fa fa-book orange"></i></a>
															</button>
														</div>
													</div>

												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr class="colorline">
					<div class="panel panel-default">
						<div class="panel panel-default">
							<div class="panel-heading" style="padding: 3px 14px !important;">
								<p class="pull-left col-lg-3">
									<strong>Virtual Classes </strong>
								</p>
								<div class="col-lg-5">
									<p>Applicable for Apr 2015 : Oct 2015</p>
								</div>
								<span class="  col-lg-2">
									<div class="input-group">
										<p>
											<strong>ID-</strong> 3656
										</p>
									</div>
								</span> <span style="float: right; margin-right: 11px;"> <a
									href="#" data-toggle="modal" data-target="#exampleModal1"
									data-whatever=""> <i class="fa fa-pencil"></i></a> <span
									style="float: left; margin-right: 11px;"><a href="#"
										data-toggle="tooltip" title="" data-placement="bottom"
										data-original-title="Delete"> <i
											class="fa fa-trash-o blue"></i></a></span>
								</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="bg-white ">
							<div class="panel-group mg-none">
								<div class="panel panel-default" id="panel1">
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="profile-new">
												<div class="col-lg-2 ">
													<div class="img-res">
														<img alt="" src="entireApp/images/user.png"
															class="img-responsive">
														<div class="user-img-bg">
															<p>John Smith</p>
														</div>
													</div>
												</div>
												<div class="col-lg-8 ">
													<div class="personal-bg mg-none">
														<div class="row">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<span class="pull-left">
																	<h4 class="great">CA</h4>
																</span>
																<div data-example-id="simple-responsive-table"
																	class="col-lg-11 table-pd">
																	<div class="table-responsive ">
																		<div class="clearfix"></div>
																		<table class="table cutom-table">
																			<tbody>
																				<tr>
																					<td class=""><span class="level-bg ">CPT</span></td>
																					<td class=""><a href="#" data-toggle="tooltip"
																						title="" data-placement="bottom"
																						data-original-title="Economics"><strong>ECE</strong></a></td>
																					<td class="">VAT</td>
																					<td class="">Regular Batch</td>


																				</tr>
																				<tr>
																					<td class="last">22 lectures</td>
																					<td class="last"><a
																						href="javascript:eToggle('','helptxt5');"
																						id="read" style="font-size: 14px;">More Info <i
																							class="fa fa-plus-square"></i>
																					</a></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>

																</div>
															</div>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="col-lg-2 personal-bg mg-none text-cen">
													<button type="button" class="btn btn-primary "
														data-toggle="modal" data-target="#exampleModal1"
														data-whatever="">Publish</button>
													<div class=" mg-top mg-bt">
														<div aria-label="First group" role="group"
															class="btn-group">
															<button class="btn btn-default btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Demo Video"><i
																	class="fa fa-youtube-play orange"></i></a>
															</button>
															<button class="btn btn-default btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Download Syllabus"><i
																	class="fa fa-book orange"></i></a>
															</button>
														</div>
													</div>

												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr class="colorline">
					
				</div>
			</div>
		</div>
	</div>
<script language="javascript">
	function eToggle(anctag, darg) {
		var ele = document.getElementById(darg);
		var text = document.getElementById(anctag);
		if (ele.style.display == "block") {
			ele.style.display = "none";
			text.innerHTML = "More Info";
		} else {
			ele.style.display = "block";
			text.innerHTML = "Hide Info";
		}
	}
</script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$(
								'#text_demo1, #textarea_demo, #checkbox_demo, #select_demo, .width_auto_demo')
								.tm_editbale(
										'init',
										{
											theme : 'round-button-theme',
											outside_btn : {
												onshow : "&nbsp;<i class='fa fa-pencil'></i>&nbsp;",
												new_line : false,
												onhover : ''
											},
											inside_btn : {
												new_line : false,
												ok : "<i class='fa fa-check'></i>",
												cancel : "<i class='fa fa-times'></i>"
											}
										});
						setTimeout(
								function() {
									$('#radio_demo')
											.tm_editbale(
													'init',
													{
														theme : 'round-button-theme',
														outside_btn : {
															onshow : "&nbsp;<i class='fa fa-pencil'></i>&nbsp;",
															new_line : false,
															onhover : ''
														},
														inside_btn : {
															new_line : false,
															ok : "<i class='fa fa-check'></i>",
															cancel : "<i class='fa fa-times'></i>"
														}
													});
								}, 350);
					});
</script>
<script>
	(function($) {
		$(window)
				.load(
						function() {

							$(".content")
									.mCustomScrollbar(
											{
												scrollButtons : {
													enable : true
												},
												callbacks : {
													onScrollStart : function() {
														myCallback(this,
																"#onScrollStart")
													},
													onScroll : function() {
														myCallback(this,
																"#onScroll")
													},
													onTotalScroll : function() {
														myCallback(this,
																"#onTotalScroll")
													},
													onTotalScrollOffset : 60,
													onTotalScrollBack : function() {
														myCallback(this,
																"#onTotalScrollBack")
													},
													onTotalScrollBackOffset : 50,
													whileScrolling : function() {
														myCallback(this,
																"#whileScrolling");
														$("#mcs-top").text(
																this.mcs.top);
														$("#mcs-dragger-top")
																.text(
																		this.mcs.draggerTop);
														$("#mcs-top-pct").text(
																this.mcs.topPct
																		+ "%");
														$("#mcs-direction")
																.text(
																		this.mcs.direction);
														$(
																"#mcs-total-scroll-offset")
																.text("60");
														$(
																"#mcs-total-scroll-back-offset")
																.text("50");
													},
													alwaysTriggerOffsets : false
												}
											});

							function myCallback(el, id) {
								if ($(id).css("opacity") < 1) {
									return;
								}
								var span = $(id).find("span");
								clearTimeout(timeout);
								span.addClass("on");
								var timeout = setTimeout(function() {
									span.removeClass("on")
								}, 350);
							}

							$(".callbacks a")
									.click(
											function(e) {
												e.preventDefault();
												$(this).parent().toggleClass(
														"off");
												if ($(e.target).parent().attr(
														"id") === "alwaysTriggerOffsets") {
													var opts = $(".content")
															.data("mCS").opt;
													if (opts.callbacks.alwaysTriggerOffsets) {
														opts.callbacks.alwaysTriggerOffsets = false;
													} else {
														opts.callbacks.alwaysTriggerOffsets = true;
													}
												}
											});

						});
	})(jQuery);
</script>

<script>
	$('.textarea').wysihtml5();
</script>
<script type="text/javascript" charset="utf-8">
	$(prettyPrint);
</script>
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
<script type='text/javascript'>
	$(document).ready(function() {

		jQuery('.carousel').carousel({
			interval : 4000
		})

	});
</script>
<script>
	$('#myCarousel').carousel({
		interval : 3000
	});
	$('#myCarousel1').carousel({
		interval : 4000
	});
	$('#myCarousel3').carousel({
		interval : 4000
	});
	$('#myCarousel6').carousel({
		interval : 5000
	});
</script>
<SCRIPT>
	$(document)
			.ready(
					function() {
						var showChar = 100;
						var ellipsestext = "...";
						var moretext = "more";
						var lesstext = "less";
						$('.more')
								.each(
										function() {
											var content = $(this).html();

											if (content.length > showChar) {

												var c = content.substr(0,
														showChar);
												var h = content.substr(
														showChar - 1,
														content.length
																- showChar);

												var html = c
														+ '<span class="moreelipses">'
														+ ellipsestext
														+ '</span>&nbsp;<span class="morecontent"><span>'
														+ h
														+ '</span>&nbsp;&nbsp;<a href="" class="morelink">'
														+ moretext
														+ '</a></span>';

												$(this).html(html);
											}

										});

						$(".morelink").click(function() {
							if ($(this).hasClass("less")) {
								$(this).removeClass("less");
								$(this).html(moretext);
							} else {
								$(this).addClass("less");
								$(this).html(lesstext);
							}
							$(this).parent().prev().toggle();
							$(this).prev().toggle();
							return false;
						});
					});
</SCRIPT>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						//Horizontal Tab
						$('.parentHorizontalTab').easyResponsiveTabs({
							type : 'default', //Types: default, vertical, accordion
							width : 'auto', //auto or any width like 600px
							fit : true, // 100% fit in a container
							tabidentify : 'hor_1', // The tab groups identifier
							activate : function(event) { // Callback function if tab is switched
								var $tab = $(this);
								var $info = $('#nested-tabInfo');
								var $name = $('span', $info);
								$name.text($tab.text());
								$info.show();
							}
						});

						// Child Tab
						$(
								'#ChildVerticalTab_1, #ChildVerticalTab_2, #ChildVerticalTab_3')
								.easyResponsiveTabs({
									type : 'vertical',
									width : 'auto',
									fit : true,
									tabidentify : 'ver_1', // The tab groups identifier
									activetab_bg : '#fff', // background color for active tabs in this group
									inactive_bg : '#F5F5F5', // background color for inactive tabs in this group
									active_border_color : '#c1c1c1', // border color for active tabs heads in this group
									active_content_border_color : '#5AB1D0' // border color for active tabs contect in this group so that it matches the tab head border
								});

						//Vertical Tab
						$('#parentVerticalTab').easyResponsiveTabs({
							type : 'vertical', //Types: default, vertical, accordion
							width : 'auto', //auto or any width like 600px
							fit : true, // 100% fit in a container
							closed : 'accordion', // Start closed if in accordion view
							tabidentify : 'hor_1', // The tab groups identifier
							activate : function(event) { // Callback function if tab is switched
								var $tab = $(this);
								var $info = $('#nested-tabInfo2');
								var $name = $('span', $info);
								$name.text($tab.text());
								$info.show();
							}
						});
					});
</script>
<script>
	$('.js-smart-tabs').smartTabs();
	$('.js-smart-tabs--tabs').smartTabs({
		layout : 'tabs'
	});
	$('.js-smart-tabs--accordion').smartTabs({
		layout : 'accordion'
	});
</script>

<script>
$("div.demo-1 :text").minical();
</script>