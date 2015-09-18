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
<%@ include file="../../jsp/include/entireSetup.jsp" %> 

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
	var showChar = 100;
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
	
</head>
<body class="skin-blue">
	<%-- <s:if test="facultyheader=='header2'">
		<header class="header2"> <tiles:insertAttribute name="header2" /> </header>
	</s:if>
	<s:else>
		<header class="facultyheader"> <tiles:insertAttribute name="facultyheader" /> </header>
	</s:else> --%>
	<header class="facultyheader"> <tiles:insertAttribute name="facultyheader" /> </header>
	<div class="wrapper row-offcanvas row-offcanvas-left jumbotron" > 
	<div class="container-fluid left-none">
	<div class="col-lg-8 ">
	<tiles:insertAttribute name="faculty-cover-pic" />
	<tiles:insertAttribute name="faculty-menu" />
		<tiles:insertAttribute name="body" />
		</div>
		<tiles:insertAttribute name="right-panel" />
		<%-- <tiles:insertAttribute name="advertisment" /> --%>	
		</div>	
	</div>
	<br>
	<footer> <tiles:insertAttribute name="academyfooter" /> </footer>
	
	
	
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