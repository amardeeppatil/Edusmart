<%@page import="com.edusmartweb.edusmart.model.UserProfileTB"%>
<div style="position: fixed; top: 50%; right: 0; z-index: 99999;">
	<!--<span class='st_sharethis_large' displayText='ShareThis'></span><br />-->
	<a href="#"><span class='st_facebook_large' displayText='Facebook'></span></a><br />
	<a href="#"><span class='st_twitter_large' displayText='Tweet'></span></a><br />
	<a href="#"><span class='st_linkedin_large' displayText='LinkedIn'></span></a><br />
	<!--<span class='st_pinterest_large' displayText='Pinterest'></span><br />-->
	<a href="#"><span class='st_email_large' displayText='Email'></span></a><br />
	<a href="#"><span class='st_googleplus_large'
		displayText='Google +'></span></a>
</div>
<!--Header-->
<header>
	<div class="row-fluid pull-left text-center">
		<div>
			<img src="resources/img/edus.png" alt="" style="margin-top: 10px;" />
			<form class="form-search" method="post" id="" action="">
				<input id="search" type="text" name=""
					placeholder="Smart Decision for Smart Education" value="">
				<button type="submit" id="submit" class="">
					<i class="icon-search"></i>
				</button>
			</form>
		</div>

		<div class="span4 pull-right">
			<script type="text/javascript">
			/* viewSearchEngine
			viewFacultyProfile */
				$(window).load(function() {
					$(document).ready(function() {
						$('.imgSmile').width(60);
						$('.imgSmile').mouseover(function() {
							$(this).css("cursor", "pointer");
							$(this).css("z-index", "0");
							$(this).animate({
								width : "70px"
							}, 'slow');
						});

						$('.imgSmile').mouseout(function() {
							$(this).animate({
								width : "60px"
							}, 'slow');
						});
						
					});
				});

				
			</script>

			<img src="resources/img/icon-classroom.png" onMouseOver="shows('div3')"
				onMouseOut="hide('div3')" alt="smile" class="imgSmile cart-in" style="z-index:0;">

			<img src="resources/img/icon-login.png" onMouseOver="shows('div2')"
				onMouseOut="hide('div2')" alt="smile" class="imgSmile log-in" style="z-index:0;">

			<img src="resources/img/icon-cont.png" onMouseOver="shows('div1')"
				onMouseOut="hide('div1')" alt="smile" class="imgSmile cont-in" style="z-index:0;">

			<script type="text/javascript">
				function shows(elem) {
					document.getElementById(elem).style.display = 'block';
				}

				function hide(elem) {
					document.getElementById(elem).style.display = 'none';
				}
			</script>
			<%
				UserProfileTB user = UserProfileTB.class.cast(session.getAttribute("USER"));
			%>
			<div id="div3" onMouseOver="shows('div3')" onMouseOut="hide('div3')"
				class="top-pop">
				<%
					if (user == null) {
				%>
				<div class="title-pop">Login</div>
				<form role="form" action="login" method="post">
				<div class="body-pop">
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> 
							<input type="email" name="UserName" class="form-control" placeholder="Enter Email"
                        		value="exce@gmail.com" required="required" style="width: 87%;"/>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> 
							<input type="password" name="Password" class="form-control" placeholder="Password"
                        		value="a" required="required" style="width: 88%;"/>
						</div>
					
				</div>
				<div class="bottom-pop">
			<a href="registration.jsp">Sign Up</a>
				
					<button type="submit" class="btn bg-olive btn-block"><img src="resources/img/icon-arrow.png" alt="" class="pull-right" /></button>
				</div>
				</form>
				<%
					} else {
				%>
					<div class="title-pop">Welcome <%= user.getUserName().toString() %></div>
					<!-- <div class="bottom-pop">
						<s:url id="logoutURL" action="logout">
							<s:param name="name" value="value" />
						</s:url> -->
						<a href="%{logoutURL}" cssClass="btn btn-default btn-flat"><img src="resources/img/icon-arrow.png" alt="" class="pull-right" /></a>
					</div>		

				<%
					}
				%>
				
			</div>

			<div id="div1" onMouseOver="shows('div1')" onMouseOut="hide('div1')"
				class="top-pop">
				<div class="title-pop">Contact</div>
				<div class="body-pop">
					<form role="form">
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="email" class="form-control" id="exampleInputEmail1"
								placeholder="Enter email" style="width: 88%;">
						</div>
						<div class="form-group">
							<textarea class="form-control" rows="3" style="width: 88%;"></textarea>
						</div>


					</form>
				</div>
				<div class="bottom-pop">
					<img src="resources/img/icon-arrow.png" alt="" class="pull-right" />
				</div>

			</div>


			<div id="div2" onMouseOver="shows('div2')" onMouseOut="hide('div2')"
				class="top-pop">

			<div class="title-pop">Add to Class Room</div>
				<div class="body-pop">
					<ul>
						<li>IDT Course</li>
						<li>IDT Course</li>
						<li>IDT Course</li>
					</ul>
				</div>

				<div class="bottom-pop">
					<img src="resources/img/icon-arrow.png" alt="" class="pull-right" />
				</div>
				
			</div>
		</div>
	</div>
	<div id="logo" class="span2 pull-left">
		<s:url id="viewHome" action="home"> </s:url><s:a href="%{viewHome}"><img src="resources/img/symbol.png" alt=""
			style="margin-top: 10px;" /></s:a>
	</div>

	<div class="clearfix"></div>
	<div class="container-fluid"
		style="background-color: #fff; position: absolute; width: 98.5%; right: 0; bottom: 0px; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; border-left: 2px #879196 solid;">
		<div class="navbar" style="margin: 0px 0px 0px -18px !important;">
			<div class="navbar-inner" style="padding: 0 !important;">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>

					<%-- <div class="nav-collapse collapse">
						<ul class="nav">
							<!-- <li class="active" style="width: 146px; text-align: center;"> -->
							<%
							if("Home".equalsIgnoreCase(request.getAttribute("page").toString())){
							%>
							<li class="active" style="width: 146px; text-align: center;">
								<s:url id="viewHome" action="home"> </s:url><s:a href="%{viewHome}">Home</s:a></li>
							<li>
							<% } else { %>
							<li style="width: 146px; text-align: center;">
								<s:url id="viewHome" action="home"> </s:url><s:a href="%{viewHome}">Home</s:a></li>
							<li>
							<% } %>
							
							<%
							if("Course".equalsIgnoreCase(request.getAttribute("page").toString())){ 
							%>
							<li class="active" >
								<s:url id="viewSearchEngine" action="search_engine"></s:url><s:a href="%{viewSearchEngine}" >Courses</s:a>
							</li>
							<% } else { %>
							<li>
								<s:url id="viewSearchEngine" action="search_engine"></s:url><s:a href="%{viewSearchEngine}" >Courses</s:a>
							</li>
							<% } %>
							
							<%
							if("Faculty".equalsIgnoreCase(request.getAttribute("page").toString())){ 
							%>
							<li class="active">
								<s:url id="viewFacultyProfile" action="facultyProfile"></s:url><s:a href="%{viewFacultyProfile}" >Faculty</s:a>
							</li>
							<% } else { %>
							<li >
								<s:url id="viewFacultyProfile" action="facultyProfile"></s:url><s:a href="%{viewFacultyProfile}" >Faculty</s:a>
							</li>
							<% } %>
							
							<%
							if("News".equalsIgnoreCase(request.getAttribute("page").toString())){ 
							%>
							<li class="active">
								<s:url id="viewNewsPage" action="show"></s:url><s:a href="%{viewNewsPage}" >Faculty</s:a>
							</li>
							<% } else { %>
							<li >
								<s:url id="viewNewsPage" action="show"></s:url><s:a href="%{viewNewsPage}" >Faculty</s:a>
							</li>
							<% } %>
							
							
							
							<li>
								<a href="">Conventional Class</a>
							</li>
							<li>
								<a href="">Virtual Class</a>
							</li>
							<li>
								<a href="">Study Center</a>
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Course Material <!-- <i class="icon-angle-down"></i>--></a>
								<!--<ul class="dropdown-menu">
                                <li><a href="career.html">Career</a></li>
                                <li><a href="blog-item.html">Blog Single</a></li>
                                <li><a href="faq.html">FAQ</a></li>
                                <li><a href="pricing.html">Pricing</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="typography.html">Typography</a></li>
                                <li><a href="registration.html">Registration</a></li>
                                <li class="divider"></li>
                                <li><a href="privacy.html">Privacy Policy</a></li>
                                <li><a href="terms.html">Terms of Use</a></li>
                            </ul>--></li>
							<li><a href="">Student Club</a></li>
							<li><a href="">Scholorship</a></li>
							<li><a href="">Group Discussion</a></li>
							<!-- <li class="login">
                            <a data-toggle="modal" href="#loginForm"><i class="icon-lock"></i></a>
                        </li>-->
						</ul>
					</div> --%>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>

	</div>
</header>
<!-- /header -->