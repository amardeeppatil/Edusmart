 <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <script type="text/javascript">

 var DescTitle;
 var DescSubTitle;
 var Descaboutdesc;
 var DescAboutId; 
 
 function editFunction(title,subTitle,description,aboutId){
		
		DescTitle=title;
		DescSubTitle= subTitle;
		DescAboutId=aboutId;
		Descaboutdesc=description;
		 
		 $('#editTitle').val(title);
	     $('#editSubTitle').val(subTitle);
		 $('#editaboutdesc').val(description); 
	     $('#DescAboutId').val(aboutId);
	}
	

 function DescriptionReset()
 {
	 $('#editTitle').val(DescTitle);
     $('#editSubTitle').val(DescSubTitle);
	 $('#editaboutdesc').val(Descaboutdesc); 
     $('#DescAboutId').val(DescAboutId);
	
}


 function deleteAboutDescription(aboutId)
 {
	 $.ajax({  
	     type : "post",  
	     url : "deleteAboutDescription.action",   
	     data : "aboutId=" + aboutId ,  
	     success : function(response) {  
	     
	      window.location.href = "aboutPage";  
	     }
	    
	    });  

}

</script>

<script type="text/javascript">

function editInfodescription(){
 
    var description=document.getElementById('AboutInfoId').innerHTML;	
    
    $.ajax({
    	   type: "POST",
    	   url: "saveLongDescription",
    	   data: "description="+description,
    	   success: function(html){    
    	    	
    	   },
    	   beforeSend:function()
    	   {
    
    	   }
    	  });
}

function editInfoAdress(){

 alert("editInfoAdress");
 var address=document.getElementById('AddressId').innerHTML;	
    
    $.ajax({
    	   type: "POST",
    	   url: "saveInfoAddress",
    	   data: "address="+address,
    	   success: function(html){    
    	    	
    	   },
    	   beforeSend:function()
    	   {
    
    	   }
    	  });
}

