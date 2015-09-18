<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<title>Edusmart</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="css/style.css">
<!-- Custom styles for this template -->
<link href="jumbotron.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script type="text/javascript" src="//code.jquery.com/jquery-2.0.2.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet" type="text/css" href="css/prettify.css">
</link>
<link rel="stylesheet" type="text/css" href="css/bootstrap-wysihtml5.css">
</link>
<link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="editor/tm_editable.css">
<link rel="stylesheet" type="text/css" href="editor/tm_validator.css">
<link rel="stylesheet" type="text/css" href="editor/round-button-theme.css">



</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header col-lg-5">
      <h3 style="color:#fff;margin-top: 10px;">Welcome to Edusmart Academy</h3>
    </div>
  </div>
</nav>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
  <div class="container-fluid">
    <div class="container"> 
      
      
      
      <!--   register start-->
      
      <div id="signupbox" style="display:block;margin-top:50px;background:#fff;padding:30px;padding-top:0px;"class="mainbox col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
     
        
          <br>
          36% Completed <span class="pull-right">Please wait...</span>
            <div class="progress progress-striped active">
      <div class="bar" style="width: 36%;"></div>
  </div>
          
        
          <div class="clearfix"></div>
          <div class="panel with-nav-tabs panel-info " id="first"><br>
                <div class="panel-heading p-head panel-info1">
                        <ul class="nav nav-tabs nav-tb">
                            <li class="active"><a href="#tab1info" data-toggle="tab"> Personal Account</a></li>
                            <li class=""><a id='openOnLoad' href="#tab2info" data-toggle="tab">Academy Account</a></li>
                          <!--  <li><a href="#tab3info" data-toggle="tab">Info 3</a></li>-->
                            
                        </ul>
                      
                </div>
                  <hr class="colorgraph">
         
                <div class="panel-body">
                    <div class="tab-content"> 
                       
                        <div class="tab-pane fade active in" id="tab1info">
                        <form action="addAcademyAccount" name="academyForm" id="academyAccountForm" class="" role="form" method="post">                      <div class="col-lg-3" style="text-align:center;">
            <div class=profile-pic>  <img class="pull-left profile-pic" src="images/profile.jpg "> 
           <a href="#" class="btn btn-xs btn-primary pull-right center-block" style="margin:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Change Picture
            <!-- <input type="file"> -->
            <s:file name="userProfileTB.ProfileImage" onchange="readProfileURL(this);"/>
            </span></a>
          
          </div></div>
          <div class="col-lg-9">
            <div id="signupalert" style="display:none" class="alert alert-danger">
              <p>Error:</p>
              <span></span> </div>
            <div class="personal-bg">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                 
                     <h4 class="great">Personal Info</h4>
                  <hr>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="academy.AcademyName" id="FName" class="form-control input-lg" placeholder="*Name" >
                    <span id="errFName" class="text-danger"></span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <input type="text" name="userProfileTB.DOB" id="DOB" class="form-control input-lg" placeholder="*Date of Birth" >
              </div>
              <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label col-lg-3 lb">*Gender</label>
                    <div class="controls" style="width:100%; font-size: 15px;">
                      <label class="radio-inline ">
                        <input type="radio" name="userProfileTB.Gender" id="inlineRadio1" value="Male">
                        Male </label>
                      <label class="radio-inline">
                        <input type="radio" name="userProfileTB.Gender" id="inlineRadio2" value="Female">
                        Female </label>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <select type="text" name="userProfileTB.BloodGroup" id="BloodGroup" class="form-control input-lg" placeholder="*Blood group" >
                        <option>Blood group</option>
                    <option>A<sub>+</sub></option>
                      <option>B<sub>+</sub></option>
                        <option>O<sub>+</sub></option>
                         <option>A<sub>-</sub></option>
                             <option>B<sub>-</sub></option>
                             <option>O<sub>-</sub></option>
                              <option>AB<sub>+</sub></option>
                               <option>AB<sub>-</sub></option>
                    </select>
                  </div>
                </div>
              </div>
              
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <h4>Contact</h4>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="userProfileTB.Contact" id="Contact" class="form-control input-lg" placeholder="*Phone 1" >
                    <span id="errContact" class="text-danger"></span>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="userProfileTB.Contact" class="form-control input-lg" placeholder="Phone 2" >
                  
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="userProfileTB.Email" id="Email" class="form-control input-lg" placeholder="*Email Address">
                 <span id="errEmail" class="text-danger"></span>
                  </div>
                </div>
              </div>
            </div>
         
             <div class="personal-bg">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <h4  class="great">Emergency Contact</h4>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="userProfileTB.EFName" id="EFName" class="form-control input-lg" placeholder="Name" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="userProfileTB.EContact" id="EContact" class="form-control input-lg" placeholder="Contact no." >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="userProfileTB.EEmail" id="EEmail" class="form-control input-lg" placeholder="Email Address" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="userProfileTB.ERelationship" id="ERelationship"  class="form-control input-lg" placeholder="Relationship with you" >
                  </div>
                </div>
              </div>
            </div>
            
             <div class="personal-bg">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <h4  class="great">Bank Details</h4>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                  <select type="text" name="academy.BankName" id="BankName" class="form-control input-lg" placeholder="Name of the Bank" >
                        <option>Name of the Bank</option>
                    <option>SBI</option>
                      <option>ICICI</option>
                        <option>IDBI</option>
                         <option>HDFC</option>
                    </select>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <select type="text" name="userProfileTB.BranchId" id="BranchId" class="form-control input-lg" placeholder="Branch" >
                        <option>Branch</option>
                    <option>1</option>
                      <option>2</option>
                        <option>3</option>
                         <option>4</option>
                    </select>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="academy.BankAccountNo" id="AccountNumber" class="form-control input-lg" placeholder="Account number" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    
                    <select type="text" name="userProfileTB.AccountType" id="AccountType"  class="form-control input-lg" placeholder="Type of account" >
                        <option>Type of account</option>
                    	<option>saving</option>
                      	<option>current</option>
                    </select>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="academy.IFSCCode" id="IfscCode" class="form-control input-lg" placeholder="IFSC code" >
                  </div>
                </div>
              </div>
            </div>
           
            
             <div class="row">
              <div class="col-xs-12 col-md-6">
 <input type="submit" class="btn btn-primary btn-block btn-lg" tabindex="7" onclick="return validateRegForm()">                
              </div>
            </div>
            
            
            
        <div class="clearfix"></div>    
            
            <!--		  <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
