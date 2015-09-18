<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="col-md-12 home-bg">
 
  
   <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab	">
    <ul role="tablist" id="myTab">
          <li class="" role="presentation">News <i class="fa fa-long-arrow-right"></i>
</li>

      <li  role="presentation"><a aria-expanded="true" aria-controls="jan" data-toggle="tab" role="tab" id="jan-tab" href="#jan">
 JAN</a></li>
      <li role="presentation" class=""><a aria-controls="feb" data-toggle="tab" id="feb-tab" role="tab" href="#feb" aria-expanded="false">
FEB</a></li>
      <li role="presentation" class=""><a aria-controls="mar" data-toggle="tab" id="mar-tab" role="tab" href="#mar" aria-expanded="false">
 MAR</a></li>
  <li role="presentation" class=""><a aria-controls="api" data-toggle="tab" id="api-tab" role="tab" href="#api" aria-expanded="false">
 ARI</a></li>
  <li role="presentation" class=""><a aria-controls="may" data-toggle="tab" id="may-tab" role="tab" href="#may" aria-expanded="false">
 MAY</a></li>
  <li role="presentation" class="active"><a aria-controls="june" data-toggle="tab" id="june-tab" role="tab" href="#june" aria-expanded="false">
 JUNE</a></li>
  <li role="presentation" class=""><a aria-controls="jully" data-toggle="tab" id="jully-tab" role="tab" href="#jully" aria-expanded="false">
 JULLY</a></li>
  <li role="presentation" class=""><a aria-controls="aug" data-toggle="tab" id="aug-tab" role="tab" href="#aug" aria-expanded="false">
 AUG</a></li>
  <li role="presentation" class=""><a aria-controls="sep" data-toggle="tab" id="sep-tab" role="tab" href="#sep" aria-expanded="false">
 SEP</a></li>
  <li role="presentation" class=""><a aria-controls="oct" data-toggle="tab" id="oct-tab" role="tab" href="#oct" aria-expanded="false">
 OCT</a></li>
  <li role="presentation" class=""><a aria-controls="nov" data-toggle="tab" id="nov-tab" role="tab" href="#nov" aria-expanded="false">
 NOV</a></li>
  <li role="presentation" class=""><a aria-controls="dec" data-toggle="tab" id="dec-tab" role="tab" href="#dec" aria-expanded="false">
 DEC</a></li>
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
 <form action="addnews">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-bullhorn "></i>  Add News </h4>
      </div>
      
      <div class="modal-body">
        <div class="panel panel-default">
          
            <div class="panel-body">
          
              <div class="">

        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> 
          <a href="#" class="" style="margin:10px;" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Change picture"> <span class=" btn-file "> <img src="images/user.png" width="100%"> 
            <input type="file">
            </span></a> 
        
    </div>
    
        <div class="col-lg-11 profile-new">
       
                 <p class="lead "><input type="text" name="news.title" class="form-control" id="" placeholder="Add titile here"></p>
          <p><input type="text" name="news.date" class="form-control" id="" placeholder="Selcet your date and time"></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5"> <img alt="" src="images/students.jpg" class="img-responsive"> 
            <a href="#" class="btn btn-xs btn-primary pull-right center-block" style="margin:10px;"> <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i> Add your picture
            <input type="file">
            </span></a> </div>
         
          <div class="col-lg-7 ">
            <h4 class="margin-top"><input type="text" name="news.subTitle" class="form-control" id="" placeholder="Add titile here"></h4>
            <p ><textarea type="text" name="news.newsContent" class="form-control" id="" placeholder="Add Description here" rows="5"></textarea></p>
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
                   
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
     
    </div>
    </form>
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

        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> January </h4> </div> </div>
      
      
      <!--for news display  -->
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
   
      
      
 </div>
      
      
      <div aria-labelledby="feb-tab" id="feb" class="tab-pane fade" role="tabpanel">

  
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> February </h4> </div> </div>
      
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
        
       

<div class="clearfix"></div>
      </div>
   
      <div aria-labelledby="mar-tab" id="mar" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> March </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
      
      
       <div aria-labelledby="api-tab" id="api" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> April </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
    
     <div aria-labelledby="may-tab" id="may" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> May </h4> </div> </div>
       <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
    
     <div aria-labelledby="june-tab" id="june" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> June </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
    
     <div aria-labelledby="jully-tab" id="jully" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> Jully </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
    
     <div aria-labelledby="aug-tab" id="aug" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> August </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
    
     <div aria-labelledby="sep-tab" id="sep" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> September </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
    
     <div aria-labelledby="oct-tab" id="oct" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> October </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
    
     <div aria-labelledby="nov-tab" id="nov" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> 	November </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
    
     <div aria-labelledby="dec-tab" id="dec" class="tab-pane fade" role="tabpanel">
        <div class="panel panel-default"><div class="panel-heading"> <h4> <i class="fa fa-calendar fa-lg "></i> December </h4> </div> </div>
        <div class="bg-white well-new">
       <s:iterator value="newsList">
        <div class="col-md-2 col-xs-3   col-lg-1 firends1"> <img src="images/user.png" class="featurette-image img-responsive">
        </div>
        <div class="col-lg-10 profile-new">
          <p class="lead "> <a href="#"><s:property value="title" /></a> shared a link</p>
          <p><span class="glyphicon glyphicon-time"></span> Posted on <s:property value="date" /></p>
        </div>
        <div class="clearfix"></div>
        <div class="well-update profile-new">
          <div class="col-lg-5 "> <img alt="" src="images/students.jpg" class="img-responsive"> </div>

          <div class="col-lg-7 ">
            <h4 class="margin-top"><s:property value="subTitle" /></h4>
            <p class="comment more"><s:property value="newsContent" /></p>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          <div class="col-md-12">
            <div class="add-profile">
          <ul >
            <li> <a href="#" title="" > Like</a> .</li>
            <li> <a href="#" > Comment </a><span class="comment">23</span> .</li>
            <li> <a href="#" >Share</a> </li>
          </ul>
        </div>
        
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
      </s:iterator> 
      </div>
    </div>
      
      
    </div>
  </div>
  
 
 
      
      
        </div>