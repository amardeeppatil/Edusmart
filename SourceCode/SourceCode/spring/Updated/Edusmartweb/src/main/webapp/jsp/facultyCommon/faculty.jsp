<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
<script type="text/javascript" src="entireApp/js/jquery.1.10.2.min.js"></script>
<script type="text/javascript" src="entireApp/js/jquery.autocomplete.min.js"></script> 
<script>

$(document).ready(function() {
		
		$('#searchFacultyId').autocomplete({
			serviceUrl: '${pageContext.request.contextPath}/searchFaculty',
			paramName: "FName",
			delimiter: ",",
		    transformResult: function(response) {
		        return {
		        	
		            suggestions: $.map($.parseJSON(response), function(item) {
		                return { value: item.fname, data: item.userId };
		            })
		            
		        };
		        
		    }
		    
		});
		
		
      });
      
</script>


<script>

$(document).ready(function() {
		
		$('#searchAllFacultyId').autocomplete({
			serviceUrl: '${pageContext.request.contextPath}/searchAllFaculty',
			paramName: "FName",
			delimiter: ",",
		    transformResult: function(response) {
		        return {
		        	
		            suggestions: $.map($.parseJSON(response), function(item) {
		                return { value: item.fname, data: item.userId };
		            })
		            
		        };
		        
		    }
		    
		});
		
		
		 function sendRequest(){
	    	  $.ajax({  
	    		     type : "post",  
	    		     url  : "sendRequestFacultyToAcademy",   
	    		     data : $('#requestId').serialize(),
	    			async : false,
	    		  success : function(response) {  
	    		     return false;
	    		     }
	    		    
	    		    });  
	    		
	    	  
	    	  
	      }
		
      });
	
</script>