</script>
 
 
<div class="col-md-12 home-bg">
        <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab">
          <ul role="tablist" id="myTab">
            <li class="" role="presentation">About <i class="fa fa-long-arrow-right"></i> </li>
            <li class="" role="presentation"><a aria-expanded="true" aria-controls="home" data-toggle="tab" role="tab" id="home-tab" href="#home" class="active"><i class="fa fa-arrow-circle-o-right"></i> Description</a></li>
            <li role="presentation" class=""><a aria-controls="profile" data-toggle="tab" id="profile-tab" role="tab" href="#profile" aria-expanded="false"><i class="fa fa-arrow-circle-o-right"></i> Info</a></li>
            <li role="presentation" class=""><a aria-controls="des" data-toggle="tab" id="des-tab" role="tab" href="#des" aria-expanded="false"><i class="fa fa-arrow-circle-o-right"></i> Member</a></li>
          </ul>
          <div class="clearfix"></div>
          <hr>
          <div class="tab-content" id="myTabContent">
           <div aria-labelledby="home-tab" id="home" class="tab-pane fade active in" role="tabpanel">
           
      <form:form action="saveAboutDescription" method="post" commandName="somedata">
              <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
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
                            <div class="col-md-2 col-xs-3   col-lg-1 firends1">
                             <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="entireApp/images/user.png" width="100%">
                              <input type="file">
                              </span></a> </div>
                            <div class="col-lg-10 profile-new">
                              <p class="lead ">
                               <input type="text" name="title"   class="form-control" id="" placeholder="Add main title here">
                              </p>
                            
                            </div>
                            <div class="clearfix"></div>
                            <div class="well-update profile-new">
                              <div class="col-lg-5"> <img alt="" src="entireApp/images/students.jpg" class="img-responsive">
                               <a href="#" class="btn btn-xs btn-primary pull-left " style="margin-top:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Your Gallery
                              <input type="file">
                              </span> </a> 
                              <a href="#" class="btn btn-xs btn-primary pull-right " style="margin-top:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> From Computer
                              <input type="file">
                              </span> </a>  </div>
                              <div class="col-lg-7 ">
                                <p class="margin-top">
                                  <input type="text" name="subTitle" class="form-control" id="" placeholder="Add sub-title here">
                                </p>
                                <p>
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
                                  <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                                <div class="btn-group">
                                  <button type="reset" class="btn btn-default">Reset</button>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-5">
               <a href="#" class="pull-left share" data-toggle="tooltip" title="Share" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                            <div class="form-group pull-right">
                             <select type="text" name="shareType" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">          
              <option value="All" data-icon="">All</option>         
              <option value="Faculty" data-icon="">Faculty</option>
              <option value="Student" data-icon="">Student</option>
           
            </select>   
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
        
    <!--  Edit News Popup-->
     <form:form action="editAboutDesc" commandName="editDescData">
          <input type="hidden" value="" name="aboutId" id="DescAboutId"> 
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
                              <div class="col-lg-5"> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> 
                               <a href="#" class="btn btn-xs btn-primary pull-left " style="margin-top:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Your Gallery
                              <input type="file">
                              </span> </a> 
                              <a href="#" class="btn btn-xs btn-primary pull-right " style="margin-top:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> From Computer
                              <input type="file">
                              </span> </a>  </div>
                              <div class="col-lg-7 ">
                                <p class="margin-top">
                                  <input type="text" name="subTitle" class="form-control" id="editSubTitle" placeholder="Add sub-title here">
                                </p>
                                <p >
                                  <textarea name="description" class="form-control" id="editaboutdesc" placeholder="Add Description here" rows="5"></textarea>
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
                                  <button type="button" class="btn btn-default" onclick="DescriptionReset()">Reset</button>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-5">
               <a href="#" class="pull-left share" data-toggle="tooltip" title="Share" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                            <div class="form-group pull-right">
                             <select type="text" name="shareType" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">          
              <option value="Academy" data-icon="">Academy</option>         
              <option value="Faculty" data-icon="">Faculty</option>
              <option value="Student" data-icon="">Student</option>
           
            </select>   
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
              <div class="panel panel-default">
                <div class="panel-heading"> <i class="fa fa-book fa-lg"></i> Description
                  <div class="btn-group pull-right">
                    <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal1" data-whatever="" >
                    <i class="fa fa-plus"></i> <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add </a>
                    </button>
                  </div>
                </div>
              </div>
              <script>
    $(document).ready(function(){
       $('#edit1').click(function(){
         document.getElementById("collapseOne").contentEditable="true";
         $('#collapseOne').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit1').attr('style','display:none;');
		  $('#done').attr('style','display:block;float:right;margin-right:11px');
		  
       });
     $('#edit2').click(function(){
         document.getElementById("collapseTwo").contentEditable="true";
         $('#collapseTwo').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit2').attr('style','display:none;');
		  $('#done1').attr('style','display:block;float:right;margin-right:11px');
		  
       });
	   
	    $('#edit3').click(function(){
         document.getElementById("collapseThree").contentEditable="true";
         $('#collapseThree').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit3').attr('style','display:none;');
		  $('#done2').attr('style','display:block;float:right;margin-right:11px');
		  
       });
	    $('#edit4').click(function(){
         document.getElementById("collapseFour").contentEditable="true";
         $('#collapseFour').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit4').attr('style','display:none;');
		  $('#done3').attr('style','display:block;float:right;margin-right:11px');
		  
       });
       $('#done').click(function(){
         document.getElementById("collapseOne").contentEditable="false";
         $('#collapseOne').attr('style','border:none;background-color:#fff');
		 
         $('#edit1').attr('style','display:block;float:right;margin-right:11px');
         $('#done').attr('style','display:none;');
       });
	   
	    $('#done1').click(function(){
         document.getElementById("collapseOne").contentEditable="false";
         $('#collapseTwo').attr('style','border:none;background-color:#fff');
		 
         $('#edit2').attr('style','display:block;float:right;margin-right:11px');
         $('#done1').attr('style','display:none;');
       });
	   
	      $('#done2').click(function(){
         document.getElementById("collapseThree").contentEditable="false";
         $('#collapseThree').attr('style','border:none;background-color:#fff');
		 
         $('#edit3').attr('style','display:block;float:right;margin-right:11px');
         $('#done2').attr('style','display:none;');
       });
	   
	    $('#done3').click(function(){
         document.getElementById("collapseFour").contentEditable="false";
         $('#collapseFour').attr('style','border:none;background-color:#fff');
		 
         $('#edit4').attr('style','display:block;float:right;margin-right:11px');
         $('#done3').attr('style','display:none;');
       });
	   
		
    });
