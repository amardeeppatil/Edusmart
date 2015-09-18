


<div class="col-md-12 home-bg">
        <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab	">
          <div class="pad-lft1 pull-left">
            <h4> Faculty</h4>
          </div>
          <span class=" pull-right mar-top">
          <div aria-label="Button group with nested dropdown" role="group" class="btn-group">
            <button class="btn-group btn-group-xs " onclick = "javascript:location.href='facultyRegistrationForm.action';" type="button">Create Faculty </button>
            <button class="btn-group btn-group-xs" type="button"><i class="fa fa-plus"></i> Add Faculty</button>
            <div role="group" class="btn-group">
              <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn-group btn-group-xs btn-group-xsdropdown-toggle" type="button" id="btnGroupDrop1">  Pending <span class="frin-box">12</span></button>
              <ul aria-labelledby="btnGroupDrop1" class="dropdown-menu dp pull-left">
                <li><a href="#">Manage Section</a></li>
                <li><a href="#">Edit Privacy</a></li>
              </ul>
            </div>
          </div>
          </span>
          <div class="clearfix"></div>
          <hr>
          <ul role="tablist" id="myTab">
            <li  role="presentation"><a aria-expanded="true" aria-controls="all" data-toggle="tab" role="tab" id="all-tab" href="#all"> All Faculty </a><span>3,545</span></li>
            <li role="presentation" class=""><a aria-controls="ca" data-toggle="tab" id="ca-tab" role="tab" href="#ca" aria-expanded="false"> CA</a></li>
            <li role="presentation" class=""><a aria-controls="cs" data-toggle="tab" id="cs-tab" role="tab" href="#cs" aria-expanded="false"> CS</a></li>
            <li role="presentation" class=""><a aria-controls="cma" data-toggle="tab" id="cma-tab" role="tab" href="#cma" aria-expanded="false"> CMA</a></li>
            <li class="pull-right col-lg-4">
              <div id="imaginary_container">
                <div class="input-group stylish-input-group">
                  <input type="text" class="form-control "  placeholder="Search" >
                  <span class="input-group-addon">
                  <button type="submit"> <span class="glyphicon glyphicon-search"></span> </button>
                  </span> </div>
              </div>
            </li>
            <div class="clearfix"></div>
            
            <!--<div class="btn-group pull-right" style="margin-top:9px;">
             <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal1" data-whatever="" > 
<i class="fa fa-plus"></i>
 <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add</a></button></div>-->
          </ul>
          <div class="clearfix"></div>
          <hr>
          <div class="tab-content" id="myTabContent">
            <div aria-labelledby="all-tab" id="all" class="tab-pane fade active in" role="tabpanel">
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
                <div class="clearfix"></div>
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked>
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="ca-tab" id="ca" class="tab-pane fade" role="tabpanel">
                <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
                <div class="clearfix"></div>
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="cs-tab" id="cs" class="tab-pane fade" role="tabpanel">
               <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
                <div class="clearfix"></div>
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              <div class="clearfix"></div>
            </div>
            <div aria-labelledby="cma-tab" id="cma" class="tab-pane fade" role="tabpanel">
              
                <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
                <div class="clearfix"></div>
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              
              <div class=" col-lg-6">
                <div class="faculty-box">
                  <div class="col-lg-3 col-sm-4 col-xs-4 col-md-4 left-none pull-left"> <img alt="" src="entireApp/images/user.png" class="img-responsive mCS_img_loaded"> </div>
                  <div class="col-lg-5 pull-left left-none">
                    <h4 class="margin-top ">John Smith</h4>
                    <p style="margin:0px;">CA ,
                      Pune </p>
                    <p class="comment more" style="padding:0px;margin:0px">English, java, Hindi, Oracle, Marathi</p>
                  </div>
                  <span class="col-lg-4 pull-right"> <br>
                  <!--<div class="btn-group "> <span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-default btn-xs " type="button"> Select</button>
                    <button aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle" type="button"> <span class="caret"></span> <span class="sr-only"></span> </button>
                    <ul class="dropdown-menu dp ">
                      <li><a href="product.php">Card</a></li>
                      <li><a href="#">Remove</a></li>
                    </ul>
                  </div>-->
                  <div class="btn-group btn-sm"><span class="frin-box"> <a href="#" data-toggle="tooltip" title="" data-placement="right" data-original-title="Notification"> 12 </a></span>
                    <button class="btn btn-sm btn-default bt" data-label-placement=""><i class="fa fa-shopping-cart data-label"></i>
</button>
                    <button data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle"><span class="caret"></span> </button>
                    <ul class="dropdown-menu width4">
                      <li>
                        <input type="radio" id="ex7_1" name="ex7" value="1" checked="">
                        <label for="ex7_1"><a href="product.php"><i class="fa fa-shopping-cart data-label"></i> Cart</a></label>
                      </li>
                      <li>
                        <input type="radio" id="ex7_2" name="ex7" value="2">
                        <label for="ex7_2"><i class="fa fa-times-circle-o data-label"></i>  Remove</label>
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
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>