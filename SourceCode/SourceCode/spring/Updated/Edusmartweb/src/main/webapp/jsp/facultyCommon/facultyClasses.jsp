<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">

var editproductId;
var editLevel;
var editTopic;
var editTypeOfBatch;
var editNumberOfLectures;
var editSubjectName;
var editProductDescription;
var editNotify;
var editAttemptFrom;
var editAttemptTo;

/* function resetDivs()
{
document.getElementById('live').className ="tab-pane active";
document.getElementById('virtual').className ="tab-pane";
document.getElementById('online').className ="tab-pane";
document.getElementById('study').className ="tab-pane";
} */

function editProduct(productId,level,topic,typeOfBatch,numberOfLectures,subjectName,productDescription,notify,attemptFrom,attemptTo){
	//tab-pane active
/* document.getElementById('live').className ="tab-pane";
document.getElementById('virtual').className ="tab-pane";
document.getElementById('online').className ="tab-pane";
document.getElementById('study').className ="tab-pane";
document.getElementById(divId).className ="tab-pane active"; */ 

alert(productId);
	$('#editproductId').val(productId);
	$('#editLevel').val(level);
	$('#editTopic').val(topic);
	$('#editTypeOfBatch').val(typeOfBatch);
	$('#editNumberOfLectures').val(numberOfLectures);
	$('#editSubjectName').val(subjectName);
	$('#editProductDescription').val(productDescription);
	$('#editNotify').val(notify);
	$('#editAttemptFrom').val(attemptFrom);
	$('#editAttemptTo').val(attemptTo);

}
	

function resetProduct()
{
	alert();
	$('#editproductId').val(editproductId);
	$('#editLevel').val(editLevel);
	$('#editTopic').val(editTopic);
	$('#editTypeOfBatch').val(editTypeOfBatch);
	$('#editNumberOfLectures').val(editNumberOfLectures);
	$('#editSubjectName').val(editSubjectName);
	$('#editProductDescription').val(editProductDescription);
	$('#editNotify').val(editNotify);
	$('#editAttemptFrom').val(editAttemptFrom);
	$('#editAttemptTo').val(editAttemptTo); 
	
}

function removeProduct(productId){
	alert(productId);
	$.ajax({  
		type : "post",  
	    url : "removeProduct.action",   
	    data : "productId=" + productId ,  
	    success : function(response) {  
	    
	     window.location.href = "facultyClassesPage";  
	    }
	   
	   });  
		
	}

</script>

<script>
function editVirtualProduct(productId,productAutoId,level,topic,typeOfBatch,numberOfLectures,subjectName,productDescription,notify,attemptFrom,attemptTo){
	

alert(productId);
	$('#editVproductId').val(productId);
	$('#editVProductAutoId').val(productAutoId);
	$('#editVLevel').val(level);
	$('#editVTopic').val(topic);
	$('#editVTypeOfBatch').val(typeOfBatch);
	$('#editVNumberOfLectures').val(numberOfLectures);
	$('#editVSubjectName').val(subjectName);
	$('#editVProductDescription').val(productDescription);
	$('#editVNotify').val(notify);
	$('#editVAttemptFrom').val(attemptFrom);
	$('#editVAttemptTo').val(attemptTo);

}


function removeVirtualProduct(productId){
	alert(productId);
	$.ajax({  
		type : "post",  
	    url : "removeVirtualProduct.action",   
	    data : "productId=" + productId ,  
	    success : function(response) {  
	    
	     window.location.href = "facultyClassesPage";  
	    }
	   
	   });  
		
	}


</script>

<script type="text/javascript">

function editOnlineProduct(productId,productAutoId,level,topic,typeOfBatch,numberOfLectures,subjectName,productDescription,notify,attemptFrom,attemptTo,fees){

alert(productId);
$('#editOproductId').val(productId);
$('#editOProductAutoId').val(productAutoId);
$('#editOLevel').val(level);
$('#editOTopic').val(topic);
$('#editOTypeOfBatch').val(typeOfBatch);
$('#editONumberOfLectures').val(numberOfLectures);
$('#editOSubjectName').val(subjectName);
$('#editOProductDescription').val(productDescription);
$('#editONotify').val(notify);
$('#editOAttemptFrom').val(attemptFrom);
$('#editOAttemptTo').val(attemptTo);
$('#editOFees').val(fees);

}


function removeOnlineProduct(productId){
	alert(productId);
	$.ajax({  
		type : "post",  
	    url : "removeOnlineProduct.action",   
	    data : "productId=" + productId ,  
	    success : function(response) {  
	    
	     window.location.href = "facultyClassesPage";  
	    }
	   
	   });  
		
	}

</script>

<script type="text/javascript">

function editStudyProduct(productId,productAutoId,level,topic,typeOfMedium,numberOfLectures,subjectName,productDescription,notify,attemptFrom,attemptTo,fees){

alert(productId);
$('#editSproductId').val(productId);
$('#editSProductAutoId').val(productAutoId);
$('#editSLevel').val(level);
$('#editSTopic').val(topic);
$('#editSTypeOfMedium').val(typeOfMedium);
$('#editSNumberOfLectures').val(numberOfLectures);
$('#editSSubjectName').val(subjectName);
$('#editSProductDescription').val(productDescription);
$('#editSNotify').val(notify);
$('#editSAttemptFrom').val(attemptFrom);
$('#editSAttemptTo').val(attemptTo);
$('#editSFees').val(fees);

}


