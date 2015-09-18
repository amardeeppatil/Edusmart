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


<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="css/style.css">
<link href="jumbotron.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="//code.jquery.com/jquery-2.0.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/prettify.css"></link>
<link rel="stylesheet" type="text/css" href="css/bootstrap-wysihtml5.css"></link>
<link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="editor/tm_editable.css">
<link rel="stylesheet" type="text/css" href="editor/tm_validator.css">
 <link rel="stylesheet" type="text/css" href="editor/round-button-theme.css">
   <link rel="stylesheet" type="text/css" href="calender/datepicker.min.css">
   <link href="css/dropdowns-enhancement.css" rel="stylesheet">  
</head>

<body>
  

<?php include('header.php'); ?>

<div class="jumbotron">
  <div class="container-fluid left-none">
     <div class="col-md-8">
       <?php include('cover-pic.php'); ?>
       <?php include('navigation.php'); ?>
       
  <div class="col-md-12 home-bg ">
  
  
   <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab	">
    <ul role="tablist" id="myTab">
          <li class="" role="presentation">News -<strong>2015</strong> <i class="fa fa-long-arrow-right"></i><br>
         
</li>

      <li  role="presentation"><a aria-expanded="true" aria-controls="jan" data-toggle="tab" role="tab" id="jan-tab " href="#jan" >
 Current News</a></li>
      <li role="presentation" class=""><a aria-controls="feb" data-toggle="tab" id="feb-tab" role="tab" href="#feb" aria-expanded="false">
Past News</a></li>
   
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel "><i class="fa fa-bullhorn "></i>  Add News </h4>
         
        
      </div>
      
      <div class="modal-body">
      
                <div class=" pull-left col-lg-4">
       <div class="btn-group">
            <button class="btn btn-default" data-label-placement><i class="fa fa-bullhorn data-label"></i></button>
            <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span> </button>
            <ul class="dropdown-menu">
              <li>
                <input type="radio" id="ex7_1" name="ex7" value="1" checked>
                <label for="ex7_1"><i class="fa fa-bullhorn data-label"></i>  News</label>
              </li>
              <li>
                <input type="radio" id="ex7_2" name="ex7" value="2">
                <label for="ex7_2"><i class="fa fa-volume-up data-label"></i> Announcement</label>
              </li>
             <!-- <li>
                <input type="radio" id="ex7_3" name="ex7" value="3">
                <label for="ex7_3"><i class="glyphicon glyphicon-print data-label"></i> Print</label>
              </li>-->
            </ul>
          </div></div>
      <div class="pull-right col-lg-8">
     <span style="font-size: 10px;
  font-style: italic;
  position: absolute;
  bottom: 36px;
  left: 147px;">You Planner(optional)</p></span>
         
         
          <div class="form-group col-lg-6">
                <div class="input-group date " id="dp2"> <span class="input-group-addon in"><i class="fa fa-calendar"></i>
</span>
                  <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk"  placeholder="Select Start date"//>
                </div>
              </div>
              
              <div class="form-group  col-lg-6">
        
                <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i>
