<%@page import="java.util.Iterator"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="com.edusmartweb.edusmart.model.*" %>

<div class="col-md-8 home-bg well-mid">


<script>
          var options = [];

$( '.dropdown-menu a' ).on( 'click', function( event ) {

   var $target = $( event.currentTarget ),
       val = $target.attr( 'data-value' ),
       $inp = $target.find( 'input' ),
       idx;

   if ( ( idx = options.indexOf( val ) ) > -1 ) {
      options.splice( idx, 1 );
      setTimeout( function() { $inp.prop( 'checked', false ) }, 0);
   } else {
      options.push( val );
      setTimeout( function() { $inp.prop( 'checked', true ) }, 0);
   }

   $( event.target ).blur();
      
   console.log( options );
   return false;
});

</script>


<script type="text/javascript">

var postTitle;
var postSubTitle;
var postaboutdesc;
var postAboutId; 

function editFunction(title,subTitle,description,aboutId){

	alert("edit fun called...");	
	postTitle=title;
	postSubTitle= subTitle;
	postAboutId=aboutId;
	postaboutdesc=description;
		 
		 $('#editTitle').val(title);
	     $('#editSubTitle').val(subTitle);
		 $('#editPostdesc').val(description); 
	     $('#postAboutId').val(aboutId);
	}
	

function postReset()
{
	 $('#editTitle').val(postTitle);
    $('#editSubTitle').val(postSubTitle);
	 $('#editPostdesc').val(postaboutdesc); 
    $('#postAboutId').val(postAboutId);
	
}

function removePost(aboutId){

	alert(aboutId);
	$.ajax({  
	    type : "post",  
	    url : "removePost.action",   
	    data : "aboutId=" + aboutId ,  
	    success : function(response) {  
	    
	     window.location.href = "academyProfile";  
	    }
	   
	   });  
		
	}

</script>
    
        <div class="panel panel-default">
          <div class="panel-heading"> Waht's new with you
            <div class="btn-group pull-right">
              <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom pull-left" data-toggle="modal" data-target="#exampleModal1" data-whatever="" >
              <i class="fa fa-plus"></i>
               <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add </a> 
              </button>
            </div>
          </div>
        </div>
        
    <form:form action="saveAcademyPost" commandName="postData">
        <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
          <div class="modal-dialog bs-example-modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-user"></i> Timeline </h4>
              </div>
              <div class="modal-body">
                <div class="panel panel-default">
                  <div class="panel-body">
                    <div class="">
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="entireApp/images/user.png" width="100%">
                        <input type="file">
                        </span></a> </div>
                      <div class="col-lg-10 profile-new">
                        <p class="lead ">
                          <input type="text" name="title" class="form-control" id="" placeholder="Add main title here">
                        </p>
                      </div>
                      <div class="clearfix"></div>
                      <div class="well-update profile-new">
                        <div class="col-lg-5"> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> 
                       
                        <a href="#" class="btn btn-xs btn-primary pull-left " style="margin-top:10px;"> 
                       
                       
                            <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Your Gallery
                          <input type="file">
                          </span>
                          </a>
                        <a href="#" class="btn btn-xs btn-primary pull-right " style="margin-top:10px;"> 
                       
                       
                            <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> From Computer
                          <input type="file">
                          </span>
                          </a> 
                         <span style="font-size:12px;"><em>Optional</em></span>
                          
                          </div>
                        <div class="col-lg-7 ">
                          <p class="margin-top">
                            <input type="text" name="subTitle" class="form-control" id="" placeholder="Add sub-title here">
                          </p>
                          <p >
                            <textarea name="description" class="form-control" id="" placeholder="Add Description here" rows="5"></textarea>
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
                            <button type="button" class="btn btn-default">Reset</button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-5">
                      <div class="button-group pull-right">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle " data-toggle="dropdown">Select <span class="caret"></span></button>
<ul class="dropdown-menu width4">
  <li><input name="shareType" type="checkbox" value="All" />&nbsp;All</li>
  <li><input name=shareType" type="checkbox" value="Faculty" />&nbsp;Faculty</li>
  <li><input name="shareType" type="checkbox" value="Students" />&nbsp;Students</li>
  <li><input name="shareType" type="checkbox" value="Center" />&nbsp;Center</li>

