<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="entireApp/js/jquery.1.10.2.min.js"></script>
<script type="text/javascript" src="entireApp/js/jquery.autocomplete.min.js"></script> 
 <script type="text/javascript">
 

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
 
 function removeCentre(userId){
	 alert(userId);
		$.ajax({  
		    type : "post",  
		    url : "removeCentre.action",   
		    data : "userId=" + userId ,  
		    success : function(response) {  
		    
		     window.location.href = "facultyCenterPage";  
		    }
		   
		   });  
			
		}
 
 
 function facultyRequestMethod(){
	 var flag=false;
	 $.ajax({  
		    type : "post",  
		    url : "facultyRequest",   
		    data : $('#facultyRequestData').serialize() ,  
		    success : function(response) {  
		    	if(response=="already")
		    	{	flag=false;
		    	$("#FacultyMsg").show();}
		    	else{
		    		
		    		flag="true"
		    	}
		    	
		    }
	 
		   
		   }); 
	 return flag;
	 
	 
	 
 }
 
 
 function msgDisplay(){
	
		$('#msgId').show();	
	     }
 
 
 
 
</script>
 
      <div class="col-md-12 home-bg">
        <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab	">
          <div class="pad-lft1 pull-left">
            <h4> Center</h4>
          </div>
          <span class=" pull-right mar-top">
          <div aria-label="Button group with nested dropdown" role="group" class="btn-group">
      <!--      <button class="btn-group btn-group-xs " type="button">Create Faculty </button>-->
            <button type="button" class="btn-group btn-group-xs" data-toggle="modal" data-target="#exampleModal1" data-whatever="" >
            <i class="fa fa-plus"></i> <a href="#" style="color:#000;"> Add Center </a>
            </button>
           
            
            <form:form   id="facultyRequestData" commandName="acceptFacultydata">
            <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
              <div class="modal-dialog bs-example-modal-lg">
                <div class="modal-content">
                
                
                <div class="alert alert-danger" style="display: none;"	id="FacultyMsg">
					<a href="#" class="close" data-dismiss="alert">&times;</a>
					<strong>Error!</strong> "You Already Associate With Selected Academy"
			   </div>
                
                
                
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-user"></i> Add Center </h4>
                  </div>
                  <div class="modal-body">
                    <div class="panel panel-default">
                      <div class="panel-body">
                        <div class="col-lg-12 ">
                          <p class="lead ">
                          <div id="imaginary_container">
                <div class="input-group stylish-input-group">
               <input type="text" class="form-control"  id="searchFacultyId" placeholder="To">
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
                         
                         
             
         <input type="checkbox"  name="CA" value="CA" id="inlineCheckbox1"  <c:if test="${fn:length(caLevels)>0}">checked="checked"</c:if>> <strong>CA</strong>
      </label> -
      <br>
        <label class="checkbox-inline">
        <input type="checkbox"  value="CS" name="CS" id="inlineCheckbox1" <c:if test="${fn:length(csLevels)>0}">checked="checked"</c:if>> <strong>CS</strong>
      </label>-
       <br>
        <label class="checkbox-inline">
        <input type="checkbox" value="CMA" name="CMA" id="inlineCheckbox1" <c:if test="${fn:length(cmaLevels)>0}">checked="checked"</c:if>> <strong>CMA</strong>
      </label>-
                       
                       </div>
                       <div class="col-lg-6">
                       
  
        
      <label class="checkbox-inline">
      <input type="checkbox" name="subjectLevelTB.CAlevelName"  value="CPT"  id="inlineCheckbox1"  <c:forEach items="${caLevels}" var="caLevelsObj"> <c:if test="${fn:contains(caLevelsObj,'CPT')}">checked="checked"</c:if> </c:forEach>> CPT 
      </label>
      <label class="checkbox-inline">
      <input type="checkbox" name="subjectLevelTB.CAlevelName" value="IPC" id="inlineCheckbox2" <c:forEach items="${caLevels}" var="caLevelsObj"> <c:if test="${fn:contains(caLevelsObj,'IPC')}">checked="checked"</c:if> </c:forEach>> IPC 
      </label>
      <label class="checkbox-inline">
      <input type="checkbox"  name="subjectLevelTB.CAlevelName" value="Final" id="inlineCheckbox3" <c:forEach items="${caLevels}" var="caLevelsObj"> <c:if test="${fn:contains(caLevelsObj,'Final')}">checked="checked"</c:if> </c:forEach>> Final 
      </label> 
           
      <br>
       <label class="checkbox-inline">
        <input type="checkbox"  name="subjectLevelTB.CSlevelName" value="CPT" id="inlineCheckbox1"   <c:forEach items="${csLevels}" var="csLevelsObj"> <c:if test="${fn:contains(csLevelsObj, 'CPT')}">checked="checked"</c:if> </c:forEach>> CPT 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" name="subjectLevelTB.CSlevelName" value="IPC" id="inlineCheckbox2" <c:forEach items="${csLevels}" var="csLevelsObj"> <c:if test="${fn:contains(csLevelsObj, 'IPC')}">checked="checked"</c:if> </c:forEach>> IPC 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox"  name="subjectLevelTB.CSlevelName" value="Final" id="inlineCheckbox3"  <c:forEach items="${csLevels}" var="csLevelsObj"> <c:if test="${fn:contains(csLevelsObj, 'Final')}">checked="checked"</c:if> </c:forEach>> Final 
      </label> 
       <br>
       
       <label class="checkbox-inline">
        <input type="checkbox" value="CPT" name="subjectLevelTB.CMAlevelName" id="inlineCheckbox1"  <c:forEach items="${cmaLevels}" var="cmaLevelsObj"> <c:if test="${fn:contains(cmaLevelsObj, 'CPT')}">checked="checked"</c:if> </c:forEach>> CPT 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" value="IPC" name="subjectLevelTB.CMAlevelName" id="inlineCheckbox2" <c:forEach items="${cmaLevels}" var="cmaLevelsObj"> <c:if test="${fn:contains(cmaLevelsObj, 'IPC')}">checked="checked"</c:if> </c:forEach>> IPC 
      </label>
      <label class="checkbox-inline">
        <input type="checkbox" value="Final" name="subjectLevelTB.CMAlevelName" id="inlineCheckbox3"  <c:forEach items="${cmaLevels}" var="cmaLevelsObj"> <c:if test="${fn:contains(cmaLevelsObj, 'Final')}">checked="checked"</c:if> </c:forEach>> Final 
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
                                <button type="submit" onclick="return facultyRequestMethod();" class="btn btn-primary">Submit</button>
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
              <a aria-controls="pending" data-toggle="tab" id="pending-tab" role="tab" href="#pending" aria-expanded="false" style="color:#000;"> Pending</a>
              
               <span class="frin-box">12</span></button>
           
            </div>
          </div>
          </span>
          <div class="clearfix"></div>
          <hr>
          <ul role="tablist" id="myTab">
            <li  role="presentation"><a aria-expanded="true" aria-controls="all" data-toggle="tab" role="tab" id="all-tab" href="#all"> All Centers </a><span>3,545</span></li>
            <li role="presentation" class=""><a aria-controls="ca" data-toggle="tab" id="ca-tab" role="tab" href="#ca" aria-expanded="false"> CA</a></li>
            <li role="presentation" class=""><a aria-controls="cs" data-toggle="tab" id="cs-tab" role="tab" href="#cs" aria-expanded="false"> CS</a></li>
            <li role="presentation" class=""><a aria-controls="cma" data-toggle="tab" id="cma-tab" role="tab" href="#cma" aria-expanded="false"> CMA</a></li>
            <li class="pull-right col-lg-4">
              <div id="imaginary_container">
                <div class="input-group stylish-input-group">
                  <input type="text" class="form-control "  placeholder="Search" >
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
   <!--For Centre List  -->         
         <c:forEach items="${centerList}" var="centerObj">
              
                 <div class=" col-lg-4">
                 <div id="msgId" onclick="removeCentre(${centerObj.userId})" style="display:none;">are you sure ?</div>
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" onclick="msgDisplay()" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top "><c:out value="${centerObj.FName}" /></h4>
                    <p style="margin:0px;">CA</p>
                    <p>Edusmart Academy<br>
                   <c:out value="${centerObj.CCity}" />, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
          </c:forEach>
     <!--End Centre List  -->   
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="ca-tab" id="ca" class="tab-pane fade" role="tabpanel">
            <c:forEach items="${centerList}" var="centerObj">
                 <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top "><c:out value="${centerObj.FName}" /></h4>
                    <p style="margin:0px;">CA</p>
                    <p><!-- Edusmart Academy<br> -->
                   <c:out value="${centerObj.CCity}" />, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
          </c:forEach>
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="cs-tab" id="cs" class="tab-pane fade" role="tabpanel">
             <c:forEach items="${centerList}" var="centerObj">
                 <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top "><c:out value="${centerObj.FName}" /></h4>
                    <p style="margin:0px;">CS</p>
                    <p><!-- Edusmart Academy<br> -->
                   <c:out value="${centerObj.CCity}" />, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
         </c:forEach>     
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="cma-tab" id="cma" class="tab-pane fade" role="tabpanel">
                  
            <c:forEach items="${centerList}" var="centerObj"> 
                <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top "><c:out value="${centerObj.FName}" /></h4>
                    <p style="margin:0px;">CMA</p>
                    <p><!-- Edusmart Academy<br> -->
                   <c:out value="${centerObj.CCity}" />, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
          </c:forEach>   
              <div class="clearfix"></div>
            </div>
            
                <div aria-labelledby="pending-tab" id="pending" class="tab-pane fade" role="tabpanel">
               <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA , CS</p>
                    <p>Edusmart Academy<br>
                   Pune, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
                 <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA , CS</p>
                    <p>Edusmart Academy<br>
                   Pune, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
                 <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA , CS</p>
                    <p>Edusmart Academy<br>
                   Pune, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              
              <div class="clearfix"></div>
              <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA , CS</p>
                    <p>Edusmart Academy<br>
                   Pune, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
                 <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA , CS</p>
                    <p>Edusmart Academy<br>
                   Pune, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
                 <div class=" col-lg-4">
                <div class="faculty-box">
                  <div class="col-lg-4 col-sm-4 col-xs-4 col-md-4 left-none pull-left">
                   <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                 
                 <span class="pull-right">
                   <button type="button" class="close rht-cart" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </span>
                  
                  <div class="col-lg-7 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA , CS</p>
                    <p>Edusmart Academy<br>
                   Pune, MS</p>
                
                  </div>
                  
                  <div class="clearfix"></div>
                </div>
              </div>
              
              <div class="clearfix"></div>
            </div>
                   
          </div>
        </div>
      </div>
  

<!-- /container --> 


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
	var showChar = 16;
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

                