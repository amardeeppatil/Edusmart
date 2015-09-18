<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.edusmartweb.edusmart.model.*" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="col-md-2 left-none padding-rht" >


  <div id="myCarousel" class="carousel slide classes bd">
   <h4> <span><i class="fa fa-bullhorn fa-lg"></i></span>  &nbsp;NEWS  <span>ANNOUN...</span> <span class="pull-right see-all" ><a href="#" data-toggle="tooltip" title="Add news" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="newsPage">See All</a></span></h4>
          <hr>
           <div class="carousel-inner content">
          <c:forEach items="${sessionScope.newsList}" var="item">
               <div class="item">
                 <div class="caption cp">
             <h4> <i class="fa fa-book"></i> <span><a href="newsPage"><c:out value="${item.getTitle()}"/></a></span></h4>
        <p style="text-align:justify"><c:out value="${item.getNewsContent()}"/> <br>
        </p>                      
               
         </div>
         </div>
         <hr>
          </c:forEach>  
          </div>
             </div>
       <div class="carousel slide well-new classes well" >
      
       <h4><i class="fa fa-calendar"></i>  UPCOMING <span>EVENTS</span><span class="pull-right see-all" ><a href="#" data-toggle="tooltip" title="Add event" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="#">See All</a></span></h4>
       <hr>
        <div class="carousel-inner content">
        <c:forEach items="${sessionScope.eventsList}" var="eventItem">
          <div class="item">
            <div class="caption cp">
           <div class="well-update1 profile-new1">
            <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top"><c:out value="${eventItem.getTitle()}"/></h4>
        
            <p ><c:out value="${eventItem.getEventContent()}"/></p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
         
        </div>
        
            </div>
          </div>
          </c:forEach>
        
        </div>
        <!-- Indicators --> 
        
      </div>
      
      
      <div class="carousel slide well-new classes well" id="myCarousel6 ">
      
       <h4><i class="fa fa-tags"></i> OFFERS & <span>PROMO..</span><span class="pull-right see-all" ><a href="#" data-toggle="tooltip" title="Add offers" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="#">See All</a></span></h4>
       <hr>
        <div class="carousel-inner">
          <div class="item">
            <div class="caption cp">
           <div class="well-update1 profile-new1">
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          
        </div>
        
            </div>
          </div>
        <div class="item">
               <div class="caption cp">
           <div class="well-update1 profile-new1">
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
           <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          
        </div>
        
            </div>
          </div>
         <div class="item active">
               <div class="caption cp">
           <div class="well-update1 profile-new1">
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
         <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          
        </div>
        
            </div>
          </div>
        </div>
        <!-- Indicators --> 
        
      </div>
    <!--  <form>
        <div class="input-group">
          <div class="input-group-btn">
            <button class="btn btn-default">+1</button>
            <button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>
          </div>
          <input type="text" placeholder="Add a latest news.." class="form-control">
        </div>
      </form>-->
      
      <div class=" well-new classes well">
      <div id="carousel_fade" class="carousel slide carousel-fade classes">
       <h4><i class="fa fa-pencil-square-o"></i> REVIEWS <span></span> <span class="pull-right see-all1" ><a href="#" data-toggle="tooltip" title="Add reviews" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="#">See All</a></span></h4>
       <hr>
	<div class="carousel-inner">
				
		<div class="item active">
		
         <div class="caption cp">
           <div class="well-update1 profile-new1">
         <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          
        </div>
        
            </div>
       
    </div>
		
					
		<div class="item ">
			   
          <div class="caption cp">
           <div class="well-update1 profile-new1">
           <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
           <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          
        </div>
        
            </div>
		</div>
					
	</div>
	
	</div>
      </div>
     
 <div class="carousel slide well-new classes well">
 <h4> OFFERS & <span>PROMO</span><span class="pull-right see-all"><a href="#">See All</a></span></h4>
 <hr>
 
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         	
         </div>
         
         
          
        </div>
      <div class="clearfix"></div>
     
   
     </div>
    
  
  <div class="col-md-2 padding-rht well-rht ">
      <img src="entireApp/images/add2.jpg" width="100%">
      <br> <br>
       <img src="entireApp/images/add.jpg" width="100%">
      
    </div>
    
    
    
