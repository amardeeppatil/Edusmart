<!--Academy Layout Js And Css  -->

<link rel="stylesheet" href="entireApp/css/bootstrap.min.css">
<link href="entireApp/css/custom.css" rel="stylesheet">
<link rel="stylesheet" href="entireApp/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="entireApp/css/style.css">
<link href="entireApp/css/jumbotron.css" rel="stylesheet">

<link rel="stylesheet" href="entireApp/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="entireApp/css/font-awesome.min.css">
<link rel="stylesheet" href="entireApp/css/main.css">
<link rel="stylesheet" href="entireApp/css/sl-slide.css">
<link href="entireApp/css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="entireApp/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
<link href="entireApp/css/daterangepicker/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
<link href="entireApp/css/timepicker/bootstrap-timepicker.min.css" rel="stylesheet"/>	
<link href="entireApp/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="entireApp/css/prettify.css"></link>
<link rel="stylesheet" type="text/css" href="entireApp/css/bootstrap-wysihtml5.css"></link>
<link href="entireApp/css/dropdowns-enhancement.css" rel="stylesheet">
<link href="entireApp/css/smart_tab.css" rel="stylesheet">
<link href="entireApp/css/jquery.minical.css" rel="stylesheet">
<!-- <script type="text/javascript" src="entireApp/js/jquery.1.10.2.min.js"></script> --> 

<script type="text/javascript" src="//code.jquery.com/jquery-2.0.2.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
<script src="entireApp/js/bootstrap.min.js"></script> 
<script src="entireApp/js/easyResponsiveTabs.js"></script> 
<script type="text/javascript" src="entireApp/js/bootstrap-datepicker.min.js"></script> 
<script src="entireApp/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="entireApp/js/wysihtml5-0.3.0.js"></script>
<script src="entireApp/js/prettify.js"></script>
<script src="entireApp/js/bootstrap-wysihtml5.js"></script> 
<script src="entireApp/js/jquery.ba-cond.min.js"></script>
<script src="entireApp/js/jquery.slitslider.js"></script>
<script src="entireApp/js/dropdowns-enhancement.min.js"></script> 

<script type="text/javascript" src="entireApp/js/smartTabs.js"></script> 
<script type="text/javascript" src="entireApp/js/tm_validator.js"></script> 
<script type="text/javascript" src="entireApp/js/tm_editable.js"></script> 
<!--End Academy Layout Js And Css  -->


<!--Faculty Registration CSS -->
<link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="entireApp/editor/tm_editable.css">
<link rel="stylesheet" type="text/css" href="entireApp/editor/tm_validator.css">
<link rel="stylesheet" type="text/css" href="entireApp/editor/round-button-theme.css">
<!--END Faculty Registration CSS-->


<!--classes-->
<link rel="stylesheet" type="text/css" href="entireApp/css/datepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="entireApp/css/easy-responsive-tabs.css" />
<link href="entireApp/css/smartTabs.css" rel="stylesheet" type="text/css"/>
<script src="entireApp/js/fileinput.min.js" type="text/javascript"></script> 
<script src="entireApp/js/select.js"></script> 
<script src="entireApp/js/jquery.smartTab.js"></script> 
<script src="entireApp/js/jquery.minical.js"></script> 
<!--end of classes-->


<!--for search functionality -->
<%-- <script src="<c:url value="entireApp/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="entireApp/js/jquery.autocomplete.min.js" />"></script> --%>

<!-- <script type="text/javascript" src="entireApp/js/jquery.autocomplete.min.js"></script>  -->
<!--end of search functionality-->



<!-- for cart Purpose -->
<script type="text/javascript">
        $(function() {
            var offset = $("#sidebar").offset();
            var topPadding = 90;
            $(window).scroll(function() {
                if ($(window).scrollTop() > offset.top) {
                    $("#sidebar").stop().animate({
                        marginTop: $(window).scrollTop() - offset.top + topPadding
                    });
                } else {
                    $("#sidebar").stop().animate({
                        marginTop: 0
                    });
                };
            });
        });
    </script>

<script>
var draggableElems = document.querySelectorAll('.draggable');
var draggies = [];
for (var i = 0, len = draggableElems.length;  len; i++) {
    if (window.CP.shouldStopExecution(1)) {
        break;
    }
    var draggableElem = draggableElems[i];
    var draggie = new Draggabilly(draggableElem, { containment: true });
    draggies.push(draggie);
}
window.CP.exitedLoop(1);
//@ sourceURL=pen.js
</script>

<script src="entireApp/js/drag.js"></script> 
<script src="entireApp/js/drag1.js"></script> 

<!--End cart Purpose -->






