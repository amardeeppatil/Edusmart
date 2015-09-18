<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

</head>
<script>
function saveFacultyData()
{
	
	 $.ajax({  
	     type : "post",  
	     url  : "facultySaveRegistrationForm",   
	     data : $('#saveFacultyId').serialize(),
		  success : function(response) { 
			/*   $('#tab2info').html($(content).closest('.target-class')); */
		       	// REMOVE ACTIVE CLASS 	 	
				$(".ttab").removeClass('active');
		     	$(".tab-pane").removeClass('active');
		     	$(".tab-pane").removeClass('in');
		     	//ADD ACTIVE CLASS
		     	$("#tab2_li").addClass('active');
				$("#tab2info").addClass('active');
				$("#tab2info").addClass('in');
		     }
	    });  
	 
	 return false; 
	
}
function saveFacultyAccount(){
	
	$.ajax({
    type:"post",
    url:"facultySaveAccountInfo",
	data:$('#').serialize(),
	success:function(response){
	
	}
	});
	
	
	
}

</script>
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
      
    <!--login start-->
    <!--<div id="loginbox" style="margin-top:50px;background:#fff;padding:30px;padding-top:0px;"class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        <div style="display:none;" id="login-alert" class="alert alert-danger col-sm-12"></div>
        <form id="loginform" class="form-horizontal" role="form">
          <h2> Sign In </h2>
          <hr class="colorgraph">
          <br>
          <div class="form-group">
          
            <input type="text" name="display_name" id="display_name" class="form-control input-lg" placeholder="Email Address" tabindex="3">
          </div>
          <div class="form-group">
            <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="4">
          </div>
          <div class="row">
            <div class="col-xs-4 col-sm-3 col-md-7  left-none"> <span class="button-checkbox">
              <button type="button" class="btn" data-color="info" tabindex="7">&nbsp; Remember me</button>
              <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
              </span> <span class=""> <a id="btn-fblogin" href="#" class="btn btn-warning">Login with Google</a> </span> </div>
            <div class="col-xs-8 col-sm-9 col-md-4 pull-right"> <a href="#" data-toggle="modal" data-target="#t_and_c_m" class=" " style="position: relative;top: 7px;left: 17px;">Forgot your password ?</a> </div>
          </div>
          <br>
          <hr class="colorgraph">
          <div class="row">
            <div class="col-xs-12 col-md-6">
              <input type="submit" value="Sign In" class="btn btn-primary btn-block btn-lg" tabindex="7">
            </div>
            <div class="col-xs-12 col-md-6 control">
              <div style=" padding-top:15px; font-size:14px;"> Don't have an account! <a href="#" onclick="$('#loginbox').hide(); $('#signupbox').show()"> Sign Up Here </a> </div>
            </div>
          </div>
        </form>
      </div>-->
      <!--   login end--> 
      <!--   register start-->
      
      <div id="signupbox" style="display:block;margin-top:50px;background:#fff;" class="mainbox col-xs-12 col-sm-10 col-md-10 col-sm-offset-1 col-md-offset-1">
        
        
          <br>
          36% Completed <span class="pull-right">Please wait...</span>
            <div class="progress progress-striped active">
      <div class="bar" style="width: 36%;"></div>
  </div>
          
        
          <div class="clearfix"></div>
          <div class="panel with-nav-tabs panel-info "><br>
                <div class="panel-heading p-head panel-info1">
                        <ul class="nav nav-tabs nav-tb">
                            <li class="active ttab" id="tab1_li"><a href="#tab1info" data-toggle="tab"> Personal Account</a></li>
                            <li class="ttab" id="tab2_li"><a href="#tab2info" data-toggle="tab">Faculty Account</a></li>
                          <!--  <li><a href="#tab3info" data-toggle="tab">Info 3</a></li>-->
                            
                        </ul>
                      
                </div>
                  <hr class="colorgraph">
         
                <div class="panel-body">
                    <div class="tab-content">
                        
                        <div class="tab-pane fade active in" id="tab1info">
                      <div class="col-lg-3" style="text-align:center;">
            <div class="login-pic"> <img class="" src="entireApp/images//students.jpg" alt="..." width="100%"> </div>
            <a href="#" class="btn btn-xs btn-primary pull-right center-block" style="margin:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Change Picture
            <input type="file">
            </span></a> </div>
          <div class="col-lg-9">
          
          <!--Personal Info Save  -->
          
          <form:form onsubmit="return saveFacultyData();" id="saveFacultyId"  method="post">
            <div id="signupalert" style="display:none" class="alert alert-danger">
              <p>Error:</p>
              <span></span> </div>
            <div class="personal-bg">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                 
                     <h4 class="great">Personal Info</h4>
                  <hr>
                </div>
                
                 <span id="personalMsg" style="display: none; color: green;">	Personal Acoount Information Save Successful</span>
                
                
                
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="EFName" id="first_name" required pattern="[a-zA-Z]+" title="Only enter letters" class="form-control input-lg" placeholder="Name" >
                  </div>
                </div>
              </div>
              <div class="form-group">
                <input type="text" name="DOB" id="display_name" class="form-control input-lg" placeholder="Date of Birth" >
              </div>
              
              
                  <div class="form-group">
                    <input type="text" name="CAddress1" required pattern="[a-zA-Z]+" title="Only enter letters" id="first_name" class="form-control input-lg" placeholder="Address" >
                  </div>
               
              <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label col-lg-3 lb">Gender </label>
                    <div class="controls" style="width:100%; font-size: 15px;">
                      <label class="radio-inline ">
                        <input type="radio" name="Gender" id="inlineRadio1" value="Male">
                        Male </label>
                      <label class="radio-inline">
                        <input type="radio" name="Gender" id="inlineRadio2" value="Female">
                        Female </label>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6">
                  <div class="form-group">
                    <select type="text" name="BloodGroup" id="display_name" class="form-control input-lg" placeholder="Blood group" >
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
                    <input type="text" name="Contact" id="first_name" maxlength="10" required pattern="[0-9]{10}"  class="form-control input-lg" placeholder="Phone 1" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="first_name" id="first_name" maxlength="10" required pattern="[0-9]{10}" class="form-control input-lg" placeholder="Phone 2" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="email" name="first_name" id="first_name" class="form-control input-lg" placeholder="Email Address">
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
                    <input type="text" name="EFName" id="first_name" class="form-control input-lg" placeholder="Name" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="EContact" id="first_name" maxlength="10" required pattern="[0-9]{10}" class="form-control input-lg" placeholder="Contact no." >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="email" name="EEmail" id="first_name" class="form-control input-lg" placeholder="Email Address" >
                  </div>
                </div>
                
                
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Relationship with you" >
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
                    <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Name of the Bank" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Branch" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="AccountNumber" id="first_name" class="form-control input-lg" placeholder="Account number" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="AccountType" id="first_name" class="form-control input-lg" placeholder="Type of account" >
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="form-group">
                    <input type="text" name="IfscCode" id="first_name" class="form-control input-lg" placeholder="IFSC code" >
                  </div>
                </div>
              </div>
            </div>
            
            
            
            <div class="row">
              <div class="col-xs-12 col-md-6">
                <input type="submit" value="Submit"  class="btn btn-primary btn-block btn-lg" tabindex="7">
              </div>
            </div>
            
            </form:form>
             </div>
             </div>
            <!-- End --Personal Info Save  -->
            
         
                      <!--Faculty Information Save  -->  
                   
                      <!--Faculty Information Save  -->  
                        
                    <div class="tab-pane fade" id="tab2info">
                  <div class="col-lg-12">
       <form:form action="facultyInfoSave" commandName="facultyAccount" method="post">
                    <div class="personal-bg">
                      <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                          <h4 class="great">Faculty Info</h4>
                          <hr>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group">
                     <input type="text" name="facultyTb.displayName" id="first_name" class="form-control input-lg" placeholder="Add your display name" >
                          </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group " >
                            <label for="inputEmail3" class="col-sm-2 control-label col-lg-3 lb" >Status </label>
                            <div class="radio-inline">
                              <label style="font-size:15px;font-weight:normal;margin-top:10px;">
                                <input type="radio" checked value="Acive" id="optionsRadios1" name="facultyTb.status">
                                Acive </label>
                            </div>
                            <div class="radio-inline">
                              <label style="font-size:15px;font-weight:normal;margin-top:10px;">
                                <input type="radio" value="Deactive" id="facultyTb.optionsRadios2" name="facultyTb.status">
                                Deactive </label>
                            </div>
                          </div>
                        </div>
                      </div>
                      <p style="font-size:15px;">Add your Academy location</p>
                      <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group">
                            <input type="text" name="facultyTb.city" id="city" class="form-control input-lg" placeholder="City" >
                          </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group">
                            <input type="text" name="facultyTb.state" id="state" class="form-control input-lg" placeholder="State" >
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="input-group stylish-input-group">
                            <input type="text" class="form-control input-lg" name="academyTB.AcademyName" placeholder="Search your academy name">
                            <span class="input-group-addon">
                            <button type="submit"> <span class="glyphicon glyphicon-search"></span> </button>
                            </span> </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group">
                            <input type="text" name="facultyTb.state" id="state" class="form-control input-lg" placeholder="Add your academy name" >
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group">
                            <div id="p_scents" class="scents">
                              <label for="p_scnts" class="col-lg-11 col-xs-11 col-sm-11 col-md-11 left-none">
                                <input type="text" name="facultyTb.officialMail" id="p_scnt" class="form-control input-lg ft" placeholder="Official Email Address" tabindex="3">
                              </label>
                              <a href="#" id="addScnt1"><i class="fa fa-plus-square" style="margin-top:15px;"></i> </a>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group">
                            <div id="p_mob" class="scents">
                              <label for="p_mob" class="col-lg-11 col-xs-11 col-sm-11 col-md-11 left-none">
                                <input type="text" name="facultyTb.officialContact" id="p_scnt1" class="form-control input-lg ft" placeholder="Official Contact No" tabindex="3">
                              </label>
                              <a href="#" id="addScnt2"><i class="fa fa-plus-square" style="margin-top:15px;"></i> </a>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                     <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                          <h4 class="great">CA</h4>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                           <div class="form-group">
                            <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">Are you a faculty for CA ? </label>
                            <div class="controls" style="width:100%; font-size: 14px;">
                              <input type="radio"  name="CA" value="Yes"  class="static_class1" />
                             <label> Yes &nbsp;
                              </label>
                              <input type="radio"  name="CA" value="No"  class="static_class1"/>
                           <label>  No
                              </label>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <hr>
                      <div id="extra1"  style="display: none;">
                        <div class="row">
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group ">
                              <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">What subject you teach ? </label>
                             
                            </div>
                          </div>
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top" >
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button"> CPT   &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;"  >
                                <li><a tabindex="-1" data-value="option1"  class="small" href="#">
                                  <input type="checkbox" name="subjectTB.subjectName" value="Fundamentals of Accounting">
                                  &nbsp;Option 1</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox" name="subjectLevelTB.CAsubjectName" value="Mercantile Laws">
                                  &nbsp;Option 2</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox" name="subjectLevelTB.CAsubjectName" value="General Economics">
                                  &nbsp;Option 3</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox" name="subjectLevelTB.CAsubjectName" value="Quantitative Aptitude ">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox" name="subjectLevelTB.CAsubjectName" value="CA_CPTsub5">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox" name="subjectLevelTB.CAsubjectName" value="CA_CPTsub6">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top">
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button">IPC   &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;">
                                <li><a tabindex="-1" data-value="option1" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value=" Accounting (Accounts)">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Law ,Ethics and Communication">
                                  &nbsp;Option sd</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Costing and Financial management">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Advanced Accounting">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Audinting And Assurence">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="IT and Strategic Management">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top">
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button">Final  &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;">
                                <li><a tabindex="-1" data-value="option1" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Financial Reporting">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Advance Auditing and Professional Ethics">
                                  &nbsp;Option sd</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Co-orporate and Allied Laws">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Advance Management Accounting">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Information Systems Control and Audit">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CAsubjectName" value="Direct Laws">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">Add your professional license no. </label>
                              <input type="text" name="facultyTb.licensNo" id="state" class="form-control input-lg" placeholder="License No. " >
                            </div>
                          </div>
                        </div>
                      </div>
                       
                      
                     <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                          <h4 class="great">CS</h4>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group">
                            <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">Are you a faculty for CS ? </label>
                            <div class="controls" style="width:100%; font-size: 14px;">
                              
                              <input type="radio"  name="CS" value="Yes"  class="static_class2" />
                           <label>   Yes &nbsp;
                              </label>
                              <input type="radio"  name="CS" value="No"  class="static_class2"/>
                            <label>   No
                              </label>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div id="extra2"  style="display: none;">
                        <div class="row">
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group ">
                              <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">What subject you teach ? </label>
                              
                            </div>
                          </div>
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top" >
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button"> CPT   &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;">
                                <li><a tabindex="-1" data-value="option1" class="small" href="#">
                                  <input type="checkbox" value="Organization and Management" name="subjectLevelTB.CSsubjectName" >
                                  &nbsp;Option 1</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox" value="Financial Accountancy" name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 2</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox" value="Economics and business Fundamental" name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 3</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox"  value="CS_CPTsub4" name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox"  value="CS_CPTsub5" name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox" value="CS_CPTsub6" name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top">
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button">IPC   &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;">
                                <li><a tabindex="-1" data-value="option1" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName" value="Business Taxation">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox" value="CS_IPCsub7" name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option sd</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox" value="CS_IPCsub8"  name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox" value="CS_IPCsub9"   name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox"  value="CS_IPCsub10"  name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox"  value="CS_IPCsub11"  name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top">
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button">Final  &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;">
                                <li><a tabindex="-1" data-value="option1" class="small" href="#">
                                  <input type="checkbox" value="CS_Finalsub12"  name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox" value="CS_Finalsub13"   name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option sd</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox"  value="CS_Finalsub14"  name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox"  value="CS_Finalsub8"  name="subjectLevelTB.CSsubjectName">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CSsubjectName" value="CS_Finalsub9">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.CSsubjectName" value="CS_Finalsub10">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">Add your professional license no. </label>
                              <input type="text" name="facultyTb.licensNo" id="state" class="form-control input-lg" placeholder="License No. " >
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                          <h4 class="great">CMA</h4>
                        </div>
                      </div>
                      
                       <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                          <div class="form-group">
                            <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">Are you a faculty for CMA ? </label>
                            <div class="controls" style="width:100%; font-size: 14px;">
                              <input type="radio"  name="CMA" value="Yes"  class="static_class3 lb" />
                             <label>  Yes &nbsp;
                              </label>
                              <input type="radio"  name="CMA" value="No"  class="static_class3 lb"/>
                            <label>   No
                              </label>
                            </div>
                          </div>
                        </div>
                      </div>
                         <div id="extra3"  style="display: none;">
                        <div class="row">
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group ">
                              <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">What subject you teach ? </label>
                              
                            </div>
                          </div>
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top" >
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button"> CPT   &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;">
                                <li><a tabindex="-1" data-value="option1" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 1</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 2</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 3</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top">
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button">IPC   &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;">
                                <li><a tabindex="-1" data-value="option1" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option sd</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                            <div class="button-group col-lg-3 col-xs-4 col-sm-4 col-md-4 mg-top">
                              <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle sm-bt" type="button">Final  &nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
                              <ul class="dropdown-menu" style="height:130px;overflow:scroll;">
                                <li><a tabindex="-1" data-value="option1" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option2" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option sd</a></li>
                                <li><a tabindex="-1" data-value="option3" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option ds</a></li>
                                <li><a tabindex="-1" data-value="option4" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 4</a></li>
                                <li><a tabindex="-1" data-value="option5" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 5</a></li>
                                <li><a tabindex="-1" data-value="option6" class="small" href="#">
                                  <input type="checkbox"  name="subjectLevelTB.subjectName[]">
                                  &nbsp;Option 6</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label for="inputEmail3" class="col-sm-12 control-label col-lg-12 lb">Add your professional license no. </label>
                              <input type="text" name="facultyTb.licensNo" id="state" class="form-control input-lg" placeholder="License No. " >
                            </div>
                          </div>
                        </div>
                      </div> 
                    </div>
                    <div class="row">
                      <div class="col-xs-12 col-md-6">
                        <input type="submit" value="Submit" class="btn btn-primary btn-block btn-lg" tabindex="7">
                      </div>
                    </div>
                    </form:form>
                  </div>
                </div>
                      <!--Faculty Information Save  -->  
                    
                    
                    
                    </div>
                </div>
            </div>
       
      </div>
    </div>
  </div>
