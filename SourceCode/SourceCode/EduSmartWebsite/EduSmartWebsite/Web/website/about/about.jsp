 <div class="col-md-12 home-bg">
        <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab">
          <ul role="tablist" id="myTab">
            <li class="" role="presentation">About <i class="fa fa-long-arrow-right"></i> </li>
            <li class="" role="presentation"><a aria-expanded="true" aria-controls="home" data-toggle="tab" role="tab" id="home-tab" href="#home" class="active"><i class="fa fa-arrow-circle-o-right"></i> Description</a></li>
            <li role="presentation" class=""><a aria-controls="profile" data-toggle="tab" id="profile-tab" role="tab" href="#profile" aria-expanded="false"><i class="fa fa-arrow-circle-o-right"></i> Info</a></li>
            <li role="presentation" class=""><a aria-controls="des" data-toggle="tab" id="des-tab" role="tab" href="#des" aria-expanded="false"><i class="fa fa-arrow-circle-o-right"></i> Member</a></li>
          </ul>
          <div class="clearfix"></div>
          <hr>
          <div class="tab-content" id="myTabContent">
            <div aria-labelledby="home-tab" id="home" class="tab-pane fade active in" role="tabpanel">
              <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
                <div class="modal-dialog bs-example-modal-lg">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-user"></i> About </h4>
                    </div>
                    <div class="modal-body">
                      <div class="panel panel-default">
                        <div class="panel-body">
                          <div class="">
                            <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="images/user.png" width="100%">
                              <input type="file">
                              </span></a> </div>
                            <div class="col-lg-10 profile-new">
                              <p class="lead ">
                                <input type="email" class="form-control" id="" placeholder="Add main title here">
                              </p>
                            
                            </div>
                            <div class="clearfix"></div>
                            <div class="well-update profile-new">
                              <div class="col-lg-5"> <img alt="" src="images/students.jpg" class="img-responsive"> <a href="#" class="btn btn-xs btn-primary pull-right center-block" style="margin:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Add your picture
                                <input type="file">
                                </span></a> </div>
                              <div class="col-lg-7 ">
                                <p class="margin-top">
                                  <input type="email" class="form-control" id="" placeholder="Add sub-title here">
                                </p>
                                <p >
                                  <textarea type="email" class="form-control" id="" placeholder="Add Description here" rows="5"></textarea>
                                </p>
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
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading"> <i class="fa fa-book fa-lg"></i> Description
                  <div class="btn-group pull-right">
                    <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal1" data-whatever="" >
                    <i class="fa fa-plus"></i> <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add </a>
                    </button>
                  </div>
                </div>
              </div>
              <script>
    $(document).ready(function(){
       $('#edit1').click(function(){
         document.getElementById("collapseOne").contentEditable="true";
         $('#collapseOne').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit1').attr('style','display:none;');
		  $('#done').attr('style','display:block;float:right;margin-right:11px');
		  
       });
     $('#edit2').click(function(){
         document.getElementById("collapseTwo").contentEditable="true";
         $('#collapseTwo').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit2').attr('style','display:none;');
		  $('#done1').attr('style','display:block;float:right;margin-right:11px');
		  
       });
	   
	    $('#edit3').click(function(){
         document.getElementById("collapseThree").contentEditable="true";
         $('#collapseThree').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit3').attr('style','display:none;');
		  $('#done2').attr('style','display:block;float:right;margin-right:11px');
		  
       });
	    $('#edit4').click(function(){
         document.getElementById("collapseFour").contentEditable="true";
         $('#collapseFour').attr('style','border:1px solid #ccc;background-color:#F5F5F5');
		 $('#edit4').attr('style','display:none;');
		  $('#done3').attr('style','display:block;float:right;margin-right:11px');
		  
       });
       $('#done').click(function(){
         document.getElementById("collapseOne").contentEditable="false";
         $('#collapseOne').attr('style','border:none;background-color:#fff');
		 
         $('#edit1').attr('style','display:block;float:right;margin-right:11px');
         $('#done').attr('style','display:none;');
       });
	   
	    $('#done1').click(function(){
         document.getElementById("collapseOne").contentEditable="false";
         $('#collapseTwo').attr('style','border:none;background-color:#fff');
		 
         $('#edit2').attr('style','display:block;float:right;margin-right:11px');
         $('#done1').attr('style','display:none;');
       });
	   
	      $('#done2').click(function(){
         document.getElementById("collapseThree").contentEditable="false";
         $('#collapseThree').attr('style','border:none;background-color:#fff');
		 
         $('#edit3').attr('style','display:block;float:right;margin-right:11px');
         $('#done2').attr('style','display:none;');
       });
	   
	    $('#done3').click(function(){
         document.getElementById("collapseFour").contentEditable="false";
         $('#collapseFour').attr('style','border:none;background-color:#fff');
		 
         $('#edit4').attr('style','display:block;float:right;margin-right:11px');
         $('#done3').attr('style','display:none;');
       });
	   
		
    });
