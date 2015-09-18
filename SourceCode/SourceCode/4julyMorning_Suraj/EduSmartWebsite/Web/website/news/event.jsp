<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.edusmart.dao.*" %>


<div class="col-md-12 home-bg ">
        <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab	">
          <ul role="tablist" id="myTab">
            <li class="" role="presentation">Events -<strong>2015</strong> <i class="fa fa-long-arrow-right"></i><br>
            </li>
            <li  role="presentation"><a aria-expanded="true" aria-controls="jan" data-toggle="tab" role="tab" id="jan-tab " href="#jan" > Current Events</a></li>
            <li role="presentation" class=""><a aria-controls="feb" data-toggle="tab" id="feb-tab" role="tab" href="#feb" aria-expanded="false"> Past Events</a></li>
         
         <!--  Add news popup-->
        <s:form action="addEvent.action" method="post" onsubmit="return calenderValidation();">
            <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel "><i class="fa fa-bullhorn "></i> Add Events </h4>
                  </div>
                  <div class="modal-body">
                  
                 <span id="EventDateIdMsg" style="display: none; color: red;">Please Select Both Date </span>
                  
                    <div class="pull-right col-lg-8">
                    
                    
                  <%--   <div class="alert alert-danger" style="display: none;"	id="EventDateIdMsg">
										<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>Error!</strong>
										Please Select Both Date 
									</div> --%>
									
                    
                      <div class="form-group col-lg-6">
                        <div class="input-group date " id="dp3"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                          <input type="text" class="datepicker form-control date-width lg" name="eventsTB.entryDate" id="entryDateId"  placeholder="Select Start date"//>
                        </div>
                      </div>
                      <div class="form-group  col-lg-6">
                        <div class="input-group date " id="dp4"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                          <input type="text" class="datepicker form-control date-width lg" name="eventsTB.expDate" id="expDateId" placeholder="Select End date"/>
                        </div>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="panel panel-default">
                      <div class="panel-body">
                        <div class="">
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="images/user.png" width="100%">
                            <input type="file">
                            </span></a> </div>
                          <div class="col-lg-11 profile-new">
                            <p class="lead ">
                              <input type="text" name="eventsTB.title" class="form-control" id="" placeholder="Add main title here">
                            </p>
                          </div>
                          <div class="clearfix"></div>
                          <div class="well-update profile-new">
                            <div class="col-lg-5"> <img alt="" src="images/news.png" class="img-responsive"> <a href="#" class="btn btn-xs btn-primary pull-left " style="margin-top:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Your Gallery
                              <input type="file">
                              </span> </a> <a href="#" class="btn btn-xs btn-primary pull-right " style="margin-top:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> From Computer
                              <input type="file">
                              </span> </a> </div>
                            <div class="col-lg-7 ">
                              <h4 class="margin-top">
                                <input type="text" name="eventsTB.subTitle" class="form-control" id="" placeholder="Add sub-title here">
                              </h4>
                              <p >
                                <textarea type="text" name="eventsTB.eventContent" class="form-control" id="" placeholder="Add Description here" rows="5"></textarea>
                              </p>
                              <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="panel-footer">
                        <div class="row">
                          <div class="col-md-7">
                            <div class="form-group">
                              <div class="btn-group">
                                <button type="submit" class="btn btn-primary">Submit</button>
                              </div>
                              <div class="btn-group">
                                <button  class="btn btn-default">Reset</button>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-5">
                            <div class="form-group">
                              <select class="form-control privacy-dropdown pull-right input-sm" name="eventsTB.shareType" style="  margin-right: 10px;">
                                <option selected="selected" value="Academy">Academy</option>
                                <option value="Faculty">Faculty</option>
                                <option value="Students">Students</option>
                                <option value="Center">Center</option>
                              </select>
                              <a href="#" class="pull-right share" data-toggle="tooltip" title="Share" data-placement="bottom"> <img src="images/plane.png"></a>
                              <style>
   .datepicker.dropdown-menu{z-index:9999999999991}
   </style>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </s:form>    
        
          <!--  Edit News Popup-->
          <s:form action="editEvent.action">
          <input type="hidden" value="" name="eventsTB.EventId" id="updateNewsId">
            <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel "><i class="fa fa-bullhorn "></i> Change Event </h4>
                  </div>
                  <div class="modal-body"> 
                    <div class="pull-right col-lg-8">
                      <div class="form-group col-lg-6">
                        <div class="input-group date " id="dp2"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                          <input type="text" class="datepicker form-control date-width lg" id="editEntryDate" name="eventsTB.entryDate"  placeholder="Select Start date"//>
                        </div>
                      </div>
                      <div class="form-group  col-lg-6">
                        <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                          <input type="text" class="datepicker form-control date-width lg" id="editExpDate" name="eventsTB.expDate" placeholder="Select End date"/>
                        </div>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="panel panel-default">
                      <div class="panel-body">
                        <div class="">
                          <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="images/user.png" width="100%">
                            <input type="file">
                            </span></a> </div>
                          <div class="col-lg-11 profile-new">
                            <p class="lead ">
                              <input type="text" class="form-control" id="editTitle" name="eventsTB.title" placeholder="Add main title here">
                            </p>
                          </div>
                          <div class="clearfix"></div>
                          <div class="well-update profile-new">
                            <div class="col-lg-5"> <img alt="" src="images/news.png" class="img-responsive"> <a href="#" class="btn btn-xs btn-primary pull-left " style="margin-top:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Your Gallery
                              <input type="file">
                              </span> </a> <a href="#" class="btn btn-xs btn-primary pull-right " style="margin-top:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> From Computer
                              <input type="file">
                              </span> </a> </div>
                            <div class="col-lg-7 ">
                              <h4 class="margin-top">
                                <input type="text" class="form-control" id="editSubTitle" name="eventsTB.subTitle" placeholder="Add sub-title here">
                              </h4>
                              <p >
                                <textarea type="text" class="form-control" id="editeventContent" name="eventsTB.eventContent" placeholder="Add Description here" rows="5"></textarea>
                              </p>
                              <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                      </div>
                      <div class="panel-footer">
                        <div class="row">
                          <div class="col-md-7">
                            <div class="form-group">
                              <div class="btn-group">
                                <button type="submit" class="btn btn-primary" >Submit</button>
                              </div>
                              <div class="btn-group">
                                <input type="button"  value="Reset" onclick="editResetEvent()" class="btn btn-default">
                              </div>
                            </div>
                          </div>
                          <div class="col-md-5">
                            <div class="form-group">
                              <select class="form-control privacy-dropdown pull-right input-sm" name="eventsTB.shareWith" style="  margin-right: 10px;">
                                <option selected="selected" value="Academy">Academy</option>
                                <option value="Faculty">Faculty</option>
                                <option value="Students">Students</option>
                                <option value="Center">Center</option>
                              </select>
                              <a href="#" class="pull-right share" data-toggle="tooltip" title="Share" data-placement="bottom"> <img src="images/plane.png"></a>
                              <style>
   .datepicker.dropdown-menu{z-index:9999999999991}
   </style>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </s:form>
            
            <div class="btn-group pull-right" style="margin-top:9px;">
              <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal1" data-whatever="" >
              <i class="fa fa-plus"></i> <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add</a>
              </button>
            </div>
          </ul>
          <div class="clearfix"></div>
          <hr>
          
          <div class="tab-content" id="myTabContent">
            <div aria-labelledby="jan-tab" id="jan" class="tab-pane fade active in" role="tabpanel">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="pull-left"> <i class="fa fa-calendar fa-lg "></i> Current Events 2015 </h4>
             
                  <div class="clearfix"></div>
                </div>
              </div>
              
              
              <!-- Display Event Box  -->
    <c:forEach items="${eventList}" var="eventTB">  
              <div class="bg-white "> <span style="float:right;margin-right: 11px;" >
               <a href="#" data-toggle="modal" data-target="#exampleModal2" onclick="editEventFunction('${eventTB.expDate}','${eventTB.date}','${eventTB.title}','${eventTB.subTitle}','${eventTB.eventContent}','${eventTB.eventId}')"  data-whatever="" > 
               <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;" ><a href="#" onclick="flushEvent(${eventTB.eventId})" data-toggle="tooltip" title="Delete" data-placement="bottom"> <i class="fa fa-trash-o blue"></i></a></span> </span> <span  style="display:none;float:right;margin-right: 11px;"> <i class="fa fa-floppy-o"></i> <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Reset" data-placement="bottom"> <i class="fa fa-repeat blue"></i></a></span> </span>
                
                
                
                <div class=" mg-rht pull-right text-center">
                  <p style="font-size:12px;margin-bottom:0px;"><c:out value=" ${eventTB.entryDate}  "/></p>
                  <span  style="float:right;" class="date-profile" >
                  <p> <span></span> 05</p>
                  </span> </div>
                <div class="mg-rht  pull-right text-center">
                  <p style="font-size:12px;margin-bottom:0px;"><c:out value=" ${eventTB.expDate}  "/></p>
                  <span  style="float:right;" class="date-profile" >
                  <p> <span></span> 05</p>
                  </span> </div>
                <div id="" class="panel-group">
                  <div class="panel panel-default" id="panel1">
                    <div id="collapseOne" class="panel-collapse collapse in">
                      <div class="panel-body">
                        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive"></div>
                        <div class="col-lg-11 profile-new">
                          <p class="lead "> <a href="index.php"><s:property value="academyTB.AcademyName"/></a> </p>
                          <p><span class="glyphicon glyphicon-time"></span> Posted on <c:out value=" ${eventTB.date}  "/></p>
                        </div>
                        <div class="clearfix"></div>
                        <div class="well-update profile-new">
                          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>
                          <div class="col-lg-7 ">
                            <h4 class="margin-top"><s:property value="academyTB.AcademyName"/></h4>
                            <p class="comment more"><c:out value=" ${eventTB.eventContent}  "/></p>
                            <div class="clearfix"></div>
                          </div>
                          <div class="clearfix"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="add-profile">
                  <ul >
                    <li> <a href="#" title="" > Like </a><span class="like">/ 12</span> .</li>
                    <li> <a href="#" > Comment </a><span class="comment">/ 12</span> .</li>
                    <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                  </ul>
                </div>
              </div>
         </c:forEach>
           <!-- Display Event Box End -->
           
           
           
           
           
           
              <div class="bottom-bg">
                <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
                <div class="col-lg-10 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                  <ul class="dropdown-menu pull-right width4 " role="menu">
                    <li><a href="#"> Hide</a></li>
                  </ul>
                  </span>
                  <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                  <div class="clearfix"></div>
                  <div class="rating pull-left ">
                    <ul>
                      <li> <a href="#" title="" > Like </a>.</li>
                      <li> <a href="#" > Reply </a>.</li>
                      <li> <a href="#" class="star"> 23 hrs </a></li>
                    </ul>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10 left-none">
                  <form>
                    <input type="text" class="form-control" placeholder="Write a comment...">
                  </form>
                </div>
                <div class="clearfix"></div>
              </div>
            </div>
            
            <div aria-labelledby="feb-tab" id="feb" class="tab-pane fade" role="tabpanel">
            <c:forEach items="${pastNewsList}" var="pastsEventsObj">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4> <i class="fa fa-calendar fa-lg "></i> Past Events </h4>
                </div>
              </div>
              <div class="bg-white well-new">
                <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive"></div>
                <div class="col-lg-10 profile-new">
                 <p class="lead "> <a href="#"><s:property value="academyTB.AcademyName"/></a> </p>
                 <p><span class="glyphicon glyphicon-time"></span> <c:out value=" ${pastsEventsObj.entryDate}  "/></p>
                </div>
                <div class="clearfix"></div>
                <div class="well-update profile-new">
                  <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>
                  <div class="col-lg-7 ">
                    <h4 class="margin-top"><s:property value="academyTB.AcademyName"/></h4>
                     <p class="comment more"><c:out value=" ${pastsEventsObj.eventContent}  "/></p>
                    <div class="clearfix"></div>
                  </div>
                  <div class="clearfix"></div>
                </div>
                <div class="add-profile">
                  <ul >
                    <li> <a href="#" title="" > Like</a> .</li>
                    <li> <a href="#" > Comment </a><span class="comment">/ 23</span> .</li>
                    <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                  </ul>
                </div>
              </div>
              <div class="bottom-bg">
                <form>
                  <div class="col-lg-1  col-sm-3 col-xs-3"> <img src="images/user.png" class="featurette-image img-responsive" style="margin-top: 5px;"> </div>
                  <div class="col-lg-11 col-sm-7 col-xs-9">
                    <input type="text" class="form-control" placeholder="Write a comment...">
                  </div>
                  <div class="clearfix"></div>
                </form>
              </div>
              <div class="clearfix"></div>
            </c:forEach>
            </div>
          </div>
        </div>
      </div>
      <script>

      function flushEvent(eventId){
      	
      	$.ajax({  
      	    type : "post",  
      	    url : "flushEvent.action",   
      	    data : "eventId=" + eventId ,  
      	    success : function(response) {  
      	    
      	     window.location.href = "events";  
      	    }
      	   
      	   });  
      		
      	}

      var tEntryDate;
      var tExpDate;
      var tTitle;
      var tSubTitle;
      var teventContent;
      var tupdateNewsId; 



      function editEventFunction(EntryDate,ExpDate,Title,SubTitle,eventContent,Newsid){
      	tEntryDate=EntryDate;
      	tExpDate=ExpDate;
      	tTitle=Title;
      	tSubTitle= SubTitle;
      	tupdateNewsId=Newsid;
      	teventContent=eventContent;
      	 $('#editEntryDate').val(EntryDate);
      	 $('#editExpDate').val(ExpDate);
      	 $('#editTitle').val(Title);
           $('#editSubTitle').val(SubTitle);
      	 $('#editeventContent').val(eventContent); 
           $('#updateNewsId').val(Newsid);
      }

      function editResetEvent(){
      	 $('#editEntryDate').val(tEntryDate);
      	 $('#editExpDate').val(tExpDate);
      	 $('#editTitle').val(tTitle);
           $('#editSubTitle').val(tSubTitle);
      	 $('#editeventContent').val(teventContent); 
           $('#updateNewsId').val(tNewsid);
      	
      }

     

      function calenderValidation() {

          if($('#expDateId').val()==""||  $('#entryDateId').val()=="")
              {
        	  $('#EventDateIdMsg').show();
        	  return false;
              }
          else
              
          {     
               $('#EventDateIdMsg').hide();
			   return true;
          }  
		}
      
      </script>