<!--For cart  -->    

  <div id="sidebar" class="draggable" style="position:relative;float:right;" data-toggle="modal" data-target="#exampleModal4" data-whatever="" >
      <span class="cart-ic">(${fn:length(sessionScope.productListInCart)})</span>
      </div>
    
       <div class="modal fade " id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
         <input type="hidden" name="productId" id="setProductId">
         <input type="hidden" name="subjectLevelRef" id="putsubjectRef">
		 <input type="hidden" name="facultyRef" id="putfacultyRef"> 

 <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel"><i class="fa fa-user"></i> Your Cart Items </h4>
              </div>
              <div class="modal-body">
                <div class="panel panel-default">
                  <div class="panel-body">
                  
                  <div class="parentHorizontalTab">
                          <ul class="resp-tabs-list hor_1">
                            <li>Live / Virtual Classes</li>
                            <li>Online Classes / Study Material</li>
                         
                          </ul>

                          
                          <div class="resp-tabs-container hor_1 pos-tab">
                        
                          
                          <div>
                   <div class="carousel " >
<div class="carousel-inner content content6">
<c:if test="${not empty sessionScope.productListInCart}">
   <c:forEach var="CartProductObj" items="${sessionScope.productListInCart}" varStatus="status">             
      <div class="item">
       
          <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for CartProductObj.attemptFrom : CartProductObj.attemptTo</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> 
                      <span class="pull-right"> 
                       <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> 
                      <i class="fa fa-trash-o blue"></i></a></span> 
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                                <div class="col-lg-2 text-cen"> 
                              <div class="img-res">
                              <img alt="" src="entireApp/images/user.png" class="img-responsive">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg"><c:out value="${CartProductObj.level}" /></span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Economics">
                                                <strong><c:out value="${CartProductObj.subjectName}" /></strong></a></td>
                                                <td> <c:out value="${CartProductObj.topic}" /></td>
                                                  <td> <c:out value="${CartProductObj.typeOfBatch}" /> &nbsp;Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last"><c:out value="${CartProductObj.numberOfLectures}" /> lectures</td>
                                         
                                                <td class="last"><c:out value="${CartProductObj.days}" /> Days</td>
                                           
                                                <td class="last"> <c:out value="${CartProductObj.batchTiming}" />.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="9 am to 10 am" id="optionsRadios1" name="batchTiming" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="5 pm to 6 pm" id="optionsRadios2" name="batchTiming" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="7 pm to 8 pm" id="optionsRadios3" name="batchTiming" class="orange">
                                                        7 pm to 8 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> <c:out value="${CartProductObj.fees}" /> </h3>
                               
                            <br>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p><c:out value="${CartProductObj.productDescription}" /></p>
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
               <hr class="colorline">
 
     
      </div>
</c:forEach>  
</c:if>   
  
 
      <div class="clearfix"></div>
      
         <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
             
                <div class="info-box-content">
                  <span class="info-box-text">Pay Now</span>
                  <hr>
                  <span class="info-box-number">Rs. 1000</span>
                  
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-1 text-center">
          <span class="orange equal">  &#8314;</span>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
              
              
                <div class="info-box-content">
                  <span class="info-box-text">Pay of your Center</span>
                  <hr>
                  <span class="info-box-number">Rs. 29,000</span>
                 
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->

           <div class="col-md-1 text-center">
         <span class="orange equal"> &#8316;</span>

            </div>

            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
              
              
                <div class="info-box-content">
                  <span class="info-box-text">Total</span>
                  <hr>
                  <span class="info-box-number">Rs. 30,000</span>
               
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="clearfix"></div>
              <hr class="colorline">
     <div class="pull-right">