</script>
              <div class="bg-white "> <span style="float:right;margin-right: 11px;" id="edit1"><i class="fa fa-pencil"></i></span> <span  style="display:none;float:right;margin-right: 11px;" id="done"><i class="fa fa-floppy-o"></i></span>
                <div id="" class="panel-group">
                  <div class="panel panel-default" id="panel1">
                    <div id="collapseOne" class="panel-collapse collapse in">
                      <div class="panel-body">
                        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive"></div>
                        <div class="col-lg-11 profile-new">
                          <p class="lead "> <a href="index.php"> John Smith</a> shared a link </p>
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
                  </div>
                </div>
                <div class="add-profile">
                  <ul >
                    <li> <a href="#" title="" > Like </a><span class="like">12</span> .</li>
                    <li> <a href="#" > Comment </a><span class="comment">12</span> .</li>
                    <li> <a href="#" >Share</a> </li>
                  </ul>
                </div>
              </div>
              <div class="bottom-bg">
                <form>
                  <div class="col-lg-1 col-sm-3 col-xs-3"> <img src="images/user.png" class="featurette-image img-responsive" style="margin-top: 5px;"> </div>
                  <div class="col-lg-11 col-sm-7 col-xs-9">
                    <input type="text" class="form-control" placeholder="Write a comment...">
                  </div>
                  <div class="clearfix"></div>
                </form>
              </div>
            </div>
            <div aria-labelledby="profile-tab" id="profile" class="tab-pane fade" role="tabpanel">
              <div class="panel panel-default">
                <div class="panel-heading"><i class="fa fa-info-circle fa-lg"></i> Academy Info </div>
              </div>
              <div class="well">
                <table class="table bdr-none">
                  <tbody>
                    <tr>
                      <td>Name</td>
                      <td>Vsmart Academy</td>
                    </tr>
                    <tr>
                      <td>Location</td>
                      <td>Pune</td>
                    </tr>
                    <tr>
                      <td>Establishment</td>
                      <td>Since 2010</td>
                    </tr>
                    <tr>
                      <td>Tag Line</td>
                      <td>SMART DECISION FOR SMART EDUCATION</td>
                    </tr>
                    <tr>
                      <td class="col-lg-3">Vision / Objectives</td>
                      <td>FOR MAKING STUDENTS SMARTLY EDUCATED.!!!</td>
                    </tr>
                    <tr>
                      <td class="col-lg-2">Long Description</td>
                      <td><div class="panel-group " style="margin-top:0px;">
                        <div class="panel panel-default" id="panel1">
                          <div id="collapseTwo" class="panel-collapse collapse in">
                            <div class="panel-body" style="padding:0px;">
                              <p >Vsmart= We smart. One of the big name in CA,CS & CMA studies, taught more than 30,000+ students including long list of ranke</p>
                            </div>
                          </div>
                        </div></div></td>
                      <td ><span style="float:right;margin-right: 11px;" id="edit2"><i class="fa fa-pencil blue"></i></span> <span  style="display:none;float:right;margin-right: 11px;" id="done1"><i class="fa fa-floppy-o blue"></i></span></td>
                    </tr>
                    <tr>
                      <td>Address</td>
                      <td><div class="panel-group " style="margin-top:0px;">
                        <div class="panel panel-default" id="panel1">
                          <div id="collapseThree" class="panel-collapse collapse in">
                            <div class="panel-body" style="padding:0px;">
                              <p >Vsmart= We smart. One of the big name in CA,CS & CMA studies, taught more than 30,000+ students including long list of ranke</p>
                            </div>
                          </div>
                        </div></div></td>
                      <td ><span style="float:right;margin-right: 11px;" id="edit3"><i class="fa fa-pencil blue"></i></span> <span  style="display:none;float:right;margin-right: 11px;" id="done2"><i class="fa fa-floppy-o blue"></i></span></td>
                    </tr>
                    <tr>
                      <td>Contact</td>
                      <td>+91 8888 3888 86</td>
                    </tr>
                    <tr>
                      <td>Email</td>
                      <td>contact.vsmart@gmail.com</td>
                    </tr>
                    <tr>
                      <td>Website</td>
                      <td>www.edusmart.in</td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square fa-3x fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square fa-3x tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square fa-3x g-plus"></i></a></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="des-tab" id="des" class="tab-pane fade" role="tabpanel">
              <div class="panel panel-default">
                <div class="panel-heading"><i class="fa fa-sign-in fa-lg"></i> Member
                  <div class="btn-group pull-right">
                    <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal3" data-whatever="" >
                    <i class="fa fa-plus"></i> <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add</a>
                    </button>
                  </div>
                </div>
              </div>
              <br>
              <div class="col-lg-12 establish"> <span style="float:right;margin-right: 11px;" id="edit4"><i class="fa fa-pencil blue"></i></span> <span  style="display:none;float:right;margin-right: 11px;" id="done3"><i class="fa fa-floppy-o blue"></i></span>
                <div class="col-lg-2 col-sm-2 col-md-2 col-xs-4"><br>
                  <img src="images/user.png" width="100%"></div>
                <div class=" panel-default" id="panel1">
                  <div id="collapseFour" class=" panel-collapse collapse in">
                    <div class="panel-body" style="padding:0px;">
                      <div class="col-lg-5 left-none abt"><br>
                        <h2>Vishal Bhattad</h2>
                        <p style="font-size:14px;">Designation - CA<br>
                          Contact No. - +91 8959479396<br>
                          Email ID - info@vsmart.com<br>
                          Joining Date- 28 Sep 2012</p>
                      </div>
                      <div class="col-lg-5 left-none abt">
                        <h2>Description</h2>
                        <p style="font-size:14px;">Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-12 establish"> <span style="float:right;margin-right: 11px;" id="edit4"><i class="fa fa-pencil blue"></i></span> <span  style="display:none;float:right;margin-right: 11px;" id="done3"><i class="fa fa-floppy-o blue"></i></span>
                <div class="col-lg-2 col-sm-2 col-md-2 col-xs-4"><br>
                  <img src="images/user.png" width="100%"></div>
                <div class=" panel-default" id="panel1">
                  <div id="collapseFour" class=" panel-collapse collapse in">
                    <div class="panel-body" style="padding:0px;">
                      <div class="col-lg-5 left-none abt"><br>
                        <h2>Vishal Bhattad</h2>
                        <p style="font-size:14px;">Designation - CA<br>
                          Contact No. - +91 8959479396<br>
                          Email ID - info@vsmart.com<br>
                          Joining Date- 28 Sep 2012</p>
                      </div>
                      <div class="col-lg-5 left-none abt">
                        <h2>Responsibilities</h2>
                        <p style="font-size:14px;">Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
        <div class="modal fade " id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
          <div class="modal-dialog bs-example-modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-sign-in fa-lg"></i> Add Member </h4>
              </div>
              <div class="modal-body">
                <div class="panel panel-default">
                  <div class="panel-body">
                    <div class="col-lg-12 establish">
                      <div class="col-lg-2 col-sm-3 col-md-3 col-xs-4 left-none"> <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="images/user.png" width="100%">
                        <input type="file">
                        </span></a> </div>
                      <div class="col-lg-5 left-none abt">
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add User name ">
                        </p>
                         <p>
                          <input type="email" class="form-control" id="" placeholder="Add Designation ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Contact No. ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Email Address ">
                        </p>
                        <p>
                          <input type="email" class="form-control" id="" placeholder="Add Joinining Date">
                        </p>
                      </div>
                      <div class="col-lg-5 left-none abt">
                       
                        <p>
                          <textarea type="email" class="form-control" id="" placeholder="Add description" rows="10"></textarea>
                        </p>
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
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>