</head>

     <div class="col-md-12 home-bg">
        <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab	">
          <div class="pad-lft1 pull-left">
            <h4> Faculty</h4>
          </div>
          <span class=" pull-right mar-top">
          <div aria-label="Button group with nested dropdown" role="group" class="btn-group">
      <!--      <button class="btn-group btn-group-xs " type="button">Create Faculty </button>-->
            <button type="button" class="btn-group btn-group-xs" data-toggle="modal" data-target="#exampleModal1" data-whatever="">
            <i class="fa fa-plus"></i> <a href="#" style="color:#000;"> Add Faculty </a>
            </button>
            
            <form:form  action="facultyRequest" commandName="facultyData">
            <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
              <div class="modal-dialog bs-example-modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-user"></i> Add Faculty </h4>
                  </div>
                  <div class="modal-body">
                    <div class="panel panel-default">
                      <div class="panel-body">
                        <div class="col-lg-12 ">
                          <p class="lead ">
                          <div id="imaginary_container">
                <div class="input-group stylish-input-group">
               <input type="text" class="form-control"  name="sendRequestDetails.academyTB.AcademyName" id="searchFacultyId" placeholder="To">
                  <span class="input-group-addon">
                  <button type="submit"> <span class="glyphicon glyphicon-search"></span> </button>
                  </span> </div>
              </div>
                          </p>
                        </div>
                           <div class="col-lg-12 ">
                          <p class="lead ">
                          <input type="text" name="sendRequestDetails.subject" class="form-control" id="" value="I wnat to join this Academy , I Intrested to teach following Courses subject" placeholder="Subject">
                          </p>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-lg-12 ">
                         <div class="level">
                       
                       <div class="col-lg-3">
                         <label class="checkbox-inline">
        <input type="checkbox" checked="checked" name="course" value="CA" id="inlineCheckbox1"> <strong>CA</strong>
      </label> -
      <br>
        <label class="checkbox-inline">
        <input type="checkbox" checked="checked" value="CS" name="course" id="inlineCheckbox1"> <strong>CS</strong>
      </label>-
       <br>
        <label class="checkbox-inline">
        <input type="checkbox" value="option1" name="course" id="inlineCheckbox1"> <strong>CMA</strong>
      </label>-
                       
                       </div>
                       <div class="col-lg-6">
                        <label class="checkbox-inline">
        <input type="checkbox" checked="checked" name="CAlevel"  value="CPT"  id="inlineCheckbox1"> CPT 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" checked="checked" name="CAlevel" value="IPC" id="inlineCheckbox2"> IPC 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" value="option3" name="CAlevel" id="inlineCheckbox3"> Final 
      </label> 
       <br>
       <label class="checkbox-inline">
        <input type="checkbox" checked="checked" name="CSlevel" value="CPT" id="inlineCheckbox1"> CPT 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" checked="checked" name="CSlevel" value="IPC" id="inlineCheckbox2"> IPC 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" value="option3" name="CSlevel" id="inlineCheckbox3"> Final 
      </label> 
       <br>
       <label class="checkbox-inline">
        <input type="checkbox" value="option1" name="CMAlevel" id="inlineCheckbox1"> CPT 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" value="option2" name="CMAlevel" id="inlineCheckbox2"> IPC 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" value="option3" name="CMAlevel" id="inlineCheckbox3"> Final 
      </label> 
                       </div>
                       
                   <div class="clearfix"></div>    

   
                         </div>
                         
                         
                          <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                      <div class="panel-footer">
                        <div class="row">
                          <div class="col-md-7">
                            <div class="form-group">
                              <div class="btn-group">
                                <button type="submit"  class="btn btn-primary">Submit</button>
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
            </form:form>
            <div role="group" class="btn-group">
              <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn-group btn-group-xs btn-group-xsdropdown-toggle" type="button" id="btnGroupDrop1">
               Pending <span class="frin-box">12</span></button>
           
            </div>
          </div>
          </span>
          <div class="clearfix"></div>
          <hr>
          <ul role="tablist" id="myTab">
            <li  role="presentation"><a aria-expanded="true" aria-controls="all" data-toggle="tab" role="tab" id="all-tab" href="#all"> All Faculty </a><span>3,545</span></li>
            <li role="presentation" class=""><a aria-controls="ca" data-toggle="tab" id="ca-tab" role="tab" href="#ca" aria-expanded="false"> CA</a></li>
            <li role="presentation" class=""><a aria-controls="cs" data-toggle="tab" id="cs-tab" role="tab" href="#cs" aria-expanded="false"> CS</a></li>
            <li role="presentation" class=""><a aria-controls="cma" data-toggle="tab" id="cma-tab" role="tab" href="#cma" aria-expanded="false"> CMA</a></li>
            <li class="pull-right col-lg-4">
              <div id="imaginary_container">
                <div class="input-group stylish-input-group">
                  <input type="text" id="searchAllFacultyId" class="form-control "  placeholder="Search" >
                  <span class="input-group-addon">
                  <button type="submit"> <span class="glyphicon glyphicon-search"></span> </button>
                  </span> </div>
              </div>
            </li>
            <div class="clearfix"></div>
            
            <!--<div class="btn-group pull-right" style="margin-top:9px;">
             <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal1" data-whatever="" > 
<i class="fa fa-plus"></i>
 <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add</a></button></div>-->
          </ul>
          <div class="clearfix"></div>
          <hr>
          <div class="tab-content" id="myTabContent">
            <div aria-labelledby="all-tab" id="all" class="tab-pane fade active in " role="tabpanel">
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
          
        
           
              <div class="clearfix"></div>
           <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="ca-tab" id="ca" class="tab-pane fade" role="tabpanel">
           <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class="clearfix"></div>
           <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="cs-tab" id="cs" class="tab-pane fade" role="tabpanel">
         <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class="clearfix"></div>
           <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                   	
                  <div class="clearfix"></div>
                </div>
              </div>
                 <div class="clearfix"></div>
            </div>
            <div aria-labelledby="cma-tab" id="cma" class="tab-pan fade" role="tabpanel">
           <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              
              <div class="clearfix"></div>
            <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <br>
               
                  
                  <span class="viewer1  pull-right">
                  
                  <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <a href="cart.php" > <i class="fa fa-shopping-cart"></i></a>
                     </span>
                  
                  </span>
                  
                  <div class="col-lg-8 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>

 --%>