</span>
                  <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select End date"/>
                </div>
              </div>  
      </div>
       
              <div class="clearfix"></div>
        <div class="panel panel-default">
          
            <div class="panel-body">
          
              <div class="">



        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> 
          <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="images/user.png" width="100%"> 
            <input type="file">
            </span></a> 
        
    </div>
    
        <div class="col-lg-11 profile-new">
      
     
     
             
              

          <p class="lead "><input type="email" class="form-control" id="" placeholder="Add main title here"></p>
     
          
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5"> <img alt="" src="images/news.png" class="img-responsive"> 
            <a href="#" class="btn btn-xs btn-primary pull-right center-block" style="margin:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Add your picture
            <input type="file">
            </span></a> </div>
         
          <div class="col-lg-7 ">
            <h4 class="margin-top"><input type="email" class="form-control" id="" placeholder="Add sub-title here"></h4>
            <p ><textarea type="email" class="form-control" id="" placeholder="Add Description here" rows="5"></textarea></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
        </div>
        
    
              </div>
             
            </div>
            <div class="panel-footer">
              <div class="row">
                <div class="col-md-7">
                  <div class="form-group">
                    <div class="btn-group">
                         <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
               <div class="btn-group">
                           <button type="reset" class="btn btn-default">Reset</button>
                    </div>
           
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="form-group">
                    <select class="form-control privacy-dropdown pull-right input-sm" name="privacy" style="  margin-right: 10px;">
                      <option selected="selected" value="1">Academy</option>
                      <option value="2">Faculty</option>
                      <option value="3">Students</option>
                         <option value="3">Center</option>
                    </select>
                      <a href="#" class="pull-right share" data-toggle="tooltip" title="Share" data-placement="bottom">  <img src="images/plane.png"></a>
                     <style>
   .datepicker.dropdown-menu{z-index:9999999999991}
   </style>
   
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
     
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel "><i class="fa fa-bullhorn "></i>  Add News </h4>
         
        
      </div>
      
      <div class="modal-body">
      
                <span class=" pull-left col-lg-4">
     <div class="btn-group">
            <button class="btn btn-default" data-label-placement><i class="fa fa-bullhorn data-label"></i></button>
            <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span> </button>
            <ul class="dropdown-menu">
              <li>
                <input type="radio" id="ex7_1" name="ex7" value="1" checked>
                <label for="ex7_1"><i class="fa fa-bullhorn data-label"></i>  News</label>
              </li>
              <li>
                <input type="radio" id="ex7_2" name="ex7" value="2">
                <label for="ex7_2"><i class="fa fa-volume-up data-label"></i> Announcement</label>
              </li>
             <!-- <li>
                <input type="radio" id="ex7_3" name="ex7" value="3">
                <label for="ex7_3"><i class="glyphicon glyphicon-print data-label"></i> Print</label>
              </li>-->
            </ul>
          </div></span>
      <div class="pull-right col-lg-8">
     <span style="font-size: 10px;
  font-style: italic;
  position: absolute;
  bottom: 36px;
  left: 147px;">You Planner(optional)</p></span>
         
         
          <div class="form-group col-lg-6">
                <div class="input-group date " id="dp2"> <span class="input-group-addon in"><i class="fa fa-calendar"></i>
</span>
                  <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk"  placeholder="Select Start date"//>
                </div>
              </div>
              
              <div class="form-group  col-lg-6">
        
                <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i>
</span>
                  <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select End date"/>
                </div>
              </div>  
      </div>
       
              <div class="clearfix"></div>
        <div class="panel panel-default">
          
            <div class="panel-body">
          
              <div class="">



        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> 
          <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="images/user.png" width="100%"> 
            <input type="file">
            </span></a> 
        
    </div>
    
        <div class="col-lg-11 profile-new">
      
     
     
             
              

          <p class="lead "><input type="email" class="form-control" id="" placeholder="Add main title here"></p>
     
          
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5"> <img alt="" src="images/news.png" class="img-responsive"> 
            <a href="#" class="btn btn-xs btn-primary pull-right center-block" style="margin:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Add your picture
            <input type="file">
            </span></a> </div>
         
          <div class="col-lg-7 ">
            <h4 class="margin-top"><input type="email" class="form-control" id="" placeholder="Add sub-title here"></h4>
            <p ><textarea type="email" class="form-control" id="" placeholder="Add Description here" rows="5"></textarea></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
        </div>
        
    
              </div>
             
            </div>
            <div class="panel-footer">
              <div class="row">
                <div class="col-md-7">
                  <div class="form-group">
                    <div class="btn-group">
                         <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
               <div class="btn-group">
                           <button type="reset" class="btn btn-default">Reset</button>
                    </div>
           
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="form-group">
                    <select class="form-control privacy-dropdown pull-right input-sm" name="privacy" style="  margin-right: 10px;">
                      <option selected="selected" value="1">Academy</option>
                      <option value="2">Faculty</option>
                      <option value="3">Students</option>
                         <option value="3">Center</option>
                    </select>
                      <a href="#" class="pull-right share" data-toggle="tooltip" title="Share" data-placement="bottom">  <img src="images/plane.png"></a>
                     <style>
   .datepicker.dropdown-menu{z-index:9999999999991}
   </style>
   
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
     
    </div>
  </div>
</div>


 <div class="btn-group pull-right" style="margin-top:9px;">
             <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal1" data-whatever="" > 
<i class="fa fa-plus"></i>
 <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add</a></button></div>
    </ul>
    <div class="clearfix"></div>
    <hr>
    <script>
    $(document).ready(function(){
       $('#edit1').click(function(){
         document.getElementById("collapseOne").contentEditable="true";
         $('#collapseOne').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		
         $('#edit1').attr('style','display:none;');
         $('#done').attr('style','display:block;float:right;margin-right:11px');
       });
    
       $('#done').click(function(){
         document.getElementById("collapseOne").contentEditable="false";
         $('#collapseOne').attr('style','border:none;background-color:#fff');
		 
         $('#edit1').attr('style','display:block;float:right;margin-right:11px');
         $('#done').attr('style','display:none;');
       });
    });
