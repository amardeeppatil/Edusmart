<%-- <%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.edusmart.dao.*"%>
<%@page contentType="text/html" import="java.util.*"%>
<%@page import="com.edusmart.controller.CommonController"%>
<%
	UserProfileTB user = UserProfileTB.class.cast(session
			.getAttribute("USER"));
%>
<style>
.dropdown-menu {
	margin-top: 5px;
}

.btn {
	display: inline-block;
	padding: 4px 12px;
	margin-bottom: 0;
	font-size: 14px;
	line-height: 20px;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #333333;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	background-color: #f5f5f5;
	background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff),
		to(#e6e6e6));
	background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',
		endColorstr='#ffe6e6e6', GradientType=0);
	border-color: #e6e6e6 #e6e6e6 #bfbfbf;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled= false);
	border: 1px solid #cccccc;
	border-bottom-color: #b3b3b3;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px
		rgba(0, 0, 0, .05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px
		rgba(0, 0, 0, .05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, .2), 0 1px 2px
		rgba(0, 0, 0, .05);
}

a {
	color: #0088cc;
	text-decoration: none;
}

user agent stylesheeta:-webkit-any-link {
	color: -webkit-link;
	text-decoration: underline;
	cursor: auto;
}

Inherited from div.span2.text-center
.text-center {
	text-align: center;
}

Inherited from body
body {
	margin: 0;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 20px;
	color: #333333;
	background-color: #ffffff;
}

Inherited from html
html {
	font-size: 100%;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {

		getFacultyProfileAbout();

		$("body").on("click", "a#aboutInfo", function() {
			getFacultyProfileAbout();
		});


		/* $("body").on("click", "div#addCourse", function() {
			$.ajax({
				type : "GET",
				url : "addCourse",
				success : function(data) {
					$("#profileContainer").html(data);
				}
			});
		});

		$("body").on("click", "div#addProduct", function() {
			$.ajax({
				type : "GET",
				url : "addProduct",
				success : function(data) {
					$("#profileContainer").html(data);
				}
			});
		}); */

		/* $("body").on("click", "a#productsData", function() {
			$.ajax({
				type : "GET",
				url : "getAllProducts",
				success : function(data) {
					$("#profileContainer").html(data);
				}
			});
		}); */

		$("body").on("click", "a#updateFacultyProfile", function() {
			$.ajax({
				type : "GET",
				url : "updateFacultyProfile",
				data : {
					url : "updateFacultyProfileAbout"
				},
				success : function(data) {
					$("#personalInfo").html(data);
				}
			});
		});

		$("body").on("click", "a#updateFacultyContactDetails", function() {
			$.ajax({
				type : "GET",
				url : "updateFacultyProfile",
				data : {
					url : "collapseContactInfo"
				},
				success : function(data) {
					$("#contactDetails").html(data);
				}
			});
		});

		$("body").on("click", "a#updateFacultyProfileAddress", function() {
			$.ajax({
				type : "GET",
				url : "updateFacultyProfile",
				data : {
					url : "updateFacultyProfileAddress"
				},
				success : function(data) {
					$("#addressDetails").html(data);
				}
			});
		});

		$("body").on("click", "a#updateFacultyProfileEmergency", function() {
			$.ajax({
				type : "GET",
				url : "updateFacultyProfile",
				data : {
					url : "updateFacultyProfileEmergency"
				},
				success : function(data) {
					$("#emergencyDetails").html(data);
				}
			});
		});		

		$("body").on("click", "a#updateFacultyProfessional", function() {
			$.ajax({
				type : "GET",
				url : "updateFacultyProfile",
				data : {
					url : "updateFacultyProfessional"
				},
				success : function(data) {
					$("#professionalDetails").html(data);
				}
			});
		});	


		$("body").on("click", "a#updateFacultyBankDetails", function() {
			$.ajax({
				type : "GET",
				url : "updateFacultyProfile",
				data : {
					url : "updateFacultyBankDetails"
				},
				success : function(data) {
					$("#bankDetails").html(data);
				}
			});
		});	
		

	});

	function getFacultyProfileAbout() {
		$.ajax({
			type : "GET",
			url : "getFacultyProfileAbout",
			success : function(data) {
				$("#profileContainer").html(data);
			}
		});
	}
</script>