<button type="button" class="btn btn-default btn-lg "> <i class="fa fa-plus orange"></i>
Add another product</button>
  
    
   <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#exampleModal6" data-whatever="">Place Order</button>
   <br> <br>
   <div class="modal fade " id="exampleModal6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
              
           
                <div class="modal-body pd-none">
                  <div class="panel panel-default">
                    <div class="panel-body ">
						
    <div id="loginbox" style="background:#fff;padding:30px;padding-top:0px;">
           <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
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
            
 <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
              </span> <span class=""> <a id="btn-fblogin" href="#" class="btn btn-warning">Login with Google</a> </span> </div>
            <div class="col-xs-8 col-sm-9 col-md-4 pull-right"> <a href="#" data-toggle="modal" data-target="#t_and_c_m" class=" " style="position: relative;top: 

7px;left: 17px;">Forgot your password ?</a> </div>
          </div>
          <br>
          <hr class="colorgraph">
          <div class="row">
            <div class="col-xs-12 col-md-6">
              <input type="submit" value="Sign In" class="btn btn-primary btn-block btn-lg" tabindex="7">
            </div>
            <div class="col-xs-12 col-md-6 control">
              <div style=" padding-top:15px; font-size:14px;"> Don't have an account! <a href="personal-info.php"> Sign Up Here </a> </div>
            </div>
          </div>
        </form>
      </div>
  
                      
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          
   </div>  
  
  
  
  
    </div>
    <!-- Indicators --> 
    
    
    
    
    
                </div>
                </div>
                  <div>
                           <div class="carousel " >
         <div class="carousel-inner content content6">
      <div class="item">
       
           <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> 
                      <span class="pull-right"> 
                       <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> 
                      <i class="fa fa-trash-o blue"></i></a></span> 
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                                <div class="col-lg-2 text-cen"> 
                              <div class="img-res">
                              <img alt="" src="entireApp/images/user.png" class="img-responsive">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-

title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-

toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-

square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                            <br>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
               <hr class="colorline">
              
            <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> 
                      <span class="pull-right"> 
                       <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> 
                      <i class="fa fa-trash-o blue"></i></a></span> 
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                                <div class="col-lg-2 text-cen"> 
                              <div class="img-res">
                              <img alt="" src="entireApp/images/user.png" class="img-responsive">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-

title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-

toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-

square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                            <br>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
          
       
      </div>
        <hr class="colorline">
              
      <div class="item">
       
          <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Live Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> 
                      <span class="pull-right"> 
                       <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> 
                      <i class="fa fa-trash-o blue"></i></a></span> 
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">



                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                                <div class="col-lg-2 text-cen"> 
                              <div class="img-res">
                              <img alt="" src="entireApp/images/user.png" class="img-responsive">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-

title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-

toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-

square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                            <br>
                              </div>
                              <div class="clearfix"></div>
                                <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
               <hr class="colorline">
       
           <div class="panel panel-default">
                  <div class="panel panel-default">
                    <div class="panel-heading" style="padding: 3px 14px !important;">
                      <p class="pull-left col-lg-3"><strong>Virtual Classes </strong></p>
                      <div class="col-lg-5">
                        <p>Applicable for Apr 2015 : Oct 2015</p>
                      </div>
                      <span class="  col-lg-2">
                      <div class="input-group">
                        <p><strong>ID-</strong> 3656</p>
                      </div>
                      </span> 
                      <span class="pull-right"> 
                       <a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-title="Delete"> 
                      <i class="fa fa-trash-o blue"></i></a></span> 
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="bg-white ">
                    <div class="panel-group mg-none">
                      <div class="panel panel-default" id="panel1">
                        <div id="collapseOne" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <div class="profile-new">
                                <div class="col-lg-2 text-cen"> 
                              <div class="img-res">
                              <img alt="" src="entireApp/images/user.png" class="img-responsive">
                             <div class="user-img-bg"><p>John Smith</p></div></div>
                            
                              </div>
                                
                              <div class="col-lg-8 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> <span class="pull-left col-lg-1">
                                      <h4 class="great">CA</h4>
                                      </span>
                                      <div data-example-id="simple-responsive-table" class="col-lg-9 table-pd">
                                        <div class="table-responsive ">
                                          <div class="clearfix"></div>
                                          <table class="table cutom-table">
                                            <tbody>
                                              <tr>
                                                <td><span class="level-bg">CPT</span></td>
                                                <td><a href="#" data-toggle="tooltip" title="" data-placement="bottom" data-original-

