<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.edusmart.action.AcademyAction"%>
<%@page import="com.edusmart.dao.*" %>

<%
	NewsTB newsList = NewsTB.class.cast(session
			.getAttribute("newsList"));
%>

<%-- <script>
function  selectnews() {
	alert("got it...");
	  document.getElementById("newsId").focus();
	};


</script> --%>

<div class="col-md-2 left-none padding-rht" >


  <div id="myCarousel" class="carousel slide classes bd">
   <h4> <span><i class="fa fa-bullhorn fa-lg"></i></span>  &nbsp;NEWS  <span>ANNOUN...</span> <span class="pull-right see-all" ><a href="#" data-toggle="tooltip" title="Add news" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="#">See All</a></span></h4>
          <hr>
          
          <c:forEach items="${newsList1}" var="item">
            <div class="caption cp">  
             
             <h4> <i class="fa fa-book"></i> <span><a href="show.action"><c:out value="${item.getTitle()}"/></a></span></h4>
        <p style="text-align:justify"><c:out value="${item.getNewsContent()}"/> <br>
        </p>                      
               
         </div>
          </c:forEach>  
          
               <%-- <div class="carousel-inner"> 
                    <%
                  	ArrayList<NewsTB> al=(ArrayList) session.getAttribute("newsList");
                    
             		/*  Iterator itr=al.iterator();
                   		while(itr.hasNext()){
                	                   	   
                	   NewsTB news=(NewsTB)itr.next(); */
                	   
               
                   for(int i=0;i<al.size();){
                	   if(i==0){%>
                	     <div class="item active">         
                            
                	   <%}else
                		   
                	   {%>
              	     <div class="item">         
                     
              	   <%}
                	   for(int j=0;j<2;j++){
                		  
                		   NewsTB news=(NewsTB) al.get(i);
                		   i++;
                		  
                    %> 
                  
                    	
                        <div class="caption cp">  
                        
                    <s:iterator value="newsList1">
                        
             
 		<h4> <i class="fa fa-book"></i> <span><a href="show?testId=<%=news.getNewsId()%>" id="newsId"><%=news.getTitle()%></a></span></h4>
        <p style="text-align:justify"> <%=news.getNewsContent()%> <br>
        </p>                      
               
         </div>
                       
          
          <%    }  %>
         
                </div>	   
                
                       
                <%   } 	   
                	 %>
     
                 </div>       
                 <!-- Indicators -->
                                                                              
            </div> --%>
       <div class="carousel slide well-new classes well" >
      
       <h4><i class="fa fa-calendar"></i>  UPCOMING <span>EVENTS</span><span class="pull-right see-all" ><a href="#" data-toggle="tooltip" title="Add event" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="#">See All</a></span></h4>
       <hr>
        <div class="carousel-inner content">
          <div class="item">
            <div class="caption cp">
           <div class="well-update1 profile-new1">
            <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
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
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
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
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
           <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
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
      
      
      <div class="carousel slide well-new classes well" id="myCarousel6 ">
      
       <h4><i class="fa fa-tags"></i> OFFERS & <span>PROMO..</span><span class="pull-right see-all" ><a href="#" data-toggle="tooltip" title="Add offers" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="#">See All</a></span></h4>
       <hr>
        <div class="carousel-inner">
          <div class="item">
            <div class="caption cp">
           <div class="well-update1 profile-new1">
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
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
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
           <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
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
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
         <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
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
         <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
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
           <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p >Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         
         </div>
          <hr>
           <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
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
 
          <div class="col-lg-4 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="images/user.png" class="img-responsive"> 
           </div>
          <div class=" events">
            <h4 class="margin-top">John Smith</h4>
        
            <p>Lorem ipsum dolor sit amet. veritatis, Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
          <div class="clearfix"></div>
         	
         </div>
         
         
          
        </div>
      <div class="clearfix"></div>
     
   
     </div>
    
  </div>
  <div class="col-md-2 padding-rht well-rht ">
      <img src="images/add2.jpg" width="100%">
      <br> <br>
       <img src="images/add.jpg" width="100%">
      
    </div>