</ul>
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
    
 <form:form action="editPost" commandName="editData">
 	<input type="hidden" value="" name="aboutId" id="postAboutId">
        <div class="modal fade " id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
          <div class="modal-dialog bs-example-modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-user"></i> About </h4>
              </div>
              <div class="modal-body">
                <div class="panel panel-default">
                  <div class="panel-body">
                    <div class="">
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="entireApp/images/user.png" width="100%">
                        <input type="file">
                        </span></a> </div>
                      <div class="col-lg-10 profile-new">
                        <p class="lead ">
                          <input type="text" name="title" class="form-control" id="editTitle" placeholder="Add main title here">
                        </p>
                      </div>
                      <div class="clearfix"></div>
                      <div class="well-update profile-new">
                        <div class="col-lg-5"> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <a href="#" class="btn btn-xs btn-primary pull-right center-block" style="margin:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Add your picture
                          <input type="file">
                          </span></a> </div>
                        <div class="col-lg-7 ">
                          <p class="margin-top">
                            <input type="text" name="subTitle" class="form-control" id="editSubTitle" placeholder="Add sub-title here">
                          </p>
                          <p >
                            <textarea name="description" class="form-control" id="editPostdesc" placeholder="Add Description here" rows="5"></textarea>
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
                            <button type="button" class="btn btn-default" onclick="postReset()">Reset</button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-5">
                        <div class="form-group">
                          <select class="form-control privacy-dropdown pull-right input-sm" name="privacy" style="  margin-right: 10px;">
                            <option selected="selected" value="1">Academy</option>
                            <option value="2">Faculty</option>
                            <option value="3">Students</option>
                            <option value="3">Center</option>
                          </select>
                          <a href="#" class="pull-right share" data-toggle="tooltip" title="Share" data-placement="bottom"> <img src="entireApp/images/plane.png"></a> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</form:form>   
 
      
        <!-- First Blog Post -->
        		
 <c:forEach items="${academyProfilePostList}" var="about">     
        <div class="bg-white "> <span style="float:right;margin-right: 11px;" id="edit1"> <a href="#" data-toggle="modal" data-target="#exampleModal2" data-whatever="" onclick="editFunction('${about.title}','${about.subTitle}','${about.description}','${about.aboutId}')" > <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;" ><a href="#" onclick="removePost(${about.aboutId})" data-toggle="tooltip" title="Delete" data-placement="bottom"> <i class="fa fa-trash-o blue"></i></a></span> </span> <span  style="display:none;float:right;margin-right: 11px;" id="done"> <i class="fa fa-floppy-o"></i> <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Reset" data-placement="bottom"> <i class="fa fa-repeat blue"></i></a></span> </span>
          <div id="" class="panel-group">
            <div class="panel panel-default" id="panel1">
              <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                  <div class="col-md-2 col-xs-3   col-lg-2 firends1"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                  <div class="col-lg-10 profile-new">
                  <p class="lead "> <a href="#"> <c:out value=" ${about.title} "/>  </a>   </p>
                  <p><span class="glyphicon glyphicon-time"></span> Posted on <c:out value=" ${about.date}  "/> </p>
                  </div>
                  <div class="clearfix"></div>
                  <div class="well-update profile-new">
                    <div class="col-lg-5 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> </div>
                    <div class="col-lg-7 ">
                      <h4 class="margin-top"><c:out value=" ${about.subTitle}  "/></h4>
                      <p class="comment more"><c:out value=" ${about.description}  "/></p>
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
              <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a>
              <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a>
              <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a>
              
              </li>
            </ul>
            <br>
          </div>
        </div>
        <div class="bottom-bg">
          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
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
          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
          <div class="col-lg-10 col-sm-10 col-xs-10 left-none">
            <form>
              <input type="text" class="form-control" placeholder="Write a comment...">
            </form>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
  </c:forEach> 

      </div>