</div>
</div>
<script type="text/javascript">//<![CDATA[ 
$(window).load(function(){


//custom

$(function() {
	    var scntDiv1 = $('#p_scents');
        var scntDiv2 = $('#p_mob');
        var i = $('#p_mob ').size() + 1;
        
        $('#addScnt1').live('click', function() {
         $('<label for="p_mob" class="col-lg-12 left-none weight-input"><input type="text" class="form-control input-lg "  id="p_scnt1"  name="p_scnt1_' + i +'" value="" placeholder="Official mail ID" /></label> ').appendTo(scntDiv1);
                i++;
                return false;
        });
		
		$('#addScnt2').live('click', function() {
        $('<p><label for="p_mob" class="col-lg-12 left-none weight-input"><input type="text" class="form-control input-lg" id="p_scnt1"  name="p_scnt1_' + i +'" value="" placeholder="Contact No" /></label> </p>').appendTo(scntDiv2);
                i++;
                return false;
        });
        
        $('#remScnt1').live('click', function() { 
                if( i > 2 ) {
                        $(this).parents('p').remove();
                        i--;
                }
                return false;
        });
});







});//]]>  

</script>
<!--<a href="#" id="remScnt1">X</a>
<a href="#" id="remScnt1">X</a>
-->


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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 

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
          <script type="text/javascript" src="entireApp/js/jquery-1.7.2.min.js"></script>
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

