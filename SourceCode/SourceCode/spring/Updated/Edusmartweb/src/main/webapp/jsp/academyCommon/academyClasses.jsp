<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<script type="text/javascript">

var editproductId;
var editAttemptFrom;
var editAttemptTo;
var editLevel;
var editTopic;
var editTypeOfBatch;
var editNumberOfLectures;
var editSubjectName;
var editProductDescription;
var editNotify;
var editFees;
var editDays;
var editBatchTiming;
var editCapacity;
var txtStartDateDesk;

/* function resetDivs()
{document.getElementById('live').className ="tab-pane active";
document.getElementById('virtual').className ="tab-pane";
document.getElementById('online').className ="tab-pane";
document.getElementById('study').className ="tab-pane";
	} */
function editProduct(productId,productAutoId,level,topic,typeOfBatch,numberOfLectures,subjectName,productDescription,notify,attemptFrom,attemptTo,
		fees,days,batchTiming,capacity,startDate,subjectLevelRef,facultyRef){
	//tab-pane active
/* document.getElementById('live').className ="tab-pane";
document.getElementById('virtual').className ="tab-pane";
document.getElementById('online').className ="tab-pane";
document.getElementById('study').className ="tab-pane";
document.getElementById(divId).className ="tab-pane active"; */ 

	alert(productId);
	$('#editproductId').val(productId);
	$('#editAttemptFrom').val(attemptFrom);
	$('#editAttemptTo').val(attemptTo);
	$('#putproductAutoId').val(productAutoId);
	$('#editLevel').val(level);
	$('#editTopic').val(topic);
	$('#editTypeOfBatch').val(typeOfBatch);
	$('#editNumberOfLectures').val(numberOfLectures);
	$('#editSubjectName').val(subjectName);
	$('#editProductDescription').val(productDescription);
	$('#editNotify').val(notify);
	$('#editFees').val(fees);
	$('#editDays').val(days);
	$('#editBatchTiming').val(batchTiming);
	$('#editCapacity').val(capacity);
	$('#txtStartDateDesk').val(startDate);
	$('#putsubjectRef').val(subjectLevelRef);
	$('#putfacultyRef').val(facultyRef);
}
	

function resetProduct()
{
	/* alert();
	$('#editproductId').val(editproductId);
	$('#editAttemptFrom').val(editAttemptFrom);
	$('#editAttemptTo').val(editAttemptTo); 
	$('#editLevel').val(editLevel);
	$('#editTopic').val(editTopic);
	$('#editTypeOfBatch').val(editTypeOfBatch);
	$('#editNumberOfLectures').val(editNumberOfLectures);
	$('#editSubjectName').val(editSubjectName);
	$('#editProductDescription').val(editProductDescription);
	$('#editNotify').val(editNotify); */
	/* $('#editFees').val(fees);
	$('#editDays').val(days);
	$('#editBatchTiming').val(batchTiming);
	$('#editCapacity').val(capacity);
	$('#editStartDate').val(startDate); */
	
}