</script>
    <div class="tab-content" id="myTabContent">
      <div aria-labelledby="jan-tab" id="jan" class="tab-pane fade active in" role="tabpanel">

        <div class="panel panel-default"><div class="panel-heading"> <h4 class="pull-left"> <i class="fa fa-calendar fa-lg "></i> Current News 2015
            </h4> 
         <span class=" pull-right col-lg-2">
         
       
          <div class="btn-group">
            <button class="btn btn-default" data-label-placement><i class="fa fa-bullhorn data-label"></i></button>
            <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span> </button>
            <ul class="dropdown-menu">
              <li>
                <input type="radio" id="ex7_1" name="ex7" value="1" checked>
                <label for="ex7_1"><i class="fa fa-bullhorn data-label"></i>  News</label>
              </li>
              <li>
                <input type="radio" id="ex7_2" name="ex7" value="2">
                <label for="ex7_2"><i class="fa fa-volume-up data-label"></i> Announcement</label>
              </li>
             <!-- <li>
                <input type="radio" id="ex7_3" name="ex7" value="3">
                <label for="ex7_3"><i class="glyphicon glyphicon-print data-label"></i> Print</label>
              </li>-->
            </ul>
          </div>
       
         
       </span>
  <div class="clearfix"></div>
        </div>
   
         </div>
      
        <div class="bg-white ">
       
         <span style="float:right;margin-right: 11px;" > <a href="#" data-toggle="modal" data-target="#exampleModal2" data-whatever="" > <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Delete" data-placement="bottom"> <i class="fa fa-trash-o blue"></i></a></span> </span> <span  style="display:none;float:right;margin-right: 11px;"> <i class="fa fa-floppy-o"></i> <span style="float:left;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Reset" data-placement="bottom"> <i class="fa fa-repeat blue"></i></a></span> </span>
        
         
           <div class=" mg-rht pull-right text-center">
         <p style="font-size:12px;margin-bottom:0px;">End date</p>
          <span  style="float:right;" class="date-profile" >
           <p>
          <span></span>
          05</p>
          </span>
          </div>
         <div class="mg-rht  pull-right text-center">
         <p style="font-size:12px;margin-bottom:0px;">Start date</p>
          <span  style="float:right;" class="date-profile" >
           <p>
          <span></span>
          05</p>
          </span>
          </div>
         
       
    <div id="" class="panel-group">
      
                          <div class="panel panel-default" id="panel1">
      <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> 
        <img src="images/user.png" class="featurette-image img-responsive"></div>
        <div class="col-lg-11 profile-new">
          <p class="lead "> <a href="index.php"> John Smith</a>  </p>
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
      
      </div>
      </div>
      </div></div>
        <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like </a><span class="like">/ 12</span> .</li>
            <li> <a href="#" > Comment </a><span class="comment">/ 12</span> .</li>
             <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a>
              <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a>
              <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a>
              
              </li>
          </ul>
        </div>
      </div>
      <div class="bottom-bg">
          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
          <div class="col-lg-10 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
            <ul class="dropdown-menu pull-right width4 " role="menu">
              <li><a href="#"> Hide</a></li>
            </ul>
            </span>
            <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
            <div class="clearfix"></div>
            <div class="rating pull-left ">
              <ul>
                <li> <a href="#" title="" > Like </a>.</li>
                <li> <a href="#" > Reply </a>.</li>
                <li> <a href="#" class="star"> 23 hrs </a></li>
              </ul>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="images/user.png" class="featurette-image img-responsive"></div>
          <div class="col-lg-10 col-sm-10 col-xs-10 left-none">
            <form>
              <input type="text" class="form-control" placeholder="Write a comment...">
            </form>
          </div>
          <div class="clearfix"></div>
        </div>
        
         
        
      
      
 </div>
      
      
      <div aria-labelledby="feb-tab" id="feb" class="tab-pane fade" role="tabpanel">

  
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> Past News 2015 </h4> </div> </div>
      
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
            <li> <a href="#" > Comment </a><span class="comment">/ 23</span> .</li>
              <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a>
              <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a>
              <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a>
              
              </li>
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
      </div>
   
   </div>
  </div>
  
 
 
      
      
        </div>
  
  </div>
    
     
     <?php include('right-panel.php'); ?>
  </div>
</div>
  <footer>
    <p>&copy; Company 2014</p>
  </footer>

<!-- /container --> 

<!-- Bootstrap core JavaScript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
 <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script> 
           <script type="text/javascript" src="js/tm_validator.js"></script>
        <script type="text/javascript" src="js/tm_editable.js"></script>
  <script type="text/javascript" src="calender/fwd.js"></script> 
 	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
         <script src="js/fileinput.min.js" type="text/javascript"></script>
   <script src="js/dropdowns-enhancement.min.js"></script>      
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


</body>
</html>
