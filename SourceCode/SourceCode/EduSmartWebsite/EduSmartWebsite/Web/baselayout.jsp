<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>EDUSMART</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/sl-slide.css">

<link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
<link href="css/daterangepicker/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
<link href="css/timepicker/bootstrap-timepicker.min.css" rel="stylesheet"/>	



	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/moment.js" type="text/javascript"></script>
	<script src="js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
	<script src="js/plugins/timepicker/bootstrap-timepicker.min.js" type="text/javascript"></script>
	
	<script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
	<script type="text/javascript">stLight.options({publisher: "d6e91afe-153f-49e1-ab52-286bbd5e19c5", doNotHash: false, doNotCopy: false, hashAddressBar: false});</script>
	
	
	
</head>
<body class="skin-blue">
	<s:if test="header=='header2'">
		<header class="header2"> <tiles:insertAttribute name="header2" /> </header>
	</s:if>
	<s:else>
		<header class="header"> <tiles:insertAttribute name="header" /> </header>
	</s:else>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<tiles:insertAttribute name="body" />		
	</div>
	<footer> <tiles:insertAttribute name="footer" /> </footer>
	
	
	<script src="js/main.js"></script>
	<script src="js/jquery.ba-cond.min.js"></script>
	<script src="js/jquery.slitslider.js"></script>
	
	<script type="text/javascript"> 
		$(function() {
		    var Page = (function() {
		
		        var $navArrows = $( '#nav-arrows' ),
		        slitslider = $( '#slider' ).slitslider( {
		            autoplay : true
		        } ),
		
		        init = function() {
		            initEvents();
		        },
		        initEvents = function() {
		            $navArrows.children( ':last' ).on( 'click', function() {
		                slitslider.next();
		                return false;
		            });
		
		            $navArrows.children( ':first' ).on( 'click', function() {
		                slitslider.previous();
		                return false;
		            });
		        };
		
		        return { init : init };
		    })();
		    Page.init();
		});
	</script>

	<script type="text/javascript">
		$(window).load(function(){
		 $(document).ready(function(){
		       $('.course').width(100);
		       $('.course').mouseover(function()
		       {
		          $(this).css("cursor","pointer");
		          $(this).animate({width: "105px"}, 'slow');
		       });
		    
		    $('.course').mouseout(function()
		      {   
		          $(this).animate({width: "100px"}, 'slow');
		       });
		   });
		}); 
	</script>

	
</body>
</html>