function removeFinalProduct(productId){
	alert(productId);
	$.ajax({  
		type : "post",  
	    url : "removeFinalProduct.action",   
	    data : "productId=" + productId ,  
	    success : function(response) {  
	    
	     window.location.href = "academyClasses";  
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

<script type="text/javascript">

function editVirtualProduct(productId,productAutoId,level,topic,typeOfBatch,numberOfLectures,subjectName,productDescription,notify,attemptFrom,attemptTo,
		fees,days,batchTiming,capacity,startDate,subjectLevelRef,facultyRef){
	

	
	$('#editVProductId').val(productId);
	$('#editVAttemptFrom').val(attemptFrom);
	$('#editAttemptTo').val(attemptTo);
	$('#putVproductAutoId').val(productAutoId);
	$('#editVLevel').val(level);
	$('#editVTopic').val(topic);
	$('#editVTypeOfBatch').val(typeOfBatch);
	$('#editVNumberOfLectures').val(numberOfLectures);
	$('#editVSubjectName').val(subjectName);
	$('#editVProductDescription').val(productDescription);
	$('#editVNotify').val(notify);
	$('#editVFees').val(fees);
	$('#editVDays').val(days);
	$('#editVBatchTiming').val(batchTiming);
	$('#editVCapacity').val(capacity);
	$('#txtStartDateDesk').val(startDate);
	$('#putVsubjectRef').val(subjectLevelRef);
	$('#putVfacultyRef').val(facultyRef);
}

function addToCart(productId){
	
	 var flag=false;
	 $.ajax({  
		    type : "post",  
		    url : "addToCart",   
		    data :"productId=" + productId , 
		    success : function(response) {  
		    	
		    	
		    	
		    	if(response=="already")
		    	{	flag=false;
		    	$("#cartMsg").show();
		    	location.reload();
		    	}
		    	else{
		    		
		    		flag="true"
		    	}
		    	
		    }
	 
		   
		   }); 
	 return flag;
	 
	
}

</script>


 
      <div class="col-md-12 home-bg ">
        <div  class=" bs-example-tabs tab	">
          <h3>Classes</h3>
          <div class="clearfix"></div>
          <hr>
        <!--for edit Live product -->           
 <form:form action="editProductData" commandName="editproductForm" method="post">
   	<input type="hidden" value="" name="productId" id="editproductId">
   	<input type="hidden" name="subjectLevelRef" id="putsubjectRef">
	<input type="hidden" name="facultyRef" id="putfacultyRef">
          <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
                <div class="modal-body pd-none">
                  <div class="panel panel-default">
                    <div class="panel-body ">
                      <div class="">
                        <div>
                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h4 class="pull-left col-lg-3">CA-Live Classes </h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="padding:10px;"><span aria-hidden="true">&times;</span></button>
                              <div class=" col-lg-3">
                                <select type="text" name="attemptFrom" id="editAttemptFrom" class="form-control " disabled="disabled">
                                  <option>Apr 2015</option>
                                  <option>Oct 2016</option>
                                </select>
                              </div>
                              <div class="  col-lg-3 mrg-bt">
                                <select type="text" name="attemptTo" id="editAttemptTo" class="form-control " disabled="disabled">
                                  <option>Oct 2015</option>
                                  <option>Apl 2016</option>
                                </select>
                              </div>
                              <span class=" pull-right col-lg-2">
                              <div class="input-group">
                                <input type="text" name="productAutoId" id="putproductAutoId" class="form-control date-width lginput-lg " placeholder="product Id" value="${productAutoId}" disabled="disabled">
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
                                        <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> </div>
                                        <div class="col-lg-9 ">
                                          <div class="personal-bg">
                                            <div class="row">
                                              <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                <h4 class="great">CA</h4>
                                                </span>
                                                <div class="col-xs-12 col-sm-5 col-md-5">
                                                  <div class="form-group">
                                                    <select type="text" name="level" id="editLevel" class="form-control " disabled="disabled">
                                                      <option>Select Level</option>
                                                      <option>CPT</option>
													  <option>IPC</option>
													  <option>Final</option>
                                                    </select>
                                                  </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-5 col-md-5">
                                                  <div class="form-group">
                                                    <select type="text" name="subjectName" id="editSubjectName" class="form-control " disabled="disabled">
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
                                                  <input type="text" name="topic" id="editTopic" class="form-control" placeholder="Topic" disabled="disabled">
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <select type="text" name="typeOfBatch" id="editTypeOfBatch" class="form-control " disabled="disabled">
                                                   <option>Type of batch</option>
														<option>Other</option>
															<option>Regular</option>
																<option>Revision</option>
																	<option>FastTrack</option>
                                                  </select>
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <input type="text" name="numberOfLectures" id="editNumberOfLectures" class="form-control " placeholder="No of lectures" disabled="disabled">
                                                </div>
                                              </div>
                                              <div class="clearfix"></div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <input type="text" name="fees" id="editFees" class="form-control " placeholder="fees" >
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <input type="text" name="days" id="editDays" class="form-control " placeholder="Number of Days" >
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group  ">
                                                  <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                    <input type="text" name="startDate" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select date">
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <input type="text" name="capacity" id="editCapacity" class="form-control " placeholder="Capacity">
                                                </div>
                                              </div>
                                              <p class="col-lg-6 "><a href="javascript:eToggle('atag1','helptxt');" 
    style="color:#000;">Add your more info <i class="fa fa-plus-square"></i> </a> </p>
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
                                  <form>
                                    <input type="text" name="productDescription" id="editProductDescription" class="form-control" placeholder="Write a description here..." disabled="disabled">
                                  </form>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="bottom-bg live-batch">
                              <div class="col-lg-6 rht-bdr">
                                <div class="form-group col-lg-7">
                                  <input type="text" name="batchTiming" id="editBatchTiming" class="form-control" placeholder="Batch timing" >
                                </div>
                                <div class="form-group col-lg-5">
                                  <input type="text" name="first_name" id="first_name" class="form-control" placeholder="" >
                                </div>
                              </div>
                              <div class="col-lg-3 ">
                                <div class="form-group">
                                  <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" disabled="disabled">
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
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" name="notify" id="editNotify" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="All" data-icon="">All</option>
                              <option value="Academy" data-icon="">Centre</option>
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
<!--end of Live product-->

<!-- For Virtual Product Edit -->
<form:form action="editVirtualProductData" commandName="editVirtualproduct" method="post">
   	<input type="hidden" value="" name="productId" id="editVProductId">
   	<input type="hidden" name="subjectLevelRef" id="putVsubjectRef">
	<input type="hidden" name="facultyRef" id="putVfacultyRef">
          <div class="modal fade " id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
                <div class="modal-body pd-none">
                  <div class="panel panel-default">
                    <div class="panel-body ">
                      <div class="">
                        <div>
                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h4 class="pull-left col-lg-3">Virtual Classes </h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="padding:10px;"><span aria-hidden="true">&times;</span></button>
                              <div class=" col-lg-3">
                                <select type="text" name="attemptFrom" id="editVAttemptFrom" class="form-control " disabled="disabled">
                                  <option>Apr 2015</option>
                                  <option>Oct 2016</option>
                                </select>
                              </div>
                              <div class="  col-lg-3 mrg-bt">
                                <select type="text" name="attemptTo" id="editVAttemptTo" class="form-control " disabled="disabled">
                                  <option>Oct 2015</option>
                                  <option>Apl 2016</option>
                                </select>
                              </div>
                              <span class=" pull-right col-lg-2">
                              <div class="input-group">
                                <input type="text" name="productAutoId" id="putvproductAutoId" class="form-control date-width lginput-lg " placeholder="product Id" value="${productAutoId}" disabled="disabled">
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
                                        <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> </div>
                                        <div class="col-lg-9 ">
                                          <div class="personal-bg">
                                            <div class="row">
                                              <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                <h4 class="great">CA</h4>
                                                </span>
                                                <div class="col-xs-12 col-sm-5 col-md-5">
                                                  <div class="form-group">
                                                    <select type="text" name="level" id="editVLevel" class="form-control " disabled="disabled">
                                                      <option>Select Level</option>
                                                      <option>CPT</option>
													  <option>IPC</option>
													  <option>Final</option>
                                                    </select>
                                                  </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-5 col-md-5">
                                                  <div class="form-group">
                                                    <select type="text" name="subjectName" id="editVSubjectName" class="form-control " disabled="disabled">
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
                                                  <input type="text" name="topic" id="editVTopic" class="form-control" placeholder="Topic" disabled="disabled">
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <select type="text" name="typeOfBatch" id="editVTypeOfBatch" class="form-control " disabled="disabled">
                                                   <option>Type of batch</option>
														<option>Other</option>
															<option>Regular</option>
																<option>Revision</option>
																	<option>FastTrack</option>
                                                  </select>
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <input type="text" name="numberOfLectures" id="editVNumberOfLectures" class="form-control " placeholder="No of lectures" disabled="disabled">
                                                </div>
                                              </div>
                                              <div class="clearfix"></div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <input type="text" name="fees" id="editVFees" class="form-control " placeholder="fees" >
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <input type="text" name="days" id="editVDays" class="form-control " placeholder="Number of Days" >
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
                                              <div class="col-xs-12 col-sm-6 col-md-6">
                                                <div class="form-group">
                                                  <input type="text" name="capacity" id="editVCapacity" class="form-control " placeholder="Capacity">
                                                </div>
                                              </div>
                                              <p class="col-lg-6 "><a href="javascript:eToggle('atag2','helptxt');" 
    style="color:#000;">Add your more info <i class="fa fa-plus-square"></i> </a> </p>
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
                                  <form>
                                    <input type="text" name="productDescription" id="editVProductDescription" class="form-control" placeholder="Write a description here..." disabled="disabled">
                                  </form>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="bottom-bg live-batch">
                              <div class="col-lg-6 rht-bdr">
                                <div class="form-group col-lg-7">
                                  <input type="text" name="batchTiming" id="editVBatchTiming" class="form-control" placeholder="Batch timing" >
                                </div>
                                <div class="form-group col-lg-5">
                                  <input type="text" name="" id="first_name" class="form-control" placeholder="" >
                                </div>
                              </div>
                              <div class="col-lg-3 ">
                                <div class="form-group">
                                  <input type="text" name="" id="first_name" class="form-control" placeholder="Insert Video Link" disabled="disabled">
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
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" name="notify" id="editVNotify" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="All" data-icon="">All</option>
                              <option value="Academy" data-icon="">Centre</option>
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
<!-- End of virtual product edit -->
     
          
          <div class="parentHorizontalTab">
            <ul class="resp-tabs-list hor_1">
              <li>CA</li>
              <li>CS</li>
              <li>CMA</li>
              <span>
              <div class="pull-right col-lg-4">
                <div class="input-group stylish-input-group">
                  <input type="text" class="form-control " placeholder="Search">
                  <span class="input-group-addon">
                  <button type="submit"> <span class="glyphicon glyphicon-search"></span> </button>
                  </span> </div>
              </div>
              </span>
            </ul>
            <div class="resp-tabs-container hor_1">
              <div>
                <dl class="smart-tabs js-smart-tabs">
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Upcoming classes</button>
                    </a></dt>
                  <dd>
                    <div class="stud">
                      <h4 class="pull-left"> Upcoming classes <span>(${fn:length(liveProductList)})</span></h4>
                    </div>
                    <div class="clearfix"></div>
                      <c:forEach items="${liveProductList}" var="productObj">        
                    <div class="panel panel-default">
                      <div class="panel panel-default">
                        <div class="panel-heading" style="  padding: 3px 14px !important;">
                          <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for ${productObj.attemptFrom} : ${productObj.attemptTo}</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> ${productObj.productAutoId}</p>
                          </div>
                          </span> 
                          
                          <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever="" 
                          onclick="editProduct('${productObj.productId}','${productObj.productAutoId}','${productObj.level}','${productObj.topic}','${productObj.typeOfBatch}','${productObj.numberOfLectures}','${productObj.subjectName}','${productObj.productDescription}','${productObj.notify}',
                          '${productObj.attemptFrom}','${productObj.attemptTo}','${productObj.fees}','${productObj.days}','${productObj.batchTiming}','${productObj.capacity}','${productObj.startDate}','${productObj.subjectLevelTB.subjectId}','${productObj.facultyTb.facultyId}')"> <i class="fa fa-pencil"></i></a> 
          
                       <span style="float:left;margin-right: 11px;">
                          <span data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete" onclick="Show_Div(${productObj.productId})">
                           <i class="fa fa-trash-o blue"></i></span></span> 
                                        </span>              
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
												onclick="removeFinalProduct(${productObj.productId})">Confirm</button></a>

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
                              <img alt="" src="entireApp/images/user.png" class="img-responsive">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                             
                           
                              </div>
                                  <div class="col-lg-8 ">
                                    <div class="personal-bg mg-none">
                                      <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                          <h4 class="great">CA</h4>
                                          </span>
                                          <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                            <div class="table-responsive ">
                                              <div class="clearfix"></div>
                                              <table class="table cutom-table">
                                                <tbody>
                                                  <tr>
                                                    <td><span class="level-bg"><c:out value="${productObj.level}" /></span></td>
                                                    <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="<c:out value="${productObj.subjectName}" />"><strong>
                                                    <c:out value="${productObj.subjectName}" /></strong></a></td>
                                                    <td> <c:out value="${productObj.topic}" /></td>
                                                    <td> <c:out value="${productObj.typeOfBatch}" />&nbsp; Batch</td>
                                                  </tr>
                                                  <tr>
                                                    <%-- <td class="last"><i class="fa fa-inr"></i> - <c:out value="${productObj.fees}" /></td> --%>
                                                  
                                                    <td class="last"> <c:out value="${productObj.numberOfLectures}" />&nbsp; lectures</td>
                                                    
                                                    <td class="last"> <c:out value="${productObj.days}" /> Days</td>
                                              <td class="last"> <c:out value="${productObj.batchTiming}" />..<span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                      <ul class="dropdown-menu pull-right width4" role="menu">
                                                        <li>
                                                        <label><input type="radio" checked="" value="9 am to 10 am" id="optionsRadios1" name="batchTiming" class="orange">
        												9 am to 10 am </label>
      													</li>
                                                         <li>
                                                        <label><input type="radio" checked="" value="5 pm to 6 pm" id="optionsRadios2" name="batchTiming" class="orange">
        												 5 pm to 6 pm</label>
      													</li>
                                                         <li>
                                                        <label><input type="radio" checked="" value="7 pm to 8 pm" id="optionsRadios3" name="batchTiming" class="orange">
        												 7 pm to 8 pm</label>
      													</li>
                                                      </ul>
                                                      </span></td>
                                                  </tr>
                                                 
                                                </tbody>
                                              </table>
                                            </div>
                                          </div>
                                       <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div> 
                                       
                                        </div>
                                      </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    
                                  </div>
                                  <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                  
                                    <h3 class="orange table-top"><i class="fa fa-inr"></i> <c:out value="${productObj.fees}" /></h3>
                                    
                                    
                                         <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt1');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                                            
                                  </div>
                                  <div class="clearfix"></div>
                                  <div class="col-lg-12">
                                  <div id="helptxt1" style="display: none;margin-top:10px;">
                                      <div>
                                       <p><c:out value="${productObj.productDescription}" /> </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;" onclick="return addToCart('${productObj.productId}')"> Add to Cart</button>
                            </a>
                            
                         </div>
                         <div class="alert alert-danger" style="display: none;"	id="cartMsg">
					<a href="#" class="close" data-dismiss="alert">&times;</a>
					<strong>Error!</strong> "You Already Add this product into cart"
			           </div>       
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
              </c:forEach>
       
                    <hr class="colorline">
      <c:forEach items="${virtualProductList}" var="VirtualProductObj">        
                    <div class="panel panel-default">
                      <div class="panel panel-default">
                        <div class="panel-heading" style="  padding: 3px 14px !important;">
                          <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for ${VirtualProductObj.attemptFrom} : ${VirtualProductObj.attemptTo}</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong>${VirtualProductObj.productAutoId} </p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal2" data-whatever="" 
                          onclick="editVirtualProduct('${VirtualProductObj.productId}','${VirtualProductObj.productAutoId}','${VirtualProductObj.level}','${VirtualProductObj.topic}','${VirtualProductObj.typeOfBatch}','${VirtualProductObj.numberOfLectures}','${VirtualProductObj.subjectName}','${VirtualProductObj.productDescription}','${VirtualProductObj.notify}',
                          '${VirtualProductObj.attemptFrom}','${VirtualProductObj.attemptTo}','${VirtualProductObj.fees}','${VirtualProductObj.days}','${VirtualProductObj.batchTiming}','${VirtualProductObj.capacity}','${VirtualProductObj.startDate}','${VirtualProductObj.subjectLevelTB.subjectId}','${VirtualProductObj.facultyTb.facultyId}')"> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <img alt="" src="entireApp/images/user.png" class="img-responsive">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                             
                           
                              </div>
                                  <div class="col-lg-8 ">
                                    <div class="personal-bg mg-none">
                                      <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                          <h4 class="great">CA</h4>
                                          </span>
                                          <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                            <div class="table-responsive ">
                                              <div class="clearfix"></div>
                                              <table class="table cutom-table">
                                                <tbody>
                                                  <tr>
                                                    <td><span class="level-bg"><c:out value="${VirtualProductObj.level}" /></span></td>
                                                    <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="<c:out value="${VirtualProductObj.subjectName}" />"><strong>
                                                    <c:out value="${VirtualProductObj.subjectName}" /></strong></a></td>
                                                    <td> <c:out value="${VirtualProductObj.topic}" /></td>
                                                    <td> <c:out value="${VirtualProductObj.typeOfBatch}" />&nbsp; Batch</td>
                                                  </tr>
                                                  <tr>
                                                    <%-- <td class="last"><i class="fa fa-inr"></i> - <c:out value="${VirtualProductObj.fees}" /></td> --%>
                                                  
                                                    <td class="last"> <c:out value="${VirtualProductObj.numberOfLectures}" />&nbsp; lectures</td>
                                                    
                                                    <td class="last"> <c:out value="${VirtualProductObj.days}" /> Days</td>
                                              <td class="last"> <c:out value="${VirtualProductObj.batchTiming}" />..<span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                      <ul class="dropdown-menu pull-right width4" role="menu">
                                                        <li>
                                                        <label><input type="radio" checked="" value="9 am to 10 am" id="optionsRadios1" name="batchTiming" class="orange">
        												9 am to 10 am </label>
      													</li>
                                                         <li>
                                                        <label><input type="radio" checked="" value="5 pm to 6 pm" id="optionsRadios2" name="batchTiming" class="orange">
        												 5 pm to 6 pm</label>
      													</li>
                                                         <li>
                                                        <label><input type="radio" checked="" value="7 pm to 8 pm" id="optionsRadios3" name="batchTiming" class="orange">
        												 5 pm to 6 pm</label>
      													</li>
                                                      </ul>
                                                      </span></td>
                                                  </tr>
                                                 
                                                </tbody>
                                              </table>
                                            </div>
                                          </div>
                                        
                                          <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div> 
                                        </div>
                                      </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    
                                  </div>
                                  <div class="col-lg-2 personal-bg mg-none text-cen padd-none">
                                  
                                    <h3 class="orange table-top"><i class="fa fa-inr"></i><c:out value="${VirtualProductObj.fees}" /></h3>


                                         <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt2');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                                            
                                  </div>
                                  <div class="clearfix"></div>
                                  <div class="col-lg-12">
                                  <div id="helptxt2" style="display: none;margin-top:10px;">
                                      <div>
                                       <p><c:out value="${VirtualProductObj.productDescription}" /> </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
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
        </c:forEach>
                    
                    <div class="clearfix"></div>
                     
                  </dd>
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Current Classes <i class="fa fa-plus-circle"></i></button>
                    </a></dt>
                  <dd>
                    <div class="stud">
                      <h4 class="pull-left"> Current Classes <span>(120)</span></h4>
                    </div>
                   Current classes here....
                  </dd>
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Past Classes <i class="fa fa-plus-circle"></i></button>
                    </a></dt>
                  <dd>
                    <div class="stud">
                      <h4 class="pull-left"> Past Classes <span>(120)</span></h4>
                    </div>
                    <div class="clearfix"></div>
                 past classes here...
                    
                    <div class="clearfix"></div>
                  </dd>
                </dl>
                <div class="clearfix"></div>
              
              </div>
              <div>
                <dl class="smart-tabs js-smart-tabs">
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Upcoming classes</button>
                    </a></dt>
                  <dd>
                      <div class="stud">
                      <h4 class="pull-left"> Upcoming classes <span>(${fn:length(liveProductList)})</span></h4>
                    </div>
                    <div class="clearfix"></div>
                  <div class="panel panel-default">
                      <div class="panel panel-default">
                        <div class="panel-heading" style="  padding: 3px 14px !important;">
                          <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            

                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">


                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                  </dd>
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Current Classes <i class="fa fa-plus-circle"></i></button>
                    </a></dt>
                  <dd>
                    <div class="stud">
                      <h4 class="pull-left"> Current Classes <span>(120)</span></h4>
                    </div>
                    <div class="clearfix"></div>
                      <div class="panel panel-default">
                      <div class="panel panel-default">
                        <div class="panel-heading" style="  padding: 3px 14px !important;">
                          <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                  </dd>
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Past Classes <i class="fa fa-plus-circle"></i></button>
                    </a></dt>
                  <dd>
                    <div class="stud">
                      <h4 class="pull-left"> Past Classes <span>(120)</span></h4>
                    </div>
                    <div class="clearfix"></div>
                    <div class="panel panel-default">
                      <div class="panel panel-default">
                        <div class="panel-heading" style="  padding: 3px 14px !important;">
                          <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                  </dd>
                </dl>
                <div class="clearfix"></div>
               
              </div>
              <div>
                <dl class="smart-tabs js-smart-tabs">
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Upcoming classes</button>
                    </a></dt>
                  <dd>
                    <div class="stud">
                      <h4 class="pull-left"> Upcoming classes <span>(120)</span></h4>
                    </div>
                    <div class="clearfix"></div>
                 <div class="panel panel-default">
                      <div class="panel panel-default">
                        <div class="panel-heading" style="  padding: 3px 14px !important;">
                          <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                  </dd>
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Current Classes <i class="fa fa-plus-circle"></i></button>
                    </a></dt>
                  <dd>
                    <div class="stud">
                      <h4 class="pull-left"> Current Classes <span>(120)</span></h4>
                    </div>
                    <div class="clearfix"></div>
                    <div class="panel panel-default">
                      <div class="panel panel-default">
                        <div class="panel-heading" style="  padding: 3px 14px !important;">
                          <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                  </dd>
                  <dt><a href="#">
                    <button class="btn btn-defualt" type="button">Past Classes <i class="fa fa-plus-circle"></i></button>
                    </a></dt>
                  <dd>
                    <div class="stud">
                      <h4 class="pull-left"> Past Classes <span>(120)</span></h4>
                    </div>
                    <div class="clearfix"></div>
                    <div class="panel panel-default">
                      <div class="panel panel-default">
                        <div class="panel-heading" style="  padding: 3px 14px !important;">
                          <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                          <div class="col-lg-5">
                            <p>Applicable for Apr 2015 : Oct 2015</p>
                          </div>
                          <span class="  col-lg-3">
                          <div class="input-group">
                            <p><strong>ID-</strong> 3656</p>
                          </div>
                          </span> <span style="float:right;margin-right: 11px;"> 
                          <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> 
                          <span style="float:left;margin-right: 11px;">

                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete">
                           <i class="fa fa-trash-o blue"></i></a></span> </span>
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
                              <div class="img-res">
                              <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>

                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                         
                            <div class="clearfix"></div>
                                            <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
                          <div class="pull-right">
                            <div aria-label="First group" role="group" class="btn-group mg-top">
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="200 students"><i class="fa fa-user orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Follow"><i class="fa fa-thumbs-up orange"></i></a>
                              </button>
                              <button class="btn btn-default btn-xs" type="button">
                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Offer"><i class="fa fa-tags orange"></i></a>
                              </button>
                            </div>
                            
                             <a href="final-cart.php" class="wht">
                            <button class="btn btn-warning mg-top btn-sm" type="button" style="background:#E06D09;"> Add to Cart</button>
                            </a>       
                         </div>
                        </div>
                        <div class="clearfix"></div>
                        <div id="helptxt4" style="display: none">
                          <hr>
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
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
                  </dd>
                </dl>
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
        $(function() {
            var offset = $("#sidebar").offset();
            var topPadding = 90;
            $(window).scroll(function() {
                if ($(window).scrollTop() > offset.top) {
                    $("#sidebar").stop().animate({
                        marginTop: $(window).scrollTop() - offset.top + topPadding
                    });
                } else {
                    $("#sidebar").stop().animate({
                        marginTop: 0
                    });
                };
            });
        });
    </script>

<script>
var draggableElems = document.querySelectorAll('.draggable');
var draggies = [];
for (var i = 0, len = draggableElems.length;  len; i++) {
    if (window.CP.shouldStopExecution(1)) {
        break;
    }
    var draggableElem = draggableElems[i];
    var draggie = new Draggabilly(draggableElem, { containment: true });
    draggies.push(draggie);
}
window.CP.exitedLoop(1);
//@ sourceURL=pen.js
</script>

<script>
$("div.demo-1 :text").minical();
</script>

<script>
$('.js-smart-tabs').smartTabs();
$('.js-smart-tabs--tabs').smartTabs({
	layout: 'tabs'
});
$('.js-smart-tabs--accordion').smartTabs({
	layout: 'accordion'
});
</script>

<script type="text/javascript">
    $(document).ready(function(){
    	// Smart Tab 2
  		$('.tab2').smartTab({autoProgress: false,stopOnFocus:true,autoHeight:false,transitionEffect:'vSlide'});        
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