--> 
          </div>
                        
                       </form> </div>
                        
                         
                        
           <div class="tab-pane fade " id="tab2info" >
               <!--  <form  id="academyAccountForm" class="" role="form" onsubmit="return checknextbtn2()"> -->        
                        <div class="col-lg-12">
            <div id="signupalert" style="display:none" class="alert alert-danger">
              <p>Error:</p>
              <span></span> </div>
            <div class="personal-bg">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                 
                     <h4 class="great">Academy Info</h4>
                  <hr>
                </div>
               
              </div>
          
              
              <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Name" >
                  
                  </div>
                </div>
                
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Location" >
                  
                  </div>
                </div>
                </div>
                 <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                   <input type="text" name="display_name" id="display_name" class="form-control input-lg" placeholder="Establisment" >
                  </div>
                </div>
             
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                   <input type="text" name="display_name" id="display_name" class="form-control input-lg" placeholder="Tag Line" >
                  </div>
                </div>
              </div>
              
              
                  <div class="form-group">
                    <textarea type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Long Description" ></textarea>
                  </div>
               
                 <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <textarea type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Vision / Objectives" ></textarea>
                  
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                   <textarea type="text" name="display_name" id="display_name" class="form-control input-lg" placeholder="Address" ></textarea>
                  </div>
                </div>
              </div>
                    <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Contact No." >
                  
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                   <input type="text" name="display_name" id="display_name" class="form-control input-lg" placeholder="Email Address" >
                  </div>
                </div>
              </div>
                <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="website" >
                  
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                 <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="Facebook" data-placement="bottom"><i class="fa fa-facebook-square fa-3x fb"></i></a>   
                  <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="Twitter" data-placement="bottom"><i class="fa fa-twitter-square fa-3x tw"></i></a>   
                   <a href="https://accounts.google.com/ServiceLogin?service=oz&passive=1209600&continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="Google Plus" data-placement="bottom"><i class="fa fa-google-plus-square fa-3x g-plus"></i></a>
                  </div>
                </div>
              </div>
              
              
             
              
              
            </div>
            
            
            <div class="row">
              <div class="col-xs-12 col-md-6">
                <input type="submit" value="Submit" class="btn btn-primary btn-block btn-lg" tabindex="7">
              </div>
            </div>
            <!--		  <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
--> 
          </div>
          <!-- </form> -->
                        </div>
                       <!-- <div class="tab-pane fade" id="tab3info">Info 3</div>
                        <div class="tab-pane fade" id="tab4info">Info 4</div>
                        <div class="tab-pane fade" id="tab5info">Info 5</div>-->
                    </div>
                </div>
            </div>
       
      </div>
    </div>
  </div>
</div>

<script>$(function () {
    $('.button-checkbox').each(function () {

        // Settings
        var $widget = $(this),
            $button = $widget.find('button'),
            $checkbox = $widget.find('input:checkbox'),
            color = $button.data('color'),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        // Event Handlers
        $button.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });

        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $button.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $button.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$button.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $button
                    .removeClass('btn-default')
                    .addClass('btn-' + color + ' active');
            }
            else {
                $button
                    .removeClass('btn-' + color + ' active')
                    .addClass('btn-default');
            }
        }

        // Initialization
        function init() {

            updateDisplay();

            // Inject the icon if applicable
            if ($button.find('.state-icon').length == 0) {
                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i>');
            }
        }
        init();
    });
});
</script>
<div class="clearfix"></div>
<script src="js/edu.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 

<script type="text/javascript" src="js/tm_validator.js"></script> 
<script type="text/javascript" src="js/tm_editable.js"></script> 
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script> 
<script src="js/fileinput.min.js" type="text/javascript"></script> 

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
$(document).ready(function() {

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




	
	jQuery('.carousel').carousel({
		interval: 4000	})
	
	$('[data-toggle="tooltip"]').tooltip();   
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


/* $("#users").change(function() {
	
	});
 */


/* function checknextbtn1(){

	 alert("call First");
	$.ajax({

		   type: "POST",
		   url: "addAcademyAccount",
		   data: $(this).val(),
		   success: function(data) { 
		  
		   }
		});

	 */
	
	/* document.academyForm.action="addAcademyAccount";
	document.academyForm.submit();  */
   


</script>
</body>
</html>