title="Economics"><strong>ECE</strong></a></td>
                                                <td> VAT</td>
                                                  <td> Regular Batch </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td class="last"></td>
                                                <td class="last">22 lectures</td>
                                         
                                                <td class="last">20 Days</td>
                                           
                                                <td class="last"> 9 am to 10 am.. <span class="viewer6 dropdown pull-right"> <a class="dropdown-toggle" data-

toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-angle-down fa-lg "></i></a>
                                                  <ul class="dropdown-menu pull-right width4" role="menu">
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        9 am to 10 am </label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                    <li>
                                                      <label>
                                                        <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios" class="orange">
                                                        5 pm to 6 pm</label>
                                                    </li>
                                                  </ul>
                                                  </span></td>
                                              
                                              </tr>
                                              <!--<tr>
                                              
                                              <td> <a href="javascript:eToggle('','helptxt5');" id="read" style="font-size:14px;">More Info <i class="fa fa-plus-

square"></i> </a> </td>
                                              </tr>-->
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                      <div class="col-lg-2 text-center">
                                      
                                        <div class="date-profile6">
                                          <p> <span>Mar</span> <br>
                                            05</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              <div class="personal-bg mg-none col-lg-2 text-cen">
                                <h3 class="orange table-top"><i class="fa fa-inr"></i> 30,000 </h3>
                               
                            <br>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-lg-12">
                                 <div id="helptxt5" style="display: none;margin-top:10px;">
                                  <div>
                                    <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
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
     
      </div>
     
       <hr class="colorline">
     <div class="clearfix"></div>
     <div class="profile-new">
                                
                                
                              <div class="col-lg-12 ">
                                <div class="personal-bg mg-none">
                                  <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12"> 
                                      <div class="col-lg-12">
                                   <h4 class="pull-right">   Estimated Total : Rs. 30,000</h4>
                                    <div class="clearfix"></div>
                                     <hr>
                                 <div class="pull-right">
<button type="button" class="btn btn-default btn-lg "> <i class="fa fa-plus orange"></i>
Add another product</button>
  
   
   <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#exampleModal6" data-whatever="">Place Order</button>
   <div class="modal fade " id="exampleModal6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-target=".bs-example-modal-lg">
            <div class="modal-dialog bs-example-modal-lg">
              <div class="modal-content">
              
           
                <div class="modal-body pd-none">
                  <div class="panel panel-default">
                    <div class="panel-body ">
						
    <div id="loginbox" style="background:#fff;padding:30px;padding-top:0px;">
           <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
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
            
              <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
              </span> <span class=""> <a id="btn-fblogin" href="#" class="btn btn-warning">Login with Google</a> </span> </div>
            <div class="col-xs-8 col-sm-9 col-md-4 pull-right"> <a href="#" data-toggle="modal" data-target="#t_and_c_m" class=" " style="position: relative;top: 

7px;left: 17px;">Forgot your password ?</a> </div>
          </div>
          <br>
          <hr class="colorgraph">
          <div class="row">
            <div class="col-xs-12 col-md-6">
              <input type="submit" value="Sign In" class="btn btn-primary btn-block btn-lg" tabindex="7">
            </div>
            <div class="col-xs-12 col-md-6 control">
              <div style=" padding-top:15px; font-size:14px;"> Don't have an account! <a href="personal-info.php"> Sign Up Here </a> </div>
            </div>
          </div>
        </form>
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
                                  </div>
                                </div>
                                <div class="clearfix"></div>
                             
                              </div>
                              
                              <div class="clearfix"></div>
                              
                            </div>
    </div>
    
    
    <!-- Indicators --> 
    
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
        </div>
        
        


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