</script>

<!--Iterator Start  -->
<c:forEach items="${aboutUsPostList}" var="aboutObj">

              <div class="bg-white ">
            <span style="float:right;margin-right: 11px;" > 
      <a href="#" data-toggle="modal" data-target="#exampleModal2" data-whatever="" onclick="editFunction('${aboutObj.title}','${aboutObj.subTitle}','${aboutObj.description}','${aboutObj.aboutId}')"> <i class="fa fa-pencil"></i></a> 
      <span style="float:left;margin-right: 11px;" ><a href="#" onclick="deleteAboutDescription(${aboutObj.aboutId})" data-toggle="tooltip" title="Delete" data-placement="bottom"> <i class="fa fa-trash-o blue"></i></a></span> </span> <span  style="display:none;float:right;margin-right: 11px;"> <i class="fa fa-floppy-o"></i> <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Reset" data-placement="bottom"> <i class="fa fa-repeat blue"></i></a></span> </span>
              
                <div id="" class="panel-group">
                  <div class="panel panel-default" id="panel1">
                    <div id="collapseOne" class="panel-collapse collapse in">
                      <div class="panel-body">
                        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                        <div class="col-lg-11 profile-new">
                          <p class="lead "> <a href="index.php"><c:out value=" ${aboutObj.title} "/> </a>  </p>
                          <p><span class="glyphicon glyphicon-time"></span> Posted on <c:out value=" ${aboutObj.date}  "/></p>
                        </div>
                        <div class="clearfix"></div>
                        <div class="well-update profile-new">
                          <div class="col-lg-5 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> </div>
                          <div class="col-lg-7 ">
                            <h4 class="margin-top"><c:out value=" ${aboutObj.subTitle}  "/></h4>
                            <p class="comment more"><c:out value=" ${aboutObj.description}  "/></p>
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
                </div>
              </div>
        </c:forEach>