<script>
var options = [];

$( '.dropdown-menu a' ).on( 'click', function( event ) {

   var $target = $( event.currentTarget ),
       val = $target.attr( 'data-value' ),
       $inp = $target.find( 'input' ),
       idx;

   if ( ( idx = options.indexOf( val ) ) > -1 ) {
      options.splice( idx, 1 );
      setTimeout( function() { $inp.prop( 'checked', false ) }, 0);
   } else {
      options.push( val );
      setTimeout( function() { $inp.prop( 'checked', true ) }, 0);
   }

   $( event.target ).blur();
      
   console.log( options );
   return false;
});
//@ sourceURL=pen.js
</script>
<script type="text/javascript">
  $(function(){
    $('.static_class1').click(function(){
      if($(this).val() === "Yes"){
    	  $("#extra1").show("fast");
      }
      else
        $("#extra1").hide("fast");
		
    });
	
	$('.static_class2').click(function(){
      if($(this).val() === "Yes")
        $("#extra2").show("fast");
      else
        $("#extra2").hide("fast");
		
    });
	
	$('.static_class3').click(function(){
      if($(this).val() === "Yes")
        $("#extra3").show("fast");
      else
        $("#extra3").hide("fast");
		
    });
	
	
  });
  

  
</script>
<!-- <script>

function saveFaculty()
{
	$.getJSON('registerAsFaculty', {
			verificationCode : $("#verificationCode").val()
		}, function(jsonResponse) {
			$.each(jsonResponse.resultMap, function(key, value) {
				
				
				
			});
		});
	
	}



</script> -->
</body>
</html>
