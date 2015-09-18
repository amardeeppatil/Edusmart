<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="entireApp/js/jquery.1.10.2.min.js"></script>
<script type="text/javascript" src="entireApp/js/jquery.autocomplete.min.js"></script> 
<script>
$(document).ready(function() {

	
	$('#searchFacultyId').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/searchFaculty',
		paramName: "FName",
		delimiter: ",",
	    transformResult: function(response) {alert("call 2");
	        return {
	        	
	                suggestions: $.map($.parseJSON(response), function(item) {
	                return { value: item.fname, data: item.userId };
	            })
	            
	        };
	        
	    }
	    
	});
	
	
  });

	</script>
<div class="col-md-12 home-bg ">
        <div  class=" bs-example-tabs tab	">
         
         <h3>Students </h3>
          <div class="clearfix"></div>
          <hr>
          <div class="parentHorizontalTab">
            <ul class="resp-tabs-list hor_1">
              <li>All Students</li>
              <li>CA</li>
              <li>CS</li>
              <li>CMA</li>
            </ul>
            <div class="resp-tabs-container hor_1">
              <div>
              <div class="stud">
                <h4 class="pull-left"> All Students <span>(120)</span></h4></div>
                <div class="pull-right col-lg-4">
                <div class="input-group stylish-input-group">
                   <input type="text"  id="searchFacultyId" placeholder="Search">
                    <span class="input-group-addon">
                        <button type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div>
           </div>
            <div class="clearfix"></div>
            <hr>
                <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
            
              <div class="clearfix"></div> 
             </div>
              <div>
                 <h4 style="text-align:left;"> CA</h4>
                  <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
                 <div class="clearfix"></div> 
                </div>
              <div>
               <h4 style="text-align:left;"> CS</h4>
                <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
                 <div class="clearfix"></div> 
                </div>
               <div>
               <h4 style="text-align:left;"> CMA</h4>
                <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
              
              <div class="col-md-4">
              <div class="info-box gray-bg">
                  <span class="info-box-icon"><img src="entireApp/images/user.png" class="img-responsive"></span>
                <div class="info-box-content">
                
                  <span class="info-box-number">Jonh Smith</span>
                 <span class="info-box-text">CA ,CS</span>
                  <span class="progress-description">
                   Edusmart Academy<br>
                Pune, MS
                  </span>
                </div><!-- /.info-box-content -->
              </div>
              
              </div>
                 <div class="clearfix"></div> 
               </div>
            </div>
          </div>
        </div>
      </div>
    
    <script language="javascript"> 
function eToggle(anctag,darg) 
{
  var ele = document.getElementById(darg);
  var text = document.getElementById(anctag);
  if(ele.style.display == "block") 
  {
    ele.style.display = "none";
	text.innerHTML = "More Info" ;
  }
  else 
  {
	ele.style.display = "block";
	text.innerHTML = "Hide Info";
  }
} 
</script>
 

<!-- /container --> 

<!-- Bootstrap core JavaScript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 

</script> 
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
<script src="js/wysihtml5-0.3.0.js"></script> 
<script src="js/prettify.js"></script> 
<script src="js/bootstrap-wysihtml5.js"></script> 
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
<script type="text/javascript">
    $(document).ready(function() {
        //Horizontal Tab
        $('.parentHorizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });

        // Child Tab
        $('#ChildVerticalTab_1, #ChildVerticalTab_2, #ChildVerticalTab_3').easyResponsiveTabs({
            type: 'vertical',
            width: 'auto',
            fit: true,
            tabidentify: 'ver_1', // The tab groups identifier
            activetab_bg: '#fff', // background color for active tabs in this group
            inactive_bg: '#F5F5F5', // background color for inactive tabs in this group
            active_border_color: '#c1c1c1', // border color for active tabs heads in this group
            active_content_border_color: '#5AB1D0' // border color for active tabs contect in this group so that it matches the tab head border
        });

        //Vertical Tab
        $('#parentVerticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo2');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
</script> 
<script src="js/smartTabs.js"></script> 
<script>
$('.js-smart-tabs').smartTabs();
$('.js-smart-tabs--tabs').smartTabs({
	layout: 'tabs'
});
$('.js-smart-tabs--accordion').smartTabs({
	layout: 'accordion'
});
</script>
</body>
</html>