<!--Iterator End  -->     

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
            </div>
           <div aria-labelledby="profile-tab" id="profile" class="tab-pane fade" role="tabpanel">
              <div class="panel panel-default">
                <div class="panel-heading"><i class="fa fa-info-circle fa-lg"></i> Academy Info </div>
              </div>
              <div class="well">
                <table class="table bdr-none">
                  <tbody>
                    <tr>
                      <td>Name</td>
                      <td><c:out value=" ${OwnerFirstName} "/></td>
                    </tr>
                    <tr>
                      <td>Location</td>
                      <td><c:out value=" ${City} "/></td>
                    </tr>
                    <tr>
                      <td>Establishment</td>
                      <td><c:out value="establishment"/></td>
                    </tr>
                    <tr>
                      <td>Tag Line</td>
                      <td><c:out value="tagLine"/></td>
                    </tr>
                    <tr>
                      <td class="col-lg-3">Vision / Objectives</td>
                      <td><c:out value="objectives"/></td>
                    </tr>
                    <tr>
                      <td class="col-lg-2">Long Description</td>
                      <td><div class="panel-group " style="margin-top:0px;">
                        <div class="panel panel-default" id="panel1">
                          <div id="collapseTwo" class="panel-collapse collapse in">
                            <div class="panel-body" style="padding:0px;">
                              <p id="AboutInfoId"><c:out value="description"/></p>
                            </div>
                          </div>
                        </div></div></td>
                      <td >
                      <span style="float:right;margin-right: 11px;" id="edit2"><a href="#" data-toggle="tooltip" title="Edit data-placement="bottom">
    <i class="fa fa-pencil blue"></i></a>
     
    </span>  
        <span  style="display:none;float:right;margin-right: 11px;" id="done1" onclick="editInfodescription()"><i class="fa fa-floppy-o blue"></i>
        <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Reset" data-placement="bottom">
        
        <i class="fa fa-repeat blue"></i></a></span>
        </span>
                       
                       </td>
                    </tr>
                    <tr>
                      <td>Address</td>
                      <td><div class="panel-group " style="margin-top:0px;">
                        <div class="panel panel-default" id="panel1">
                          <div id="collapseThree" class="panel-collapse collapse in">
                            <div class="panel-body" style="padding:0px;">
                              <p id="AddressId"><c:out value="address"/></p>
                            </div>
                          </div>
                        </div></div></td>
                      <td >
                       <span style="float:right;margin-right: 11px;" id="edit1"><a href="#" data-toggle="tooltip" title="Edit" data-placement="bottom">
    <i class="fa fa-pencil blue"></i></a>
     
    </span>  
        <span  style="display:none;float:right;margin-right: 11px;" id="done" onclick="editInfoAdress()"><i class="fa fa-floppy-o blue"></i>
        <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Reset" data-placement="bottom">
        
        <i class="fa fa-repeat blue"></i></a></span>
        </span>
                       </td>
                    </tr>
                    <tr>
                      <td>Contact</td>
                      <td><c:out value="Phone"/></td>
                    </tr>
                    <tr>
                      <td>Email</td>
                      <td><c:out value="EmailId"/></td>
                    </tr>
                    <tr>
                      <td>Website</td>
                      <td><c:out value="Website"/></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square fa-3x fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square fa-3x tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square fa-3x g-plus"></i></a></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="clearfix"></div>
            </div>
           <div aria-labelledby="des-tab" id="des" class="tab-pane fade" role="tabpanel">
              <div class="panel panel-default">
                <div class="panel-heading"><i class="fa fa-sign-in fa-lg"></i> Member
                  <div class="btn-group pull-right">
                    <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal3" data-whatever="" >
                    <i class="fa fa-plus"></i> <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add</a>
                    </button>
                  </div>
                </div>
              </div>
              <br>
              <div class="col-lg-12 establish">
               <span style="float:right;margin-right: 11px;" id="edit4">   <i class="fa fa-pencil"></i>
                 <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Delete" data-placement="bottom">
        
        <i class="fa fa-trash-o blue"></i></a></span>
              </span> 
               <span  style="display:none;float:right;margin-right: 11px;" id="done3">
              <i class="fa fa-floppy-o"></i>
               <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Reset" data-placement="bottom">
        
        <i class="fa fa-repeat blue"></i></a></span>
              </span>
              
                <div class="col-lg-2 col-sm-2 col-md-2 col-xs-4"><br>
                  <img src="entireApp/images/user.png" width="100%"></div>
                <div class=" panel-default" id="panel1">
                  <div id="collapseFour" class=" panel-collapse collapse in">
                    <div class="panel-body" style="padding:0px;">
                      <div class="col-lg-5 left-none abt"><br>
                        <h2>Vishal Bhattad</h2>
                        <p style="font-size:14px;">Designation - CA<br>
                          Contact No. - +91 8959479396<br>
                          Email ID - info@vsmart.com<br>
                          Joining Date- 28 Sep 2012</p>
                      </div>
                      <div class="col-lg-5 left-none abt">
                        <h2>Description</h2>
                        <p style="font-size:14px;">Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-12 establish"> <span style="float:right;margin-right: 11px;" id="edit4"><i class="fa fa-pencil blue"></i></span> <span  style="display:none;float:right;margin-right: 11px;" id="done3"><i class="fa fa-floppy-o blue"></i></span>
                <div class="col-lg-2 col-sm-2 col-md-2 col-xs-4"><br>
                  <img src="entireApp/images/user.png" width="100%"></div>
                <div class=" panel-default" id="panel1">
                  <div id="collapseFour" class=" panel-collapse collapse in">
                    <div class="panel-body" style="padding:0px;">
                      <div class="col-lg-5 left-none abt"><br>
                        <h2>Vishal Bhattad</h2>
                        <p style="font-size:14px;">Designation - CA<br>
                          Contact No. - +91 8959479396<br>
                          Email ID - info@vsmart.com<br>
                          Joining Date- 28 Sep 2012</p>
                      </div>
                      <div class="col-lg-5 left-none abt">
                        <h2>Responsibilities</h2>
                        <p style="font-size:14px;">Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
     <!--   Add new member popup-->
        <div class="modal fade " id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
          <div class="modal-dialog bs-example-modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-sign-in fa-lg"></i> Add New Member </h4>
              </div>
              <div class="modal-body">
                <div class="panel panel-default">
                  <div class="panel-body">
                    <div class="col-lg-12 establish">
                      <div class="col-lg-2 col-sm-3 col-md-3 col-xs-4 left-none"> <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="entireApp/images/user.png" width="100%">
                        <input type="file">
                        </span></a> </div>
                      <div class="col-lg-5 left-none abt">
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add User name ">
                        </p>
                         <p>
                          <input type="email" class="form-control" id="" placeholder="Add Designation ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Contact No. ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Email Address ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Joinining Date">
                        </p>
                      </div>
                      <div class="col-lg-5 left-none abt">
                       
                        <p>
                          <textarea type="email" class="form-control" id="" placeholder="Add description" rows="10"></textarea>
                        </p>
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
                            <button type="reset" class="btn btn-default">Reset</button>
                          </div>
                        </div>
                      </div>
                        <div class="col-md-5">
                             <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on Timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                               <div class="form-group pull-right">
                                
                             <select type="text" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">          
              <option value="0" data-icon="">All</option>         
              <option value="1" data-icon="">Faculty</option>
              <option value="2" data-icon="">Student</option>
           
            </select>   
                            </div>
                          </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      <script>
    $(document).ready(function(){
       $('#edit1').click(function(){
         document.getElementById("collapseOne").contentEditable="true";
         $('#collapseOne').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit1').attr('style','display:none;');
		  $('#done').attr('style','display:block;float:right;margin-right:11px');
		  
       });
    
       $('#done').click(function(){
         document.getElementById("collapseOne").contentEditable="false";
         $('#collapseOne').attr('style','border:none;background-color:#fff');
		 
         $('#edit1').attr('style','display:block;float:right;margin-right:11px');
         $('#done').attr('style','display:none;');
       });
	   
	  
		
    });