function removeStudyProduct(productId){
	alert(productId);
	$.ajax({  
		type : "post",  
	    url : "removeStudyProduct.action",   
	    data : "productId=" + productId ,  
	    success : function(response) {  
	    
	     window.location.href = "facultyClassesPage";  
	    }
	   
	   });  
		
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


 <div class="col-md-12 home-bg ">
 <!--Starting For Add Purpose-->     
 <div class="modal fade " id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" 
          data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
                <div class="modal-body pd-none">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="padding:10px;"><span aria-hidden="true">&times;</span> </button>
                  <div class="panel panel-default">
                    <div class="panel-body ">
                  
                        <div class="parentHorizontalTab">
                          <ul class="resp-tabs-list hor_1">
                            <li>CA</li>
                            <li>CS</li>
                            <li>CMA</li>
                          </ul>

                          
                          <div class="resp-tabs-container hor_1 pos-tab">
                           <div>
                           <div class="tab2">
  			<ul>
  				<li><a href="#tabs-1" class="btn btn-primary">Live <i class="fa fa-plus-circle"></i>
               
            </a></li>
  				<li><a href="#tabs-2" class="btn btn-success">Virtual  <i class="fa fa-plus-circle"></i>
              
            </a></li>
  				<li><a href="#tabs-3" class="btn btn-info">Online <i class="fa fa-plus-circle"></i>
              
             </a></li>
  				<li><a href="#tabs-4" class="btn btn-warning">Study Material <i class="fa fa-plus-circle"></i>
               
            </a></li>
  			</ul>
			
			
			
  			<div id="tabs-1">
  <!-- For Add Live product -->		
               <form:form action="saveProductValues" commandName="productFormModel" method="post">
																<div class="panel panel-default">
																	<div class="panel-heading">
																		<h4 class="pull-left col-lg-3">Live Classes</h4>
																		<div class=" col-lg-3">
																			<select type="text" name="product.attemptFrom"
																				id="" class="form-control ">
																				<option>Apr 2015</option>
																				<option>Oct 2016</option>
																			</select>
																		</div>
																		<div class="  col-lg-3 mrg-bt">
																			<select type="text" name="product.attemptTo"
																				id="" class="form-control ">
																				<option>Oct 2015</option>
																				<option>Apl 2016</option>
																			</select>
																		</div>
																		<span class=" pull-right col-lg-2">
																			<div class="input-group">
																				<input type="text" name="product.productAutoId" id="setProductAutoId" value="${productAutoId}"
																					class="form-control date-width lginput-lg"
																					placeholder="ID">
																			</div>
																		</span>
																		<div class="clearfix"></div>
																	</div>
																	<div class="bg-white ">
																		<div class="panel-group" style="margin-top: 0px;">
																			<div class="panel panel-default" id="panel1">
																				<div id="collapseOne"
																					class="panel-collapse collapse in">
																					<div class="panel-body">
																						<div class="profile-new">
																							<div class="col-lg-3 ">
																								<img alt="" src="entireApp/images/students.jpg"
																									class="img-responsive"> <br>
																								<p>Share Syllabus</p>
																								<div class="form-group">
																									<input type="file" name="pic" accept="image/*"
																										class="form-control" style="font-size: 10px;">
																								</div>

																								<p>
																									<a
																										href="javascript:eToggle('atag1','helptxt');"
																										id="atag1">More Info <i
																										class="fa fa-plus-square"></i>
																									</a>
																								</p>
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
																													<select type="text" name="product.level"
																														id="" class="form-control ">
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
																														name="subjectLevelTB.subjectName"
																														id="" class="form-control ">
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
																												<input type="text" name="product.topic"
																													id="" class="form-control"
																													placeholder="Topic">
																											</div>
																										</div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<select type="text"
																													name="product.typeOfBatch"
																													id="" class="form-control ">
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
																													name="product.numberOfLectures"
																													id=""
																													class="form-control "
																													placeholder="Number of lectures">
																											</div>
																										</div>
																										<div class="clearfix"></div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<input type="text" name="product.fees"
																													id="" class="form-control "
																													placeholder="Fees" disabled>
																											</div>
																										</div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group  ">
																												<div class="input-group date " id="dp1">
																													<span class="input-group-addon in"><i
																														class="fa fa-calendar"></i> </span> <input
																														type="text"
																														class="datepicker form-control date-width lg"
																														id="txtStartDateDesk"
																														placeholder="Select Start date" disabled>
																												</div>
																											</div>
																										</div>

																									</div>
																								</div>
																							</div>
																							<div class="clearfix"></div>
																							<div id="helptxt" style="display: none">
																								<div
																									class="col-lg-12 col-sm-12 col-xs-12 left-none">
																									<form>
																										<input type="text" id=""
																											name="product.productDescription"
																											class="form-control"
																											placeholder="Write a description here...">
																									</form>
																									<br>
																								</div>
																							</div>
																							<div class="clearfix"></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="bottom-bg live-batch"
																		style="padding-bottom: 0px;">
																		<div class="col-lg-9 rht-bdr">
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.batchTiming"
																					id="" class="form-control"
																					placeholder="Batch timing" disabled>
																			</div>
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.capacity"
																					id="" class="form-control"
																					placeholder="Capacity" disabled>
																			</div>
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.days"
																					id="" class="form-control"
																					placeholder="Days" disabled>
																			</div>
																		</div>
																		<div class="col-lg-3 ">
																			<div class="form-group">
																				<input type="text" name="first_name" id=""
																					class="form-control"
																					placeholder="Insert Video Link">
																			</div>
																		</div>

																		<div class="clearfix"></div>
																			
																		
																	</div>
																	
												<div class="row">						
											<div class="col-md-7">
												<div class="form-group">
													<div class="btn-group">
														<button type="submit" class="btn btn-primary">Submit</button>
													</div>
													<div class="btn-group">
														<button type="button" class="btn btn-default" onclick="resetProduct()">Reset</button>
													</div>
												</div>
											</div>
											<div class="col-md-5">
												<a data-original-title="Share on your timeline" href="#" class="pull-left share" data-toggle="tooltip" title="" data-placement="bottom">
													<img src="entireApp/images/plane.png">
												</a>
												<div class="form-group pull-right">
													<select style="display: none;" type="text" name="product.notify" id="" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
														<option value="All" data-icon="">Follower</option>
														<option value="Academy" data-icon="">Center</option>
														<option value="Student" data-icon="">Student</option>
													</select>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
																	
																	
																	
																</div>
												

												
																
		</form:form>
 <!-- End of Add Live product -->				      			
            </div>
  			<div id="tabs-2">
  			
  <!-- For Add virtual product -->			
              		<form:form action="saveVirtualProduct" commandName="virtualProduct" method="post">				
              													 <div class="panel panel-default">
																	<div class="panel-heading">
																		<h4 class="pull-left col-lg-3">Virtual Classes</h4>
																		<div class=" col-lg-3">
																			<select type="text" name="product.attemptFrom"
																				id="" class="form-control ">
																				<option>Apr 2015</option>
																				<option>Oct 2016</option>
																			</select>
																		</div>
																		<div class="  col-lg-3 mrg-bt">
																			<select type="text" name="product.attemptTo"
																				id="" class="form-control ">
																				<option>Oct 2015</option>
																				<option>Apl 2016</option>
																			</select>
																		</div>
																		<span class=" pull-right col-lg-2">
																			<div class="input-group">
																				<input type="text" name="product.productAutoId" id=""
																				value="${productAutoId}" class="form-control date-width lginput-lg"
																					placeholder="ID">
																			</div>
																		</span>
																		<div class="clearfix"></div>
																	</div>
																	<div class="bg-white ">
																		<div class="panel-group" style="margin-top: 0px;">
																			<div class="panel panel-default" id="panel1">
																				<div id="collapseOne"
																					class="panel-collapse collapse in">
																					<div class="panel-body">
																						<div class="profile-new">
																							<div class="col-lg-3 ">
																								<img alt="" src="entireApp/images/students.jpg"
																									class="img-responsive"> <br>
																								<p>Share Syllabus</p>
																								<div class="form-group">
																									<input type="file" name="pic" accept="image/*"
																										class="form-control" style="font-size: 10px;">
																								</div>

																								<p>
																									<a
																										href="javascript:eToggle('atag2','helptxt');"
																										id="atag2">More Info <i
																										class="fa fa-plus-square"></i>
																									</a>
																								</p>
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
																													<select type="text" name="product.level"
																														id="" class="form-control ">
																														<option>Select Level</option>
																														<option>CPT</option>
																														<option>IPC</option>
																														<option>Final</option>
																													</select>
																												</div>
																											</div>
																											<div class="col-xs-12 col-sm-5 col-md-5">
																												<div class="form-group">
																													<select type="text" name="subjectLevelTB.subjectName"
																														id="" class="form-control ">
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
																												<input type="text" name="product.topic"
																													id="" class="form-control"
																													placeholder="Topic">
																											</div>
																										</div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<select type="text" name="product.typeOfBatch"
																													id="" class="form-control ">
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
																												<input type="text" name="product.numberOfLectures"
																													id="" class="form-control "
																													placeholder="Number of lectures">
																											</div>
																										</div>
																										<div class="clearfix"></div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<input type="text" name="product.fees"
																													id="" class="form-control "
																													placeholder="Fees" disabled>
																											</div>
																										</div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group  ">
																												<div class="input-group date " id="dp1">
																													<span class="input-group-addon in"><i
																														class="fa fa-calendar"></i> </span> <input
																														type="text"
																														class="datepicker form-control date-width lg"
																														id=""
																														placeholder="Select Start date" disabled>
																												</div>
																											</div>
																										</div>

																									</div>
																								</div>
																							</div>
																							<div class="clearfix"></div>
																							<div id="helptxt" style="display: none">
																								<div
																									class="col-lg-12 col-sm-12 col-xs-12 left-none">
																									<form>
																										<input type="text" id="" name="product.productDescription" class="form-control"
																											placeholder="Write a description here...">
																									</form>
																									<br>
																								</div>
																							</div>
																							<div class="clearfix"></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="bottom-bg live-batch"
																		style="padding-bottom: 0px;">
																		<div class="col-lg-9 rht-bdr">
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.batchTiming"
																					id="" class="form-control"
																					placeholder="Batch timing" disabled>
																			</div>
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.capacity"
																					id="" class="form-control"
																					placeholder="Capacity" disabled>
																			</div>
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.days"
																					id="" class="form-control"
																					placeholder="Days" disabled>
																			</div>
																		</div>
																		<div class="col-lg-3 ">
																			<div class="form-group">
																				<input type="text" name="first_name" id=""
																					class="form-control"
																					placeholder="Insert Video Link">
																			</div>
																		</div>

																		<div class="clearfix"></div>
																			
																		
																	</div>
															<div class="row">						
											<div class="col-md-7">
												<div class="form-group">
													<div class="btn-group">
														<button type="submit" class="btn btn-primary">Submit</button>
													</div>
													<div class="btn-group">
														<button type="button" class="btn btn-default" onclick="">Reset</button>
													</div>
												</div>
											</div>
											<div class="col-md-5">
												<a data-original-title="Share on your timeline" href="#" class="pull-left share" data-toggle="tooltip" title="" data-placement="bottom">
													<img src="entireApp/images/plane.png">
												</a>
												<div class="form-group pull-right">
													<select style="display: none;" type="text" name="product.notify" id="" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
														<option value="All" data-icon="">Follower</option>
														<option value="Academy" data-icon="">Center</option>
														<option value="Student" data-icon="">Student</option>
													</select>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>		
															
																</div> 
					</form:form>  
<!--End of Add Virtual product form -->					   
            </div>                      
  			<div id="tabs-3">
  <!--Starting Add online class's -->
  
  <form:form action="saveOnlineProduct" commandName="onlineproduct" method="post">
               							<div class="panel panel-default">
													<div class="panel-heading">
																		<h4 class="pull-left col-lg-3">OnLine Classes</h4>
																		<div class=" col-lg-3">
																			<select type="text" name="product.attemptFrom"
																				id="" class="form-control ">
																				<option>Apr 2015</option>
																				<option>Oct 2016</option>
																			</select>
																		</div>
																		<div class="  col-lg-3 mrg-bt">
																			<select type="text" name="product.attemptTo"
																				id="" class="form-control ">
																				<option>Oct 2015</option>
																				<option>Apl 2016</option>
																			</select>
																		</div>
																		<span class=" pull-right col-lg-2">
																			<div class="input-group">
																				<input type="text" name="product.productAutoId" id=""
																				value="${productAutoId}" class="form-control date-width lginput-lg"
																					placeholder="ID">
																			</div>
																		</span>
																		<div class="clearfix"></div>
																	</div>
																	<div class="bg-white ">
																		<div class="panel-group" style="margin-top: 0px;">
																			<div class="panel panel-default" id="panel1">
																				<div id="collapseOne"
																					class="panel-collapse collapse in">
																					<div class="panel-body">
																						<div class="profile-new">
																							<div class="col-lg-3 ">
																								<img alt="" src="entireApp/images/students.jpg"
																									class="img-responsive"> <br>
																								<p>Share Syllabus</p>
																								<div class="form-group">
																									<input type="file" name="pic" accept="image/*"
																										class="form-control" style="font-size: 10px;">
																								</div>

																								<p>
																									<a
																										href="javascript:eToggle('atag3','helptxt');"
																										id="atag3">More Info <i
																										class="fa fa-plus-square"></i>
																									</a>
																								</p>
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
																													<select type="text" name="product.level"
																														id="" class="form-control ">
																														<option>Select Level</option>
																														<option>CPT</option>
																														<option>IPC</option>
																														<option>Final</option>
																													</select>
																												</div>
																											</div>
																											<div class="col-xs-12 col-sm-5 col-md-5">
																												<div class="form-group">
																													<select type="text" name="subjectLevelTB.subjectName"
																														id="" class="form-control ">
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
																												<input type="text" name="product.topic"
																													id="" class="form-control"
																													placeholder="Topic">
																											</div>
																										</div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<select type="text" name="product.typeOfBatch"
																													id="" class="form-control ">
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
																												<input type="text" name="product.numberOfLectures"
																													id="" class="form-control "
																													placeholder="Number of lectures">
																											</div>
																										</div>
																										<div class="clearfix"></div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<input type="text" name="product.fees"
																													id="" class="form-control "
																													placeholder="Price">
																											</div>
																										</div>
																										<!-- <div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group  ">
																												<div class="input-group date " id="dp1">
																													<span class="input-group-addon in"><i
																														class="fa fa-calendar"></i> </span> <input
																														type="text"
																														class="datepicker form-control date-width lg"
																														id="txtStartDateDesk"
																														placeholder="Select Start date" disabled>
																												</div>
																											</div>
																										</div> -->
																										
																										<div class="col-lg-3 ">
																			<div class="form-group">
																				<input type="text" name="first_name" id=""
																					class="form-control"
																					placeholder="Insert Video Link">
																			</div>
																		</div>

																									</div>
																								</div>
																							</div>
																							<div class="clearfix"></div>
																							<div id="helptxt" style="display: none">
																								<div
																									class="col-lg-12 col-sm-12 col-xs-12 left-none">
																									<form>
																										<input type="text" id="" name="product.productDescription" class="form-control"
																											placeholder="Write a description here...">
																									</form>
																									<br>
																								</div>
																							</div>
																							<div class="clearfix"></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="bottom-bg live-batch"
																		style="padding-bottom: 0px;">
																		
																		<!-- <div class="col-lg-9 rht-bdr">
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.batchTiming"
																					id="" class="form-control"
																					placeholder="Batch timing" disabled>
																			</div>
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.capacity"
																					id="" class="form-control"
																					placeholder="Capacity" disabled>
																			</div>
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.days"
																					id="" class="form-control"
																					placeholder="Days" disabled>
																			</div>
																		</div> -->
																		
																		

																		
																			
																		
																	</div>
															<div class="row">						
											<div class="col-md-7">
												<div class="form-group">
													<div class="btn-group">
														<button type="submit" class="btn btn-primary">Submit</button>
													</div>
													<div class="btn-group">
														<button type="button" class="btn btn-default" onclick="">Reset</button>
													</div>
												</div>
											</div>
											<div class="col-md-5">
												<a data-original-title="Share on your timeline" href="#" class="pull-left share" data-toggle="tooltip" title="" data-placement="bottom">
													<img src="entireApp/images/plane.png">
												</a>
												<div class="form-group pull-right">
													<select style="display: none;" type="text" name="product.notify" id="" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
														<option value="All" data-icon="">Follower</option>
														<option value="Academy" data-icon="">Center</option>
														<option value="Student" data-icon="">Student</option>
													</select>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>		
															
								</div> 
</form:form>
           
 <!-- End of Add online class's --> 
    				          
            </div>
  			<div id="tabs-4">
  <!--Starting of Save Study Material  -->
               <form:form action="saveStudyProduct" commandName="studyProduct" method="post">
               							<div class="panel panel-default">
													<div class="panel-heading">
																		<h4 class="pull-left col-lg-3">Study Material</h4>
																		<div class=" col-lg-3">
																			<select type="text" name="product.attemptFrom"
																				id="" class="form-control ">
																				<option>Apr 2015</option>
																				<option>Oct 2016</option>
																			</select>
																		</div>
																		<div class="  col-lg-3 mrg-bt">
																			<select type="text" name="product.attemptTo"
																				id="" class="form-control ">
																				<option>Oct 2015</option>
																				<option>Apl 2016</option>
																			</select>
																		</div>
																		<span class=" pull-right col-lg-2">
																			<div class="input-group">
																				<input type="text" name="product.productAutoId" id=""
																				value="${productAutoId}" class="form-control date-width lginput-lg"
																					placeholder="ID">
																			</div>
																		</span>
																		<div class="clearfix"></div>
																	</div>
																	<div class="bg-white ">
																		<div class="panel-group" style="margin-top: 0px;">
																			<div class="panel panel-default" id="panel1">
																				<div id="collapseOne"
																					class="panel-collapse collapse in">
																					<div class="panel-body">
																						<div class="profile-new">
																							<div class="col-lg-3 ">
																								<img alt="" src="entireApp/images/students.jpg"
																									class="img-responsive"> <br>
																								<p>Share Syllabus</p>
																								<div class="form-group">
																									<input type="file" name="pic" accept="image/*"
																										class="form-control" style="font-size: 10px;">
																								</div>

																								<p>
																									<a
																										href="javascript:eToggle('atag4','helptxt');"
																										id="atag4">More Info <i
																										class="fa fa-plus-square"></i>
																									</a>
																								</p>
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
																													<select type="text" name="product.level"
																														id="" class="form-control ">
																														<option>Select Level</option>
																														<option>CPT</option>
																														<option>IPC</option>
																														<option>Final</option>
																													</select>
																												</div>
																											</div>
																											<div class="col-xs-12 col-sm-5 col-md-5">
																												<div class="form-group">
																													<select type="text" name="subjectLevelTB.subjectName"
																														id="" class="form-control ">
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
																												<input type="text" name="product.topic"
																													id="" class="form-control"
																													placeholder="Topic">
																											</div>
																										</div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<select type="text" name="product.typeOfMedium"
																													id="" class="form-control ">
																													<option>Product Type</option>
																													<option>Other</option>
																													<option>CD</option>
																													<option>Book</option>
																													<option>Pendrive</option>
																												</select>
																											</div>
																										</div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<input type="text" name="product.numberOfLectures"
																													id="" class="form-control "
																													placeholder="Number of lectures">
																											</div>
																										</div>
																										<div class="clearfix"></div>
																										<div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group">
																												<input type="text" name="product.fees"
																													id="" class="form-control "
																													placeholder="Price">
																											</div>
																										</div>
																										<!-- <div class="col-xs-12 col-sm-6 col-md-6">
																											<div class="form-group  ">
																												<div class="input-group date " id="dp1">
																													<span class="input-group-addon in"><i
																														class="fa fa-calendar"></i> </span> <input
																														type="text"
																														class="datepicker form-control date-width lg"
																														id="txtStartDateDesk"
																														placeholder="Select Start date" disabled>
																												</div>
																											</div>
																										</div> -->
																										
																										<div class="col-lg-3 ">
																			<div class="form-group">
																				<input type="text" name="first_name" id=""
																					class="form-control"
																					placeholder="Insert Video Link">
																			</div>
																		</div>

																									</div>
																								</div>
																							</div>
																							<div class="clearfix"></div>
																							<div id="helptxt" style="display: none">
																								<div
																									class="col-lg-12 col-sm-12 col-xs-12 left-none">
																									<form>
																										<input type="text" id="" name="product.productDescription" class="form-control"
																											placeholder="Write a description here...">
																									</form>
																									<br>
																								</div>
																							</div>
																							<div class="clearfix"></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="bottom-bg live-batch"
																		style="padding-bottom: 0px;">
																		
																		<!-- <div class="col-lg-9 rht-bdr">
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.batchTiming"
																					id="" class="form-control"
																					placeholder="Batch timing" disabled>
																			</div>
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.capacity"
																					id="" class="form-control"
																					placeholder="Capacity" disabled>
																			</div>
																			<div class="form-group col-lg-4">
																				<input type="text" name="product.days"
																					id="" class="form-control"
																					placeholder="Days" disabled>
																			</div>
																		</div> -->
																												

																		
																			
																		
																	</div>
															<div class="row">						
											<div class="col-md-7">
												<div class="form-group">
													<div class="btn-group">
														<button type="submit" class="btn btn-primary">Submit</button>
													</div>
													<div class="btn-group">
														<button type="button" class="btn btn-default" onclick="">Reset</button>
													</div>
												</div>
											</div>
											<div class="col-md-5">
												<a data-original-title="Share on your timeline" href="#" class="pull-left share" data-toggle="tooltip" title="" data-placement="bottom">
													<img src="entireApp/images/plane.png">
												</a>
												<div class="form-group pull-right">
													<select style="display: none;" type="text" name="product.notify" id="" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
														<option value="All" data-icon="">Follower</option>
														<option value="Academy" data-icon="">Center</option>
														<option value="Student" data-icon="">Student</option>
													</select>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>		
															
								</div> 
</form:form>   
 <!--End of save Study Material--> 			
            </div>
  	</div>
                          </div>
                          
                          <div>
                           <div class="tab2">
  			<ul>
  				<li><a href="#tabs-1" class="btn btn-primary">Live <i class="fa fa-plus-circle"></i>
               
            </a></li>
  				<li><a href="#tabs-2" class="btn btn-success">Virtual  <i class="fa fa-plus-circle"></i>
              
            </a></li>
  				<li><a href="#tabs-3" class="btn btn-info">Online <i class="fa fa-plus-circle"></i>
              
             </a></li>
  				<li><a href="#tabs-4" class="btn btn-warning">Study Material <i class="fa fa-plus-circle"></i>
               
            </a></li>
  			</ul>
  			<div id="tabs-1">
               <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag5','helptxt');" 
    id="atag5">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Batch Type</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select Start date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-9 rht-bdr">
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Days" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 ">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right ">
                            <select type="text" class="form-control multiselect multiselect-icon " multiple="multiple" role="multiselect">
                              <option value="0" data-icon="">Follower</option>
                              <option value="1" data-icon="">Center</option>
                              <option value="2" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
                                  </div>       			
            </div>
  			<div id="tabs-2">
               <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Virtual Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag6','helptxt');" 
    id="atag6">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Batch Type</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select Start date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-9 rht-bdr">
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Days" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 ">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                      <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="0" data-icon="">Follower</option>
                              <option value="1" data-icon="">Center</option>
                              <option value="2" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
                                  </div>       
            </div>                      
  			<div id="tabs-3">
               <div class="panel panel-default">
                                    <div class="panel-heading font1">
                                      <h4 class="pull-left col-lg-3 "> Online Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag6','helptxt');" 
    id="atag6">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Regular Batch</option>
                                                            <option>Regular Batch</option>
                                                            <option>Regular Batch</option>
                                                            <option>Regular Batch</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                           <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="price" id="price" class="form-control " placeholder="Price" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Inser Video link here" >
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                      <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Publish</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="0" data-icon="">Follower</option>
                              <option value="1" data-icon="">Center</option>
                              <option value="2" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
                                  </div>      				          
            </div>
  			<div id="tabs-4">
               <div class="panel panel-default">
                                    <div class="panel-heading font1">
                                      <h4 class="pull-left col-lg-3"> Study Material </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag7','helptxt');" 
    id="atag7">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Product type</option>
                                                            <option>Pen Dirve</option>
                                                            <option>CD</option>
                                                            <option>dcfvg</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                       <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="No of charts"  >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="price"  >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                        <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert demo video" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                      <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Publish</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="0" data-icon="">Follower</option>
                              <option value="1" data-icon="">Center</option>
                              <option value="2" data-icon="">Student</option>
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
                          
                          <div>
                           <div class="tab2">
  			<ul>
  				<li><a href="#tabs-1" class="btn btn-primary">Live <i class="fa fa-plus-circle"></i>
               
            </a></li>
  				<li><a href="#tabs-2" class="btn btn-success">Virtual  <i class="fa fa-plus-circle"></i>
              
            </a></li>
  				<li><a href="#tabs-3" class="btn btn-info">Online <i class="fa fa-plus-circle"></i>
              
             </a></li>
  				<li><a href="#tabs-4" class="btn btn-warning">Study Material <i class="fa fa-plus-circle"></i>
               
            </a></li>
  			</ul>
  			<div id="tabs-1">
               <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag8','helptxt');" 
    id="atag8">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Batch Type</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select Start date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-9 rht-bdr">
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Days" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 ">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right ">
                            <select type="text" class="form-control multiselect multiselect-icon " multiple="multiple" role="multiselect">
                              <option value="0" data-icon="">Follower</option>
                              <option value="1" data-icon="">Center</option>
                              <option value="2" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
                                  </div>       			
            </div>
  			<div id="tabs-2">
               <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Virtual Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag9','helptxt');" 
    id="atag9">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Batch Type</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select Start date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-9 rht-bdr">
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Days" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 ">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                      <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="0" data-icon="">Follower</option>
                              <option value="1" data-icon="">Center</option>
                              <option value="2" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
                                  </div>       
            </div>                      
  			<div id="tabs-3">
               <div class="panel panel-default">
                                    <div class="panel-heading font1">
                                      <h4 class="pull-left col-lg-3 "> Online Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag10','helptxt');" 
    id="atag10">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Regular Batch</option>
                                                            <option>Regular Batch</option>
                                                            <option>Regular Batch</option>
                                                            <option>Regular Batch</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                           <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="price" id="price" class="form-control " placeholder="Price" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Inser Video link here" >
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                      <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Publish</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="0" data-icon="">Follower</option>
                              <option value="1" data-icon="">Center</option>
                              <option value="2" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
                                  </div>      				          
            </div>
  			<div id="tabs-4">
               <div class="panel panel-default">
                                    <div class="panel-heading font1">
                                      <h4 class="pull-left col-lg-3"> Study Material </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag11','helptxt');" 
    id="atag11">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Product type</option>
                                                            <option>Pen Dirve</option>
                                                            <option>CD</option>
                                                            <option>dcfvg</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                       <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="No of charts"  >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="price"  >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                        <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert demo video" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                      <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Publish</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="0" data-icon="">Follower</option>
                              <option value="1" data-icon="">Center</option>
                              <option value="2" data-icon="">Student</option>
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
                        
                          
                         <div class="clearfix"></div>
                          </div>
                        </div>
                   
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
  <!--End of Add Purpose--> 
  
         
 <!--Starting For Edit Purpose-->         
 <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" 
          data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
                <div class="modal-body pd-none">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="padding:10px;"><span aria-hidden="true">&times;</span> </button>
                  <div class="panel panel-default">
                    <div class="panel-body ">
                  
                        <div class="parentHorizontalTab">
                          <ul class="resp-tabs-list hor_1">
                            <li>CA</li>
                           
                          </ul>

                          
                          <div class="resp-tabs-container hor_1 pos-tab">
                           <div>
     
  			<div id="tabs-1">
  <form:form action="editFacultyProduct" commandName="editFacultyLiveProduct" method="post">
  <input type="hidden" value="" name="productId" id="editproductId">
               <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="product.attemptFrom" id="editAttemptFrom" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="product.attemptTo" id="editAttemptTo" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="product.productAutoId" id="editProductAutoId" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag12','helptxt');" 
    id="atag12">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="product.level" id="editLevel" class="form-control " >
                                                              <option>Select Level</option>
                                                      		  <option>CPT</option>
													 		  <option>IPC</option>
													          <option>Final</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="subjectLevelTB.subjectName" id="editSubjectName" class="form-control " >
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
                                                          <input type="text" name="product.topic" id="editTopic" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="product.typeOfBatch" id="editTypeOfBatch" class="form-control " >
                                                            <option>Batch Type</option>
														<option>Other</option>
															<option>Morning</option>
																<option>Evening</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="product.numberOfLectures" id="editNumberOfLectures" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="fees" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" name="startDate" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select Start date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" name="product.productDescription" class="editProductDescription" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-9 rht-bdr">
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Days" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 ">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right ">
                            <select type="text" name="product.notify" id="editNotify"class="form-control multiselect multiselect-icon " multiple="multiple" role="multiselect">
                              <option value="All" data-icon="">Follower</option>
                              <option value="Center" data-icon="">Center</option>
                              <option value="Student" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
        </div> 
 </form:form>      			
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
  <!--End of Live Edit Purpose--> 
  
  <!--Starting for edit Virtual product-->
  
  <div class="modal fade " id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" 
          data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
                <div class="modal-body pd-none">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="padding:10px;"><span aria-hidden="true">&times;</span> </button>
                  <div class="panel panel-default">
                    <div class="panel-body ">
                  
                        <div class="parentHorizontalTab">
                          <ul class="resp-tabs-list hor_1">
                            <li>CA</li>
                           
                          </ul>

                          
                          <div class="resp-tabs-container hor_1 pos-tab">
                           <div>
     
  			<div id="tabs-2">
  <form:form action="editVirtualProduct" commandName="VirtualProduct" method="post">
  <input type="hidden" value="" name="productId" id="editVproductId">
               <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Virtual Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="product.attemptFrom" id="editVAttemptFrom" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="product.attemptTo" id="editVAttemptTo" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="product.productAutoId" id="editVProductAutoId" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag13','helptxt');" 
    id="atag13">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="product.level" id="editVLevel" class="form-control " >
                                                              <option>Select Level</option>
                                                      		  <option>CPT</option>
													 		  <option>IPC</option>
													          <option>Final</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="subjectLevelTB.subjectName" id="editVSubjectName" class="form-control " >
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
                                                          <input type="text" name="product.topic" id="editVTopic" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="product.typeOfBatch" id="editVTypeOfBatch" class="form-control " >
                                                            <option>Batch Type</option>
														<option>Other</option>
															<option>Morning</option>
																<option>Evening</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="product.numberOfLectures" id="editVNumberOfLectures" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="fees" id="" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" name="startDate" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select Start date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" name="product.productDescription" class="editVProductDescription" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-9 rht-bdr">
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Days" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 ">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right ">
                            <select type="text" name="product.notify" id="editVNotify"class="form-control multiselect multiselect-icon " multiple="multiple" role="multiselect">
                              <option value="All" data-icon="">Follower</option>
                              <option value="Center" data-icon="">Center</option>
                              <option value="Student" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
        </div> 
 </form:form>      			
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
  <!--End of Live Edit Purpose--> 
  
  
  
 <!--Start of online Edit-->
 
  <div class="modal fade " id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" 
          data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
                <div class="modal-body pd-none">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="padding:10px;"><span aria-hidden="true">&times;</span> </button>
                  <div class="panel panel-default">
                    <div class="panel-body ">
                  
                        <div class="parentHorizontalTab">
                          <ul class="resp-tabs-list hor_1">
                            <li>CA</li>
                           
                          </ul>

                          
                          <div class="resp-tabs-container hor_1 pos-tab">
                           <div>
     
  			<div id="tabs-3">
  <form:form action="editOnlineProduct" commandName="editOnlinePro" method="post">
  <input type="hidden" value="" name="productId" id="editOproductId">
               <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Online Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="product.attemptFrom" id="editOAttemptFrom" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="product.attemptTo" id="editOAttemptTo" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="product.productAutoId" id="editOProductAutoId" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag14','helptxt');" 
    id="atag14">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="product.level" id="editOLevel" class="form-control " >
                                                              <option>Select Level</option>
                                                      		  <option>CPT</option>
													 		  <option>IPC</option>
													          <option>Final</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="subjectLevelTB.subjectName" id="editOSubjectName" class="form-control " >
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
                                                          <input type="text" name="product.topic" id="editOTopic" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="product.typeOfBatch" id="editOTypeOfBatch" class="form-control " >
                                                            <option>Batch Type</option>
														<option>Other</option>
															<option>Morning</option>
																<option>Evening</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="product.numberOfLectures" id="editONumberOfLectures" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="fees" id="editOFees" class="form-control " placeholder="Fees">
                                                        </div>
                                                      </div>
                                                      <!-- <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" name="startDate" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select Start date" disabled>
                                                          </div>
                                                        </div>
                                                      </div> -->

																						<div class="col-lg-3 ">
																							<div class="form-group">
																								<input type="text" name="first_name"
																									id="first_name" class="form-control"
																									placeholder="Insert Video Link">
																							</div>
																						</div>

																					</div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" name="product.productDescription" class="editOProductDescription" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <!-- <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-9 rht-bdr">
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Days" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 ">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div> -->
                                    <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right ">
                            <select type="text" name="product.notify" id="editONotify"class="form-control multiselect multiselect-icon " multiple="multiple" role="multiselect">
                              <option value="All" data-icon="">Follower</option>
                              <option value="Center" data-icon="">Center</option>
                              <option value="Student" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
        </div> 
 </form:form>      			
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
 <!--End of Online Edit  --> 
 
 
 <!-- Start of Study material -->
 
 	<div class="modal fade " id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" 
          data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
                <div class="modal-body pd-none">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="padding:10px;"><span aria-hidden="true">&times;</span> </button>
                  <div class="panel panel-default">
                    <div class="panel-body ">
                  
                        <div class="parentHorizontalTab">
                          <ul class="resp-tabs-list hor_1">
                            <li>CA</li>
                           
                          </ul>

                          
                          <div class="resp-tabs-container hor_1 pos-tab">
                           <div>
     
  			<div id="tabs-4">
 <form:form action="editStudyProduct" commandName="editStudyMaterial" method="post">
  <input type="hidden" value="" name="productId" id="editSproductId">
               <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Online Classes </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="product.attemptFrom" id="editSAttemptFrom" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="product.attemptTo" id="editSAttemptTo" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="product.productAutoId" id="editSProductAutoId" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                  <p><a href="javascript:eToggle('atag15','helptxt');" 
    id="atag15">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="product.level" id="editSLevel" class="form-control " >
                                                              <option>Select Level</option>
                                                      		  <option>CPT</option>
													 		  <option>IPC</option>
													          <option>Final</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="subjectLevelTB.subjectName" id="editSSubjectName" class="form-control " >
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
                                                          <input type="text" name="product.topic" id="editSTopic" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="product.typeOfMedium" id="editSTypeOfMedium" class="form-control " >
                                                            <option>Type of Medium</option>
														<option>PenDrive</option>
															<option>CD</option>
																<option>DVD</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="product.numberOfLectures" id="editSNumberOfLectures" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="product.fees" id="editSFees" class="form-control " placeholder="Fees">
                                                        </div>
                                                      </div>
                                                      <!-- <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" name="startDate" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select Start date" disabled>
                                                          </div>
                                                        </div>
                                                      </div> -->

																						<div class="col-lg-3 ">
																							<div class="form-group">
																								<input type="text" name="first_name"
																									id="first_name" class="form-control"
																									placeholder="Insert Video Link">
																							</div>
																						</div>

																					</div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" name="product.productDescription" class="editSProductDescription" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <!-- <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-9 rht-bdr">
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                        <div class="form-group col-lg-4">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Days" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 ">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div> -->
                                    <div class="clearfix"></div>
                                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-7">
                          <div class="form-group">
                            <div class="btn-group">
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <div class="btn-group">
                              <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on your timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right ">
                            <select type="text" name="product.notify" id="editSNotify"class="form-control multiselect multiselect-icon " multiple="multiple" role="multiselect">
                              <option value="All" data-icon="">Follower</option>
                              <option value="Center" data-icon="">Center</option>
                              <option value="Student" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                   
        </div> 
 </form:form>      			
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
 <!--End of Edit Study Material --> 
         
        <div  class=" bs-example-tabs tab	">
          <div class="panel panel-default">
            <div class="panel-heading"><i class="fa fa-book fa-lg"></i> Classes
              <div class="btn-group pull-right">
                <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal" data-whatever="" >
                <i class="fa fa-plus"></i> <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add </a>
                </button>
              </div>
            </div>
          </div>
          <div class="clearfix"></div>
          
          
          
          
          <div class="parentHorizontalTab">
            <ul class="resp-tabs-list hor_1">
              <li>CA</li>
              <li>CS</li>
              <li>CMA</li>
            </ul>
            <div class="resp-tabs-container hor_1">
              <div>
<!--Start Live productList -->
                <c:forEach items="${liveProductList}" var="productObj">
						<div class="panel panel-default">
							<div class="panel panel-default">
								<div class="panel-heading" style="padding: 3px 14px !important;">
									<p class="pull-left col-lg-3">
										<strong>Live Classes </strong>
									</p>
									<div class="col-lg-5">
										<p>Applicable for <c:out value="${productObj.attemptFrom}" /> : <c:out value="${productObj.attemptTo}" /> </p>
									</div>
									<span class="  col-lg-2">
										<div class="input-group">
											<p>
												<strong>ID-</strong> ${productObj.productAutoId}
											</p>
										</div>
									</span> <span style="float: right; margin-right: 11px;"> <a
										href="#" data-toggle="modal" data-target="#exampleModal1"
										data-whatever=""
										onclick="editProduct('${productObj.productId}','${productObj.level}','${productObj.topic}','${productObj.typeOfBatch}','${productObj.numberOfLectures}','${productObj.subjectName}','${productObj.productDescription}','${productObj.notify}','${productObj.attemptFrom}','${productObj.attemptTo}')">
											<i class="fa fa-pencil"></i>
									</a> <span style="float: left; margin-right: 11px;"><span
											 data-toggle="tooltip" title=""
											data-placement="bottom" data-original-title="Delete"
											onclick="Show_Div(${productObj.productId})"> <i
												class="fa fa-trash-o blue"></i></span></span>
									</span>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="bg-white ">
								<div id="demo${productObj.productId}"
									style="display: none; position: absolute; z-index: 999; right: 35px; top: 24px;">
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
													<div class="col-lg-2 text-cen">
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
																						<td class=""><span class="level-bg "><c:out
																										value="${productObj.level}" /></span></td>
																						<td class=""><a href="#"
																							data-toggle="tooltip" title=""
																							data-placement="bottom"
																							data-original-title="Economics"><strong><c:out
																										value="${productObj.subjectName}" /></strong></a></td>
																						<td class=""><c:out
																								value="${productObj.topic}" /></td>
																						<td class=""><c:out
																								value="${productObj.typeOfBatch}" />Batch</td>


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
													<div
														class="col-lg-2 personal-bg mg-none text-cen padd-none">
														<div class="date-profile1 mg-tp">
															<p>
																<span>Admission</span> <br> 105
															</p>
														</div>
														<div class="clearfix"></div>

														<div aria-label="First group" role="group"
															class="btn-group">
															<button class="btn btn-default  btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Demo Video"><i
																	class="fa fa-youtube-play orange"></i></a>
															</button>
															<button class="btn btn-default  btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Download Syllabus"><i
																	class="fa fa-book orange"></i></a>
															</button>

														</div>
													</div>
													<div class="clearfix"></div>
													<div class="col-lg-12">
														<div id="helptxt1"
															style="display: none; margin-top: 10px;">
															<div>
																<p><c:out value="${productObj.productDescription}" /></p>
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
<!--End of  Live productList -->               
                
<!-- for virtual productList -->               
   <c:forEach items="${virtualProductList}" var="virtualProductObj">
						<div class="panel panel-default">
							<div class="panel panel-default">
								<div class="panel-heading" style="padding: 3px 14px !important;">
									<p class="pull-left col-lg-3">
										<strong>Virtual Classes </strong>
									</p>
									<div class="col-lg-5">
										<p>Applicable for ${virtualProductObj.attemptFrom} : ${virtualProductObj.attemptTo}</p>
									</div>
									<span class="  col-lg-2">
										<div class="input-group">
											<p>
												<strong>ID-</strong> ${virtualProductObj.productAutoId}
											</p>
										</div>
									</span> <span style="float: right; margin-right: 11px;"> <a
										href="#" data-toggle="modal" data-target="#exampleModal2"
										data-whatever=""
										onclick="editVirtualProduct('${virtualProductObj.productId}','${virtualProductObj.productAutoId}','${virtualProductObj.level}','${virtualProductObj.topic}','${virtualProductObj.typeOfBatch}','${virtualProductObj.numberOfLectures}','${virtualProductObj.subjectName}','${virtualProductObj.productDescription}','${virtualProductObj.notify}','${virtualProductObj.attemptFrom}','${virtualProductObj.attemptTo}')">
											<i class="fa fa-pencil"></i>
									</a> <span style="float: left; margin-right: 11px;"><span
											 data-toggle="tooltip" title=""
											data-placement="bottom" data-original-title="Delete"
											onclick="Show_Div(${virtualProductObj.productId})"> <i
												class="fa fa-trash-o blue"></i></span></span>
									</span>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="bg-white ">
								<div id="demo${virtualProductObj.productId}"
									style="display: none; position: absolute; z-index: 999; right: 35px; top: 24px;">
									<div class="alert alert-block delete-pop">
										<p>Are you sure want to delete?</p>
										<div class="clearfix"></div>
										<a class="confirm col-lg-6 top-rht" data-dismiss=""><button
												type="button" class="btn btn-success btn-xs"
												onclick="removeProduct(${virtualProductObj.productId})">Confirm</button></a>

										<a class="close col-lg-6 top-rht" data-dismiss=""><button
												type="button" class="btn btn-warning btn-xs"
												onClick="hideDeleteMsg(${virtualProductObj.productId})">
												Cancel</button></a>
									</div>
								</div>
								<div class="panel-group mg-none">
									<div class="panel panel-default" id="panel1">
										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="profile-new">
													<div class="col-lg-2 text-cen">
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
																						<td class=""><span class="level-bg "><c:out
																										value="${virtualProductObj.level}" /></span></td>
																						<td class=""><a href="#"
																							data-toggle="tooltip" title=""
																							data-placement="bottom"
																							data-original-title="Economics"><strong><c:out
																										value="${virtualProductObj.subjectName}" /></strong></a></td>
																						<td class=""><c:out
																								value="${virtualProductObj.topic}" /></td>
																						<td class=""><c:out
																								value="${virtualProductObj.typeOfBatch}" />Batch</td>


																					</tr>
																					<tr>
																						<td class="last"><c:out
																								value="${virtualProductObj.numberOfLectures}" />
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
													<div
														class="col-lg-2 personal-bg mg-none text-cen padd-none">
														<div class="date-profile1 mg-tp">
															<p>
																<span>Admission</span> <br> 105
															</p>
														</div>
														<div class="clearfix"></div>

														<div aria-label="First group" role="group"
															class="btn-group">
															<button class="btn btn-default  btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Demo Video"><i
																	class="fa fa-youtube-play orange"></i></a>
															</button>
															<button class="btn btn-default  btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Download Syllabus"><i
																	class="fa fa-book orange"></i></a>
															</button>

														</div>
													</div>
													<div class="clearfix"></div>
													<div class="col-lg-12">
														<div id="helptxt2"
															style="display: none; margin-top: 10px;">
															<div>
																<p><c:out value="${virtualProductObj.productDescription}" /></p>
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
<!-- End of  virtual productList -->  
 
 
<!--Start list for online Class   -->               
                <c:forEach items="${onlineProductList}" var="onlineProductObj">
						<div class="panel panel-default">
							<div class="panel panel-default">
								<div class="panel-heading" style="padding: 3px 14px !important;">
									<p class="pull-left col-lg-3">
										<strong>Online Classes </strong>
									</p>
									<div class="col-lg-5">
										<p>Applicable for ${onlineProductObj.attemptFrom} : ${onlineProductObj.attemptTo}</p>
									</div>
									<span class="  col-lg-2">
										<div class="input-group">
											<p>
												<strong>ID-</strong> ${onlineProductObj.productAutoId}
											</p>
										</div>
									</span> <span style="float: right; margin-right: 11px;"> <a
										href="#" data-toggle="modal" data-target="#exampleModal3"
										data-whatever=""
										onclick="editOnlineProduct('${onlineProductObj.productId}','${onlineProductObj.productAutoId}','${onlineProductObj.level}','${onlineProductObj.topic}','${onlineProductObj.typeOfBatch}','${onlineProductObj.numberOfLectures}','${onlineProductObj.subjectName}','${onlineProductObj.productDescription}','${onlineProductObj.notify}','${onlineProductObj.attemptFrom}','${onlineProductObj.attemptTo}','${onlineProductObj.fees}')">
											<i class="fa fa-pencil"></i>
									</a> <span style="float: left; margin-right: 11px;"><span
											 data-toggle="tooltip" title=""
											data-placement="bottom" data-original-title="Delete"
											onclick="Show_Div(${onlineProductObj.productId})"> <i
												class="fa fa-trash-o blue"></i></span></span>
									</span>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="bg-white ">
								<div id="demo${onlineProductObj.productId}"
									style="display: none; position: absolute; z-index: 999; right: 35px; top: 24px;">
									<div class="alert alert-block delete-pop">
										<p>Are you sure want to delete?</p>
										<div class="clearfix"></div>
										<a class="confirm col-lg-6 top-rht" data-dismiss=""><button
												type="button" class="btn btn-success btn-xs"
												onclick="removeOnlineProduct(${onlineProductObj.productId})">Confirm</button></a>

										<a class="close col-lg-6 top-rht" data-dismiss=""><button
												type="button" class="btn btn-warning btn-xs"
												onClick="hideDeleteMsg(${onlineProductObj.productId})">
												Cancel</button></a>
									</div>
								</div>
								<div class="panel-group mg-none">
									<div class="panel panel-default" id="panel1">
										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="profile-new">
													<div class="col-lg-2 text-cen">
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
																		class="col-lg-9 table-pd">
																		<div class="table-responsive ">
																			<div class="clearfix"></div>
																			<table class="table cutom-table">
																				<tbody>
																					<tr>
																						<td class=""><span class="level-bg "><c:out
																										value="${onlineProductObj.level}" /></span></td>
																						<td class=""><a href="#"
																							data-toggle="tooltip" title=""
																							data-placement="bottom"
																							data-original-title="Economics"><strong><c:out
																										value="${onlineProductObj.subjectName}" /></strong></a></td>
																						<td class=""><c:out
																								value="${onlineProductObj.topic}" /></td>
																						<td class=""><c:out
																								value="${onlineProductObj.typeOfBatch}" />Batch</td>


																					</tr>
																					<tr>
																						<td class="last"><c:out
																								value="${onlineProductObj.numberOfLectures}" />
																							Lectures</td>
																						<td class="last"><a
																							href="javascript:eToggle('','helptxt3');"
																							id="read" style="font-size: 14px;">More Info
																								<i class="fa fa-plus-square"></i>
																						</a></td>


																					</tr>
																				</tbody>
																			</table>
																		</div>
																	
																	</div>
																	<div class="col-lg-2 text-center left-none">
																		<div class="date-profile1  mg-tp">
																			<p>
																				<span>Admission</span> <br> 105
																			</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="clearfix"></div>
													</div>
													<div
														class="col-lg-2 personal-bg mg-none text-cen padd-none">
														<span class="orange table-top"><span class="size">30,000</span> </span>
														<div class="clearfix"></div>

														<div aria-label="First group" role="group"
															class="btn-group">
															<button class="btn btn-default  btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Demo Video"><i
																	class="fa fa-youtube-play orange"></i></a>
															</button>
															<button class="btn btn-default  btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Download Syllabus"><i
																	class="fa fa-book orange"></i></a>
															</button>

														</div>
													</div>
													<div class="clearfix"></div>
													<div class="col-lg-12">
														<div id="helptxt3"
															style="display: none; margin-top: 10px;">
															<div>
																<p><c:out value="${onlineProductObj.productDescription}" /></p>
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
<!--End list for online Class   --> 

<!-- start list for Study Material -->  
                <c:forEach items="${studyProductList}" var="studyProductObj">
						<div class="panel panel-default">
							<div class="panel panel-default">
								<div class="panel-heading" style="padding: 3px 14px !important;">
									<p class="pull-left col-lg-3">
										<strong>Study Material</strong>
									</p>
									<div class="col-lg-5">
										<p>Applicable for ${studyProductObj.attemptFrom} : ${studyProductObj.attemptTo}</p>
									</div>
									<span class="  col-lg-2">
										<div class="input-group">
											<p>
												<strong>ID-</strong> ${studyProductObj.productAutoId}
											</p>
										</div>
									</span> <span style="float: right; margin-right: 11px;"> <a
										href="#" data-toggle="modal" data-target="#exampleModal4"
										data-whatever=""
										onclick="editStudyProduct('${studyProductObj.productId}','${studyProductObj.productAutoId}','${studyProductObj.level}','${studyProductObj.topic}','${studyProductObj.typeOfMedium}','${studyProductObj.numberOfLectures}','${studyProductObj.subjectName}','${studyProductObj.productDescription}','${studyProductObj.notify}','${studyProductObj.attemptFrom}','${studyProductObj.attemptTo}','${studyProductObj.fees}')">
											<i class="fa fa-pencil"></i>
									</a> <span style="float: left; margin-right: 11px;"><span
											 data-toggle="tooltip" title=""
											data-placement="bottom" data-original-title="Delete"
											onclick="Show_Div(${studyProductObj.productId})"> <i
												class="fa fa-trash-o blue"></i></span></span>
									</span>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="bg-white ">
								<div id="demo${studyProductObj.productId}"
									style="display: none; position: absolute; z-index: 999; right: 35px; top: 24px;">
									<div class="alert alert-block delete-pop">
										<p>Are you sure want to delete?</p>
										<div class="clearfix"></div>
										<a class="confirm col-lg-6 top-rht" data-dismiss=""><button
												type="button" class="btn btn-success btn-xs"
												onclick="removeOnlineProduct(${studyProductObj.productId})">Confirm</button></a>

										<a class="close col-lg-6 top-rht" data-dismiss=""><button
												type="button" class="btn btn-warning btn-xs"
												onClick="hideDeleteMsg(${studyProductObj.productId})">
												Cancel</button></a>
									</div>
								</div>
								<div class="panel-group mg-none">
									<div class="panel panel-default" id="panel1">
										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="profile-new">
													<div class="col-lg-2 text-cen">
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
																	<div class="col-lg-9 table-pd" data-example-id="simple-responsive-table">
																		<div class="table-responsive ">
																			<div class="clearfix"></div>
																			<table class="table cutom-table">
																				<tbody>
																					<tr>
																						<td class=""><span class="level-bg "><c:out
																										value="${studyProductObj.level}" /></span></td>
																						<td class=""><a href="#"
																							data-toggle="tooltip" title=""
																							data-placement="bottom"
																							data-original-title="Economics"><strong><c:out
																										value="${studyProductObj.subjectName}" /></strong></a></td>
																						<td class=""><c:out
																								value="${studyProductObj.topic}" /></td>
																						<td class=""><c:out
																								value="${studyProductObj.typeOfMedium}" />Medium</td>


																					</tr>
																					<tr>
																						<td class="last"><c:out
																								value="${studyProductObj.numberOfLectures}" />
																							Lectures</td>
																						<td class="last"><a
																							href="javascript:eToggle('','helptxt4');"
																							id="read" style="font-size: 14px;">More Info
																								<i class="fa fa-plus-square"></i>
																						</a></td>


																					</tr>
																				</tbody>
																			</table>
																		</div>
																	</div>
																	
																	<div class="col-lg-2 text-center left-none">
                                        <div class="date-profile1  mg-tp">
                                          <p> <span>Admission</span> <br>
                                            105</p>
                                        </div>
                                      </div>
																</div>
															</div>
														</div>
														<div class="clearfix"></div>
													</div>
													<div
														class="col-lg-2 personal-bg mg-none text-cen ">
														<span class="orange table-top"><span class="size">30,000</span> </span>
														<div class="clearfix"></div>

														<div aria-label="First group" role="group"
															class="btn-group">
															<button class="btn btn-default  btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Demo Video"><i
																	class="fa fa-youtube-play orange"></i></a>
															</button>
															<button class="btn btn-default  btn-xs" type="button">
																<a href="#" data-toggle="tooltip" title=""
																	data-placement="bottom"
																	data-original-title="Download Syllabus"><i
																	class="fa fa-book orange"></i></a>
															</button>
														<br>
														</div>
													</div>
													<div class="clearfix"></div>
													<div class="col-lg-12">
														<div id="helptxt4"
															style="display: none; margin-top: 10px;">
															<div>
																<p><c:out value="${studyProductObj.productDescription}" /></p>
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
<!-- End list for online Class --> 
              </div>
              <div>
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 text-cen">
                                <div class="img-res"> <img alt="" src="entireApp/images/user.png" class="img-responsive">
                                  <div class="user-img-bg">
                                    <p>John Smith</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last">22 lectures</td>
                                                <td class="last"><a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a></td>
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
                              <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                <div class="date-profile1 mg-tp">
                                  <p> <span>Admission</span> <br>
                                    105</p>
                                </div>
                                <div class="clearfix"></div>
                                <div aria-label="First group" role="group" class="btn-group">
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                  </button>
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                  </button>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
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
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 text-cen">
                                <div class="img-res"> <img alt="" src="entireApp/images/user.png" class="img-responsive">
                                  <div class="user-img-bg">
                                    <p>John Smith</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last">22 lectures</td>
                                                <td class="last"><a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a></td>
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
                              <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                <div class="date-profile1 mg-tp">
                                  <p> <span>Admission</span> <br>
                                    105</p>
                                </div>
                                <div class="clearfix"></div>
                                <div aria-label="First group" role="group" class="btn-group">
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                  </button>
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                  </button>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
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
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Online Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 text-cen">
                                <div class="img-res"> <img alt="" src="entireApp/images/user.png" class="img-responsive">
                                  <div class="user-img-bg">
                                    <p>John Smith</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last">Prize - 1000</td>
                                                <td class="last">22 lectures</td>
                                                <td class="last"><a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a></td>
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
                              <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                <div class="date-profile1 mg-tp">
                                  <p> <span>Admission</span> <br>
                                    105</p>
                                </div>
                                <div class="clearfix"></div>
                                <div aria-label="First group" role="group" class="btn-group">
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                  </button>
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                  </button>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      <button type="button" class="btn btn-primary pull-right btn-xs mg-top" data-toggle="modal" data-target="#exampleModal1" data-whatever="">Publish</button>
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
                <hr class="colorline">
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Study Material </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 text-cen">
                                <div class="img-res"> <img alt="" src="entireApp/images/user.png" class="img-responsive">
                                  <div class="user-img-bg">
                                    <p>John Smith</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class="">Pen Drive</td>
                                              </tr>
                                              <tr>
                                                <td class=""> 10 chapters</td>
                                                <td class=""> Prize - 1000</td>
                                                <td class="last"><a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a></td>
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
                              <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                <div class="date-profile1 mg-tp">
                                  <p> <span>Admission</span> <br>
                                    105</p>
                                </div>
                                <div class="clearfix"></div>
                                <div aria-label="First group" role="group" class="btn-group">
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                  </button>
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                  </button>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      <button type="button" class="btn btn-primary pull-right btn-xs mg-top" data-toggle="modal" data-target="#exampleModal" data-whatever="">Publish</button>
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
              <div>
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 text-cen">
                                <div class="img-res"> <img alt="" src="entireApp/images/user.png" class="img-responsive">
                                  <div class="user-img-bg">
                                    <p>John Smith</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last">22 lectures</td>
                                                <td class="last"><a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a></td>
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
                              <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                <div class="date-profile1 mg-tp">
                                  <p> <span>Admission</span> <br>
                                    105</p>
                                </div>
                                <div class="clearfix"></div>
                                <div aria-label="First group" role="group" class="btn-group">
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                  </button>
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                  </button>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
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
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 text-cen">
                                <div class="img-res"> <img alt="" src="entireApp/images/user.png" class="img-responsive">
                                  <div class="user-img-bg">
                                    <p>John Smith</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last">22 lectures</td>
                                                <td class="last"><a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a></td>
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
                              <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                <div class="date-profile1 mg-tp">
                                  <p> <span>Admission</span> <br>
                                    105</p>
                                </div>
                                <div class="clearfix"></div>
                                <div aria-label="First group" role="group" class="btn-group">
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                  </button>
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                  </button>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
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
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Online Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 text-cen">
                                <div class="img-res"> <img alt="" src="entireApp/images/user.png" class="img-responsive">
                                  <div class="user-img-bg">
                                    <p>John Smith</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last">Prize - 1000</td>
                                                <td class="last">22 lectures</td>
                                                <td class="last"><a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a></td>
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
                              <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                <div class="date-profile1 mg-tp">
                                  <p> <span>Admission</span> <br>
                                    105</p>
                                </div>
                                <div class="clearfix"></div>
                                <div aria-label="First group" role="group" class="btn-group">
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                  </button>
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                  </button>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      <button type="button" class="btn btn-primary pull-right btn-xs mg-top" data-toggle="modal" data-target="#exampleModal" data-whatever="">Publish</button>
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
                <hr class="colorline">
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Study Material </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 text-cen">
                                <div class="img-res"> <img alt="" src="entireApp/images/user.png" class="img-responsive">
                                  <div class="user-img-bg">
                                    <p>John Smith</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class="">Pen Drive</td>
                                              </tr>
                                              <tr>
                                                <td class=""> 10 chapters</td>
                                                <td class=""> Prize - 1000</td>
                                                <td class="last"><a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a></td>
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
                              <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                <div class="date-profile1 mg-tp">
                                  <p> <span>Admission</span> <br>
                                    105</p>
                                </div>
                                <div class="clearfix"></div>
                                <div aria-label="First group" role="group" class="btn-group">
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                  </button>
                                  <button class="btn btn-default  btn-xs" type="button">
                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                  </button>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      <button type="button" class="btn btn-primary pull-right btn-xs mg-top" data-toggle="modal" data-target="#exampleModal" data-whatever="">Publish</button>
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
            </div>
          </div>
        </div>
      </div>

<script language="javascript"> 
function eToggle(anctag,darg) 
{
  var ele = document.getElementById(darg);
  var text = document.getElementById(anctag);
  if(ele.style.display == "block") 
  {
    ele.style.display = "none";
	text.innerHTML = "More Info" ;
  }
  else 
  {
	ele.style.display = "block";
	text.innerHTML = "Hide Info";
  }
} 
</script>



<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->


<script type="text/javascript">
            $(document).ready(function(){
                $('#text_demo1, #textarea_demo, #checkbox_demo, #select_demo, .width_auto_demo').tm_editbale('init',{
                                    theme:'round-button-theme',
                                    outside_btn:{
                                                    onshow:"&nbsp;<i class='fa fa-pencil'></i>&nbsp;",
                                                    new_line:false,
                                                    onhover:''
                                                },
                                    inside_btn:{
                                                    new_line:false,
                                                    ok:"<i class='fa fa-check'></i>",
                                                    cancel:"<i class='fa fa-times'></i>"
                                                }            
                                });
                setTimeout(function(){
                            $('#radio_demo').tm_editbale('init',{
                                 theme:'round-button-theme',
                                    outside_btn:{
                                                    onshow:"&nbsp;<i class='fa fa-pencil'></i>&nbsp;",
                                                    new_line:false,
                                                    onhover:''
                                                },
                                    inside_btn:{
                                                    new_line:false,
                                                    ok:"<i class='fa fa-check'></i>",
                                                    cancel:"<i class='fa fa-times'></i>"
                                                }            
                                });
                },350);
            });
        </script>
<script>
		(function($){
			$(window).load(function(){
				
				$(".content").mCustomScrollbar({
					scrollButtons:{
						enable:true
					},
					callbacks:{
						onScrollStart:function(){ myCallback(this,"#onScrollStart") },
						onScroll:function(){ myCallback(this,"#onScroll") },
						onTotalScroll:function(){ myCallback(this,"#onTotalScroll") },
						onTotalScrollOffset:60,
						onTotalScrollBack:function(){ myCallback(this,"#onTotalScrollBack") },
						onTotalScrollBackOffset:50,
						whileScrolling:function(){ 
							myCallback(this,"#whileScrolling"); 
							$("#mcs-top").text(this.mcs.top);
							$("#mcs-dragger-top").text(this.mcs.draggerTop);
							$("#mcs-top-pct").text(this.mcs.topPct+"%");
							$("#mcs-direction").text(this.mcs.direction);
							$("#mcs-total-scroll-offset").text("60");
							$("#mcs-total-scroll-back-offset").text("50");
						},
						alwaysTriggerOffsets:false
					}
				});
				
				function myCallback(el,id){
					if($(id).css("opacity")<1){return;}
					var span=$(id).find("span");
					clearTimeout(timeout);
					span.addClass("on");
					var timeout=setTimeout(function(){span.removeClass("on")},350);
				}
				
				$(".callbacks a").click(function(e){
					e.preventDefault();
					$(this).parent().toggleClass("off");
					if($(e.target).parent().attr("id")==="alwaysTriggerOffsets"){
						var opts=$(".content").data("mCS").opt;
						if(opts.callbacks.alwaysTriggerOffsets){
							opts.callbacks.alwaysTriggerOffsets=false;
						}else{
							opts.callbacks.alwaysTriggerOffsets=true;
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
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
<script type='text/javascript'>
        
        $(document).ready(function() {
        
            	jQuery('.carousel').carousel({
		interval: 4000	})

        
        });
        
        </script>
<script>
	$('#myCarousel').carousel({
		interval:   3000
	});
	$('#myCarousel1').carousel({
		interval:   4000
	});
	$('#myCarousel3').carousel({
		interval:   4000
	});
	$('#myCarousel6').carousel({
		interval:   5000
	});
</script>
<SCRIPT>
$(document).ready(function() {
	var showChar = 100;
	var ellipsestext = "...";
	var moretext = "more";
	var lesstext = "less";
	$('.more').each(function() {
		var content = $(this).html();

		if(content.length > showChar) {

			var c = content.substr(0, showChar);
			var h = content.substr(showChar-1, content.length - showChar);

			var html = c + '<span class="moreelipses">'+ellipsestext+'</span>&nbsp;<span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">'+moretext+'</a></span>';

			$(this).html(html);
		}

	});

	$(".morelink").click(function(){
		if($(this).hasClass("less")) {
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
    $(document).ready(function() {
        //Horizontal Tab
        $('.parentHorizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });

        // Child Tab
        $('#ChildVerticalTab_1, #ChildVerticalTab_2, #ChildVerticalTab_3').easyResponsiveTabs({
            type: 'vertical',
            width: 'auto',
            fit: true,
            tabidentify: 'ver_1', // The tab groups identifier
            activetab_bg: '#fff', // background color for active tabs in this group
            inactive_bg: '#F5F5F5', // background color for inactive tabs in this group
            active_border_color: '#c1c1c1', // border color for active tabs heads in this group
            active_content_border_color: '#5AB1D0' // border color for active tabs contect in this group so that it matches the tab head border
        });

        //Vertical Tab
        $('#parentVerticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo2');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
</script>


<script type="text/javascript">
    $(document).ready(function(){
    	// Smart Tab 2
  		$('.tab2').smartTab({autoProgress: false,stopOnFocus:true,autoHeight:false,transitionEffect:'vSlide'});        
	}); 
</script>

