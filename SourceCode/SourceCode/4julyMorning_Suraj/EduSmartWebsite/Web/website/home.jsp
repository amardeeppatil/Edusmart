<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="main-wrapper">
	<!--Slider-->
	<div class="span10" style="margin: 0px !important;">
		<section id="slide-show">
			<div id="slider" class="sl-slider-wrapper">

				<!--Slider Items-->
				<div class="sl-slider">
					<!--Slider Item1-->
					<div class="sl-slide item1" data-orientation="horizontal"
						data-slice1-rotation="-25" data-slice2-rotation="-25"
						data-slice1-scale="2" data-slice2-scale="2">
						<img class="pull-right" src="img/banner-image-1.png" alt="" />
					</div>
					<!--/Slider Item1-->

					<!--Slider Item2-->
					<div class="sl-slide item2" data-orientation="vertical"
						data-slice1-rotation="10" data-slice2-rotation="-15"
						data-slice1-scale="1.5" data-slice2-scale="1.5">
						<img class="pull-right" src="img/banner-image-2.png" alt="" />
					</div>
					<!--Slider Item2-->

					<!--Slider Item3-->
					<div class="sl-slide item3" data-orientation="horizontal"
						data-slice1-rotation="3" data-slice2-rotation="3"
						data-slice1-scale="2" data-slice2-scale="1">
						<img class="pull-right" src="img/banner-image-3.png" alt="" />
					</div>
					<!--Slider Item3-->

				</div>
				<!--/Slider Items-->

				<!--Slider Next Prev button-->
				<nav id="nav-arrows" class="nav-arrows">
					<span class="nav-arrow-prev"><i class="icon-angle-left"></i></span>
					<span class="nav-arrow-next"><i class="icon-angle-right"></i></span>
				</nav>
				<!--/Slider Next Prev button-->

			</div>
			<!-- /slider-wrapper -->
		</section>
	</div>
	<div class="span3">
		<br>
		<div>
			<img src="img/team-member-1.jpg" alt="" class="img-circle pull-left"
				style="width: 30%; float: left;">
			<div class="pull-right" style="width: 70%; float: left;">
				<h3>
					Step3 Title!<i style="" class="icon-thumbs-up"></i>
				</h3>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry.</p>
			</div>
			<div class="clearfix"></div>
			<br>
		</div>
		<br>
		<div>
			<img src="img/team-member-1.jpg" alt="" class="img-circle pull-left"
				style="width: 30%; float: left;">
			<div class="pull-right" style="width: 70%; float: left;">
				<h3>
					Step3 Title!<i style="" class="icon-thumbs-up"></i>
				</h3>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry.</p>
			</div>
			<div class="clearfix"></div>
			<br>
		</div>

		<div>
			<img src="img/team-member-1.jpg" alt="" class="img-circle pull-left"
				style="width: 30%; float: left;">
			<div class="pull-right" style="width: 70%; float: left;">
				<h3>
					Step3 Title!<i style="" class="icon-thumbs-up"></i>
				</h3>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry.</p>
			</div>
			<div class="clearfix"></div>
			<br>
		</div>
	</div>
	<div class="clearfix"></div>
	<!--/Slider-->
	<br>

	<section id="recent-works">
		<div class="container-fluid"
			style="width: 100%; padding: 0 !important;">
			<!--<div class="gap"></div>-->
			<ul class="courses-box">
				<li class="span4 text-center bx"
					style="background-color: #edd63a; height: 200px;">
					<div class="preview">
						<br> <img src="img/CA.png" onMouseOver="shows('CA')"
							alt="smile" class="course">
						<!--<img src="img/2.jpg" alt="">-->
						<!-- <div class="overlay">
                    </div>-->

					</div>
					<div id="CA" style="display: none;" onMouseOver="shows('CA')"
						onMouseOut="hide('CA')">

						<div class="subcourse">
							<a class="sb1">CA Course</a> <a class="sb2">CA Course</a> <a
								class="sb3">CA Course</a>
							<div class="clearfix"></div>
						</div>
					</div> <!--  <div class="desc">
                    <h5>CS</h5>
                </div>-->

				</li>
				<!--/Item 2-->

				<!--Item 3-->
				<li class="span4 text-center bx"
					style="background-color: #99cc01; height: 200px;">
					<div class="preview">
						<br> <img src="img/CS.png" onMouseOver="shows('CS')"
							onMouseOut="hide('CS')" alt="smile" class="course">
						<!--   <div class="overlay">
                    </div>-->

					</div> <!-- <div class="desc">
                    <h5>CWA</h5>
                </div>-->
					<div id="CS" style="display: none;" onMouseOver="shows('CS')">
						<div class="subcourse">
							<!--  <img src="img/3.jpg" alt=" " width="100%" style="max-height:400px">-->
							<a class="sb1">CS Course</a> <a class="sb2">CS Course</a> <a
								class="sb3">CS Course</a>
							<div class="clearfix"></div>
						</div>
					</div>
				</li>
				<!--/Item 3-->

				<!--Item 4-->
				<li class="span4 text-center bx"
					style="background-color: #35bc7a; height: 200px;">
					<div class="preview">
						<br> <img src="img/CMA.png" onMouseOver="shows('CMA')"
							onMouseOut="hide('CMA')" alt="smile" class="course">
						<!--  <div class="overlay">
                    </div>-->
					</div>

					<div id="CMA" style="display: none;" onMouseOver="shows('CMA')">
						<div class="subcourse">
							<a class="sb1">CMA Course</a> <a class="sb2">CMA Course</a> <a
								class="sb3">CMA Course</a>
							<div class="clearfix"></div>
						</div>
					</div>
				</li>
				<!--/Item 4-->
			</ul>
		</div>
	</section>
</div>