</script>
        <!--   Edit new member popup--> 
        <div class="modal fade " id="exampleModal6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
          <div class="modal-dialog bs-example-modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-sign-in fa-lg"></i> Change Member Info </h4>
              </div>
              <div class="modal-body">
                <div class="panel panel-default">
                  <div class="panel-body">
                    <div class="col-lg-12 establish">
                      <div class="col-lg-2 col-sm-3 col-md-3 col-xs-4 left-none"> <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="entireApp/images/user.png" width="100%">
                        <input type="file">
                        </span></a> </div>
                      <div class="col-lg-5 left-none abt">
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add User name ">
                        </p>
                         <p>
                          <input type="email" class="form-control" id="" placeholder="Add Designation ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Contact No. ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Email Address ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Joinining Date">
                        </p>
                      </div>
                      <div class="col-lg-5 left-none abt">
                       
                        <p>
                          <textarea type="email" class="form-control" id="" placeholder="Add description" rows="10"></textarea>
                        </p>
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
                            <button type="reset" class="btn btn-default">Reset</button>
                          </div>
                        </div>
                      </div>
                        <div class="col-md-5">
                             <a href="#" class="pull-left share" data-toggle="tooltip" title="Share on Timeline" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                               <div class="form-group pull-right">
                                
                             <select type="text" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">          
              <option value="0" data-icon="">All</option>         
              <option value="1" data-icon="">Faculty</option>
              <option value="2" data-icon="">Student</option>
           
            </select>   
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