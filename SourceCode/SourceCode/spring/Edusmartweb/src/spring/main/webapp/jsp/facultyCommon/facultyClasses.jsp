<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  

<script>
function saveProduct()
{
	
	 $.ajax({  
	     type : "post",  
	     url  : "saveProduct",   
	     data : $('#saveProductId').serialize(),
		async : false,
	  success : function(response) {  
	     
	     }
	    
	    });  
	
}

</script>

  
      <div class="col-md-12 home-bg ">
        <div  class=" bs-example-tabs tab	">
          <div class="panel panel-default">
            <div class="panel-heading"> <i class="fa fa-book fa-lg"></i> Classes
              <div class="btn-group pull-right">
                <button type="button" class="btn btn-primary btn-default btn-sm btn-bottom	  pull-left" data-toggle="modal" data-target="#exampleModal1" data-whatever="" >
                <i class="fa fa-plus"></i> <a href="#" data-toggle="tooltip" title="Add text" data-placement="bottom" style="color:#fff;">Add </a>
                </button>
              </div>
            </div>
          </div>
          <div class="clearfix"></div>
     <!--For Adding Product-->
          
  <form:form onsubmit="saveProduct()" id="saveProductId" commandName="product">    
          <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
                <div class="modal-body pd-none">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="padding:10px;"><span aria-hidden="true">&times;</span></button>
                  <div class="panel panel-default">
                    <div class="panel-body ">
                      <div class="">
                        <div class="parentHorizontalTab">
                          <ul class="resp-tabs-list hor_1">
                            <li>CA</li>
                            <li>CS</li>
                            <li>CMA</li>
                          </ul>
                          <div class="resp-tabs-container hor_1 pos-tab">
                            <div class="pos-tab">
                              <dl  class="smart-tabs js-smart-tabs">
                                <dt><a href="#">
                                  <button class="btn btn-primary" type="button">Live <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Batch </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="attemptFrom" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="attemptTo" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="productId" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="uploadSyllabus" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="level" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="subjectLevelTB" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                          <input type="text" name="topic" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="typeOfBatch" id="display_name" class="form-control " >
                                                            <option>Type of batch</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="numberOfLectures" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="fees" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" name="endDate" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select End date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <p><a href="javascript:eToggle('atag1','helptxt');" id="atag1">More Info <i class="fa fa-plus-square"></i> </a> </p>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div id="helptxt" style="display: none">
                                                  <div class="col-lg-12 col-sm-12 col-xs-12 left-none">
                                                    <form>
                                                      <input type="text" name="productDescription" class="form-control" placeholder="Write a description here...">
                                                    </form>
                                                    <br>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-6 rht-bdr">
                                        <div class="form-group col-lg-7">
                                          <input type="text" name="batchTiming" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-5">
                                          <input type="text" name="capacity" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 rht-bdr">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" >
                                        </div>
                                      </div>
                                      <div class="col-lg-3">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder=" All Students" disabled>
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                  </div>
                                </dd>
                                <dt><a href="#">
                                  <button class="btn btn-success" type="button">Vertual <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Batch </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Type of batch</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select End date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-6 rht-bdr">
                                        <div class="form-group col-lg-7">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-5">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 rht-bdr">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder=" All Students" disabled>
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                  </div>
                                </dd>
                                <dt><a href="#">
                                  <button class="btn btn-info" type="button">Online <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd> Online <br>
                                  Under construction</dd>
                                <dt><a href="#">
                                  <button class="btn btn-warning" type="button">Study Material <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd> Study Material<br>
                                  Under construction</dd>
                              </dl>
                            </div>
                            <div class="pos-tab">
                              <dl  class="smart-tabs js-smart-tabs">
                                <dt><a href="#">
                                  <button class="btn btn-primary" type="button">Live <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Batch </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CS</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Type of batch</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select End date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-6 rht-bdr">
                                        <div class="form-group col-lg-7">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-5">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 rht-bdr">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder=" All Students" disabled>
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                  </div>
                                </dd>
                                <dt><a href="#">
                                  <button class="btn btn-success" type="button">Vertual <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Batch </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CS</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Type of batch</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select End date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-6 rht-bdr">
                                        <div class="form-group col-lg-7">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-5">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 rht-bdr">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder=" All Students" disabled>
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                  </div>
                                </dd>
                                <dt><a href="#">
                                  <button class="btn btn-info" type="button">Online <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd> Online <br>
                                  Under construction</dd>
                                <dt><a href="#">
                                  <button class="btn btn-warning" type="button">Study Material <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd> Study Material<br>
                                  Under construction</dd>
                              </dl>
                            </div>
                            <div class="pos-tab">
                              <dl  class="smart-tabs js-smart-tabs">
                                <dt><a href="#">
                                  <button class="btn btn-primary" type="button">Live <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Batch </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CMA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Type of batch</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select End date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-6 rht-bdr">
                                        <div class="form-group col-lg-7">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-5">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 rht-bdr">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder=" All Students" disabled>
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                  </div>
                                </dd>
                                <dt><a href="#">
                                  <button class="btn btn-success" type="button">Vertual <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="pull-left col-lg-3"> Live Batch </h4>
                                      <div class=" col-lg-3">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Apr 2015</option>
                                          <option>Oct 2016</option>
                                        </select>
                                      </div>
                                      <div class="  col-lg-3 mrg-bt">
                                        <select type="text" name="display_name" id="display_name" class="form-control " >
                                          <option>Oct 2015</option>
                                          <option>Apl 2016</option>
                                        </select>
                                      </div>
                                      <span class=" pull-right col-lg-2">
                                      <div class="input-group">
                                        <input type="text" name="id" id="id" class="form-control date-width lginput-lg" placeholder="ID">
                                      </div>
                                      </span>
                                      <div class="clearfix"></div>
                                    </div>
                                    <div class="bg-white ">
                                      <div class="panel-group" style="margin-top:0px;">
                                        <div class="panel panel-default" id="panel1">
                                          <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                              <div class="profile-new">
                                                <div class="col-lg-3 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <br>
                                                  <p>Share Syllabus</p>
                                                  <div class="form-group">
                                                    <input type="file" name="pic" accept="image/*" class="form-control" style="    font-size: 10px;">
                                                  </div>
                                                </div>
                                                <div class="col-lg-9 ">
                                                  <div class="personal-bg">
                                                    <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                                        <h4 class="great">CMA</h4>
                                                        </span>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select Level</option>
                                                              <option>A<sub>+</sub></option>
                                                              <option>B<sub>+</sub></option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-5 col-md-5">
                                                          <div class="form-group">
                                                            <select type="text" name="display_name" id="display_name" class="form-control " >
                                                              <option>Select 	Subject</option>
                                                              <option>sd</option>
                                                              <option>asdf</option>
                                                              <option>dcfvg</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <select type="text" name="display_name" id="display_name" class="form-control " >
                                                            <option>Type of batch</option>
                                                            <option>Other</option>
                                                            <option>cxdscfv</option>
                                                            <option>vgb</option>
                                                          </select>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Topic" >
                                                        </div>
                                                      </div>
                                                      <div class="clearfix"></div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Fees"  disabled>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group  ">
                                                          <div class="input-group date " id="dp1"> <span class="input-group-addon in"><i class="fa fa-calendar"></i> </span>
                                                            <input type="text" class="datepicker form-control date-width lg" id="txtStartDateDesk" placeholder="Select End date" disabled>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-12 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                          <input type="text" name="first_name" id="first_name" class="form-control " placeholder="Number of lectures" >
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="clearfix"></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="bottom-bg live-batch" style="    padding-bottom: 0px;">
                                      <div class="col-lg-6 rht-bdr">
                                        <div class="form-group col-lg-7">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Batch timing" disabled>
                                        </div>
                                        <div class="form-group col-lg-5">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Capacity" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3 rht-bdr">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Insert Video Link" disabled>
                                        </div>
                                      </div>
                                      <div class="col-lg-3">
                                        <div class="form-group">
                                          <input type="text" name="first_name" id="first_name" class="form-control" placeholder=" All Students" disabled>
                                        </div>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>
                                  </div>
                                </dd>
                                <dt><a href="#">
                                  <button class="btn btn-info" type="button">Online <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd> Online <br>
                                  Under construction</dd>
                                <dt><a href="#">
                                  <button class="btn btn-warning" type="button">Study Material <i class="fa fa-plus-circle"></i></button>
                                  </a></dt>
                                <dd> Study Material<br>
                                  Under construction</dd>
                              </dl>
                            </div>
                          </div>
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
                        <div class="col-md-5"> <a href="#" class="pull-left share" data-toggle="tooltip" title="Share" data-placement="bottom"> <img src="entireApp/images/plane.png"></a>
                          <div class="form-group pull-right">
                            <select type="text" name="notify" class="form-control multiselect multiselect-icon" multiple="multiple" role="multiselect">
                              <option value="All" data-icon="">All</option>
                              <option value="Faculty" data-icon="">Faculty</option>
                              <option value="Student" data-icon="">Student</option>
                            </select>
                          </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
 </form:form>
 <!--End of Add product-->
  
          <div class="parentHorizontalTab">
            <ul class="resp-tabs-list hor_1">
              <li>CA</li>
              <li>CS</li>
              <li>CMA</li>
            </ul>
            <div class="resp-tabs-container hor_1">
              <div>
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Live Batch </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> </div>
                              <div class="col-lg-10 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                                <td class=""> 22 lectures</td>
                                                <td class=""> Total Admissions - <span class="like1">100</span></td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                        <div class=" ">
                                          <div class="col-lg-3 mg-top"> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </div>
                                          <div class="pull-right mg-top" >
                                            <div aria-label="First group" role="group" class="btn-group">
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                              </button>
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                              </button>
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Add to Cart"><i class="fa fa-shopping-cart orange"></i></a>
                                              </button>
                                            </div>
                                          </div>
                                          <div class="clearfix"></div>
                                          <div class="col-lg-12">
                                            <div id="helptxt5" style="display: none;margin-top:10px;">
                                              <div>
                                                <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="colorline">
                  <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Virtual Batch </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> </div>
                              <div class="col-lg-10 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                                <td class=""> 22 lectures</td>
                                                <td class=""> Total Admissions - <span class="like1">100</span></td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                        <div class=" ">
                                          <div class="col-lg-3 mg-top"> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </div>
                                          <div class="pull-right mg-top" >
                                            <div aria-label="First group" role="group" class="btn-group">
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                              </button>
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                              </button>
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Add to Cart"><i class="fa fa-shopping-cart orange"></i></a>
                                              </button>
                                            </div>
                                          </div>
                                          <div class="clearfix"></div>
                                          <div class="col-lg-12">
                                            <div id="helptxt5" style="display: none;margin-top:10px;">
                                              <div>
                                                <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                 <hr class="colorline"> 
                 
                 <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Online Batch </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> </div>
                              <div class="col-lg-10 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                                <td class=""> 22 lectures</td>
                                                <td class=""> Total Admissions - <span class="like1">100</span></td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                        <div class=" ">
                                          <div class="col-lg-3 mg-top"> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </div>
                                          <div class="pull-right mg-top" >
                                            <div aria-label="First group" role="group" class="btn-group">
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                              </button>
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                              </button>
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Add to Cart"><i class="fa fa-shopping-cart orange"></i></a>
                                              </button>
                                            </div>
                                          </div>
                                          <div class="clearfix"></div>
                                          <div class="col-lg-12">
                                            <div id="helptxt5" style="display: none;margin-top:10px;">
                                              <div>
                                                <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
                
                   <hr class="colorline"> 
                 <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Study Material</strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> </div>
                              <div class="col-lg-10 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-11">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td class=""><span class="level-bg ">CPT</span></td>
                                                <td class=""><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td class=""> VAT</td>
                                                <td class=""> Regular Batch</td>
                                                <td class=""> 22 lectures</td>
                                                <td class=""> Total Admissions - <span class="like1">100</span></td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                        <div class=" ">
                                          <div class="col-lg-3 mg-top"> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </div>
                                          <div class="pull-right mg-top" >
                                            <div aria-label="First group" role="group" class="btn-group">
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                                              </button>
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                                              </button>
                                              <button class="btn btn-default btn-xs" type="button">
                                              <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Add to Cart"><i class="fa fa-shopping-cart orange"></i></a>
                                              </button>
                                            </div>
                                          </div>
                                          <div class="clearfix"></div>
                                          <div class="col-lg-12">
                                            <div id="helptxt5" style="display: none;margin-top:10px;">
                                              <div>
                                                <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor </p>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
            
                <!--<hr class="colorline">
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Study Material </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </div>
                              <div class="col-lg-10 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                <td> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last"><i class="fa fa-inr"></i> ----</td>
                                                <td class="last"> 22 lectures</td>
                                                <td class="last"><i class="fa fa-tachometer"></i> ---- </td>
                                                <td class="last"> 20 Days</td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                        <p style="margin-bottom:0px;padding-bottom:0px;">Starting for</p>
                                        <div class="date-profile1">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <form>
                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                    </form>
                                  </div>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      <div class="pull-right">
                        <div aria-label="First group" role="group" class="btn-group">
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                          </button>
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                          </button>
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Add to Cart"><i class="fa fa-shopping-cart orange"></i></a>
                          </button>
                        </div>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>-->
                <div class="clearfix"></div>
              </div>
              <div>
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Live Batch </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </div>
                              <div class="col-lg-10 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                <td> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last"><i class="fa fa-inr"></i> ----</td>
                                                <td class="last"> 22 lectures</td>
                                                <td class="last"><i class="fa fa-tachometer"></i> ---- </td>
                                                <td class="last"> 20 Days</td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                        <p style="margin-bottom:0px;padding-bottom:0px;">Starting for</p>
                                        <div class="date-profile1">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <form>
                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                    </form>
                                  </div>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      <div class="pull-right">
                        <div aria-label="First group" role="group" class="btn-group">
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                          </button>
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                          </button>
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Add to Cart"><i class="fa fa-shopping-cart orange"></i></a>
                          </button>
                        </div>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
              <div>
                <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="  padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Live Batch </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> <span style="float:right;margin-right: 11px;"> <a href="#" data-toggle="modal" data-target="#exampleModal1" data-whatever=""> <i class="fa fa-pencil"></i></a> <span style="float:left;margin-right: 11px;"><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> <i class="fa fa-trash-o blue"></i></a></span> </span>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                              <div class="col-lg-2 "> <img alt="" src="entireApp/images/students.jpg" class="img-responsive"> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </div>
                              <div class="col-lg-10 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                <td> Regular Batch</td>
                                              </tr>
                                              <tr>
                                                <td class="last"><i class="fa fa-inr"></i> ----</td>
                                                <td class="last"> 22 lectures</td>
                                                <td class="last"><i class="fa fa-tachometer"></i> ---- </td>
                                                <td class="last"> 20 Days</td>
                                              </tr>
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                        <p style="margin-bottom:0px;padding-bottom:0px;">Starting for</p>
                                        <div class="date-profile1">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                                <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <form>
                                      <input type="text" class="form-control" placeholder="Write a description here...">
                                    </form>
                                  </div>
                                </div>
                              </div>
                              <div class="clearfix"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="bottom-bg live-batch pd-none">
                    <div class="add-profile col-lg-12">
                      <ul>
                        <li> <a href="#" title=""> Like </a><span class="like">/ 12</span> .</li>
                        <li> <a href="javascript:eToggle('','helptxt4');" id="comment"> Questions </a><span class="comment">/ 12</span> .</li>
                        <li> <a href="https://www.facebook.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Facebook"><i class="fa fa-facebook-square  fb"></i></a> <a href="https://twitter.com/" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Twitter"><i class="fa fa-twitter-square tw"></i></a> <a href="https://accounts.google.com/ServiceLogin?service=oz&amp;passive=1209600&amp;continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier" target="_blank" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Google Plus"><i class="fa fa-google-plus-square g-plus"></i></a> </li>
                      </ul>
                      <div class="pull-right">
                        <div aria-label="First group" role="group" class="btn-group">
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Demo Video"><i class="fa fa-youtube-play orange"></i></a>
                          </button>
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Download Syllabus"><i class="fa fa-book orange"></i></a>
                          </button>
                          <button class="btn btn-default" type="button">
                          <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Add to Cart"><i class="fa fa-shopping-cart orange"></i></a>
                          </button>
                        </div>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                    <div id="helptxt4" style="display: none">
                      <hr>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-7 col-xs-9 left-none"> <span class="viewer1 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                        <ul class="dropdown-menu pull-right width4 " role="menu">
                          <li><a href="#"> Remove</a></li>
                        </ul>
                        </span>
                        <p class="margin-bottom"><strong>John Smith</strong> -Lorem ipsum dolor sit amet,</p>
                        <div class="clearfix"></div>
                        <div class="rating pull-left ">
                          <ul>
                            <li> <a href="#" title=""> Like </a>.</li>
                            <li> <a href="#"> Reply </a>.</li>
                            <li> <a href="#" class="star"> 23 hrs </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="col-md-2 col-xs-3   col-lg-1 firends1 home-img"> <img src="entireApp/images/user.png" class="featurette-image img-responsive"></div>
                      <div class="col-lg-11 col-sm-10 col-xs-10 left-none">
                        <form>
                          <input type="text" class="form-control" placeholder="Write a comment...">
                        </form>
                      </div>
                      <div class="clearfix"></div>
                    </div>
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
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 

<script src="tabs/easyResponsiveTabs.js"></script> 
<script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script> 
<script type="text/javascript" src="js/tm_validator.js"></script> 
<script type="text/javascript" src="js/tm_editable.js"></script> 
<script type="text/javascript" src="calender/fwd.js"></script> 
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script> 
<script src="js/fileinput.min.js" type="text/javascript"></script> 
<script src="js/dropdowns-enhancement.min.js"></script> 
<script src="js/select.js"></script> 
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
<script src="entireApp/js/smartTabs.js"></script> 
<script>
$('.js-smart-tabs').smartTabs();
$('.js-smart-tabs--tabs').smartTabs({
	layout: 'tabs'
});
$('.js-smart-tabs--accordion').smartTabs({
	layout: 'accordion'
});
</script>

