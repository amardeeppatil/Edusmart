<style>
#nav {
	width: 41em; /* 1000 */
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
	position: relative;
}
#nav > a {
	display: none;
	background: #337AB7 !important;
	color: #E06D09 !important;
}
#nav li {
	position: relative;
	list-style-type: none;
}
#nav li a {
	color: #fff;
	display: block;
}
#nav li a:active {
}
.drop span:after {
	width: 0;
	height: 0;
	border: 0.313em solid transparent; /* 5 */
	border-bottom: none;
	border-top-color: #fff;
	content: '';
	color: #fff;
	vertical-align: middle;
	display: inline-block;
	position: relative;
	right: -0.313em; /* 5 */
}
/* first level */

#nav > ul {
	background-color: #E06D09;
	padding: 0px;
}
.right {
	border-right: 1px solid #fff;
 border-right-width:1px solid #fff  border-width: 1px;
	border-image: -webkit-gradient(linear, right center, from(#f00), to(#f00), )1 repeat repeat
}
#nav > ul > li {
	width: 13%;
	height: 100%;
	float: left;
	background: url(images/divider.png) no-repeat right center;
}
#nav > ul > li.last {
	background-image: none !important;
}
#nav > ul > li > a {
	height: 100%;
	font-size: 15px; /* 24 */
	line-height: 3.5em; /* 60 (24) */
	text-align: center;
	text-decoration: none;
}
#nav > ul > li:not( :last-child ) > a {
}
#nav > ul > li:hover > a,  #nav > ul:not( :hover ) > li.active > a {
	background-color: #eeeeee;
	color: #E06D09;
}
/* second level */

#nav li ul {
	background-color: #fff;
	display: none;
	position: absolute;
	width: 9em;
	top: 100%;
	padding: 0px;
	z-index: 9999;
	border-left: 1px solid #eaeaea;
	border-right: 1px solid #eaeaea;
	border-bottom: 1px solid #eaeaea;
	-webkit-box-shadow: 0 6px 12px rgba(0,0,0,.300);
	box-shadow: 0 6px 12px rgba(0,0,0,.300);
}
#nav li:hover ul {
	display: block;
	left: 0;
	right: 0;
}
#nav li:not( :first-child ):hover ul {
	left: -1px;
}
#nav li ul a {
	font-size: 12px;
	border-top: 1px solid #eaeaea;
	padding: 6px 10px;
	text-decoration: none;
	color: #000;
}
#nav li ul li a:hover,  #nav li ul:not( :hover ) li.active a {
	background-color: #EEEEEE;
}

@media only screen and ( max-width: 62.5em ) /* 1000 */ {
#nav {
	width: 100%;
	position: static;
	margin: 0;
}
}

@media only screen and ( max-width: 40em ) /* 640 */ {
html {
	font-size: 75%; /* 12 */
}
#nav {
	position: relative;
	top: auto;
	left: auto;
}
#nav > a {
	width: 3.125em; /* 50 */
	height: 3.125em; /* 50 */
	text-align: left;
	text-indent: -9999px;
	background-color: #e15a1f;
	position: relative;
	text-decoration: none;
}
#nav > a:before,  #nav > a:after {
	position: absolute;
	border: 2px solid #fff;
	top: 35%;
	left: 25%;
	right: 25%;
	content: '';
}
#nav > a:after {
	top: 60%;
}
#nav:not( :target ) > a:first-of-type,  #nav:target > a:last-of-type {
	display: block;
}
/* first level */

#nav > ul {
	height: auto;
	display: none;
	position: absolute;
	left: 0;
	padding: 0px;
	right: 0;
	z-index: 9999;
}
#nav:target > ul {
	display: block;
}
#nav > ul > li {
	width: 100%;
	float: none;
}
#nav > ul > li > a {
	height: auto;
	text-align: left;
	text-decoration: none;
	padding: 0 0.833em; /* 20 (24) */
}
#nav > ul > li:not( :last-child ) > a {
	border-right: none;
	border-bottom: 1px solid #cc470d;
}
/* second level */

#nav li ul {
	position: static;
	padding: 1.25em; /* 20 */
	padding-top: 0;
}
}
</style>
<div class="mn" style="background:#E06D09;">
  <div class="col-xs-offset-3">
    <nav id="nav" role="navigation"> <a href="#nav" title="Show navigation">Show navigation</a> <a href="#" title="Hide navigation">Hide navigation</a>
      <ul class="clearfix">
        <li><a href="facultyProfile.action">Timeline</a></li>
        <li class=""><a href="facultyAboutPage">About</a></li>
        <li><a href="facultyClassesPage">Classes</a></li>
        <li><a href="facultyCenterPage">Center</a></li>
        <li><a href="facultyStudentsPage">Students</a></li>
        <li class="drop last"> <a href="" aria-haspopup="true"><span>More..</span></a>
          <ul>
            <li><a href="reviews.php"><i class="fa fa-pencil-square-o"></i> Reviews</a></li>
            <li><a href="files.php"><i class="fa fa-folder-open"></i> Keynotes</a></li>
            <li><a href="newsPage"><i class="fa fa-bullhorn"></i> News</a></li>
            <li><a href="eventsPage"><i class="fa fa-calendar"></i> Events</a></li>
            <li><a href="gallery.php"><i class="fa fa-picture-o"></i> Gallery</a></li>
            <li><a href="#" ><i class="fa fa-inbox"></i> Report</a></li>
          </ul>
        </li>
      </ul>
      <span class="viewer dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"><i class="fa fa-eye fa-lg" style="color:#fff;"></i></a>
      <ul class="dropdown-menu pull-right width1 dropdown" role="menu">
        <li><a href="#" style="color:#000;"> Faculty</a></li>
        <li><a href="#" style="color:#000;"> Center</a></li>
        <li><a href="#" style="color:#000;"> Student</a></li>
      </ul>
      </span> <span class="pull-right setting dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-cog fa-lg"></i></a>
      <div class="dropdown-menu width" role="menu">
        <form role="search" class="navbar-form navbar-left">
          <button class="btn btn-sm  btn-primary" type="submit">Generate email code</button>
          <div class="form-group">
            <input type="text" placeholder="Add code here" class="">
          </div>
          <button class="btn btn-sm btn-success" type="submit">Confirm</button>
        </form>
      </div>
      </span> </nav>
  </div>
</div>
<div class="clearfix"></div>