<div class="container-fluid">
	<div class="row-fluid">

		<div class="span9" style="margin-top: 20px;">
			<div class="hero-unit">
				<div class="span3" style="height: 180px;">
					<!-- <a href="#" class="btn btn-primary mrg1">Add Cover Photo
						&raquo;</a> -->
					<%
					if (user!= null) {
						if (user.getProfileImage() == null) {
					%>
					<img alt="Profile Image" src="img/default_profile_pic.png"
						class="profileImg"
						style="width: 167px; height: 167px; position: relative; bottom: 0px; padding-left:10px;">
					<%
						} else {
					%>
					<img alt="Profile Image" src="<%=user.getProfileImage()%>"
						class="profileImg"
						style="width: 167px; height: 171px; position: relative; bottom: 0px; padding-left:10px;">
					<%
						}
					}
					%>
					<s:file name="profileFileUpload" onchange="readProfileURL(this);" />

				</div>

				<!-- <div class="span5 pull-right"
					style="height: 40px; bottom: -135px; position: relative;">
					<div id="addCourse" class="btn btn-primary mrg1">New Course&raquo;</div> 
					<div id="addProduct" class="btn btn-primary mrg1">New Product&raquo;</div>
				</div> -->

				<div class="clearfix"></div>
				<div class="row-fluid profile-menu">
					<ul class="nav nav-pills offset2"
						style="margin-bottom: 0 !important;">
						<li><a href="#">Timeline</a></li>
						<li class="active"><a href="#" id="aboutInfo">About</a></li>
						<li><s:a action="facultyProducts">Products</s:a></li>
						<li><s:a action="facultylist">Faculty</s:a></li>
						<li><a href="#">Courses</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">More <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
					</ul>
				</div>
			</div>

			<div id="profileContainer"></div>
			<!--/row-->
		</div>

		<div class="span3" style="margin-top: 20px;">
			<div class="well sidebar-nav">
				<ul class="nav nav-list">
					<li class="nav-header"><h4>Testimonials</h4></li>
				</ul>
			</div>
			<!--/.well -->
		</div>
		<!--/span-->
	</div>
	<!--/row-->

</div>

 --%>
 
 
 <div class="col-md-8 home-bg well-mid"> 
    
    
      <form class="facebook-share-box" enctype="multipart/form-data" role="form" method="post" action="#">
        <ul class="post-types">
          <li class="post-type"> <a href="#" title="" class="status"><i class="fa fa-file"></i> Status</a> </li>
          <li class="post-type"> <a href="#" class="photos"><i class="fa fa-camera"></i> Photo/Video</a> </li>
          <li class="post-type"> <a href="#" class="photos"><i class="fa fa-star"></i> Life Event</a> </li>
        </ul>
        <div class="share">
          <div class="arrow"></div>
          <div class="panel panel-default">
            <div class="panel-heading"><i class="fa fa-file"></i> Update Status</div>
            <div class="panel-body">
              <div class="">
                <textarea placeholder="What's on your mind ?" style="height: 62px; overflow: hidden;" class="form-control message" id="status_message" rows="10" cols="40" name="message"></textarea>
              </div>
            </div>
            <div class="panel-footer">
              <div class="row">
                <div class="col-md-7">
                  <div class="form-group">
                    <div class="btn-group">
                      <button class="btn btn-primary btn-sm" type="button"><i class="icon icon-picture"></i>Add Photo</button>
                    </div>
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="form-group">
                    <select class="form-control privacy-dropdown pull-left input-sm" name="privacy" style="  margin-right: 10px;">
                      <option selected="selected" value="1">Public</option>
                      <option value="2">Only my friends</option>
                      <option value="3">Only me</option>
                    </select>
                    <input type="submit" class="btn btn-primary btn-sm" value="Post" name="submit">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
     
      <!-- First Blog Post -->
      <div class="bg-white well-new">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive"></div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="index.php"> John Smith</a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on August 28, 2013 at 10:00 PM</p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top">John Smith</h4>
            <p class="comment more">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
        </div> 
        <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment</a> .</li>
            <li> <a href="#" >Share</a> </li>
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
     
      <div class="bg-white ">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> 
        <img src="images/user.png" class="featurette-image img-responsive"></div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="index.php"> John Smith</a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on August 28, 2013 at 10:00 PM</p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>
          <div class="col-lg-7 ">
            <h4 class="margin-top">John Smith</h4>
            <p class="comment more">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment</a> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
      </div>
      <div class="bottom-bg">
        <form>
          <div class="col-lg-1 col-sm-3 col-xs-3"> <img src="images/user.png" class="featurette-image img-responsive" style="margin-top: 5px;"> </div>
          <div class="col-lg-11 col-sm-7 col-xs-9">
            <input type="text" class="form-control" placeholder="Write a comment...">
          </div>
          <div class="clearfix"></div>
        </form>
      </div>
      
       <div class="clearfix"></div>
     
      <div class="bg-white ">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> 
        <img src="images/user.png" class="featurette-image img-responsive"></div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="index.php"> John Smith</a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on August 28, 2013 at 10:00 PM</p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>
          <div class="col-lg-7 ">
            <h4 class="margin-top">John Smith</h4>
            <p class="comment more">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment</a> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
      </div>
      <div class="bottom-bg">
        <form>
          <div class="col-lg-1 col-sm-3 col-xs-3"> <img src="images/user.png" class="featurette-image img-responsive" style="margin-top: 5px;"> </div>
          <div class="col-lg-11 col-sm-7 col-xs-9">
            <input type="text" class="form-control" placeholder="Write a comment...">
          </div>
          <div class="clearfix"></div>
        </form>
      </div>
    </div>
    