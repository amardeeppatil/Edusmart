 <%@page import="java.util.List"%>
<%@page import="com.edusmartweb.edusmart.model.NotificationTb"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header col-lg-5">
      <h3 style="color:#fff;margin-top: 10px;">Welcome to Edusmart Academy</h3>
    </div>
    <div class="rht col-lg-6">
 <ul class="col-lg-12">
      <li class="p-left"><a href="home" data-toggle="tooltip" title="Home" data-placement="bottom" ><i class="fa fa-home fa-lg orange" ></i></a>
    
      </li>
          <li class="p-left"><a href="logout"  data-toggle="tooltip" title="Logoff" data-placement="bottom"><i class="fa fa-power-off fa-lg orange"></i> </a></li>
        
            
            <li class="dropdown p-left "><a class="dropdown-toggle nt" data-toggle="dropdown" href="#" role="button" aria-expanded="false" >
           
             <i class="fa fa-comments fa-lg orange"></i>   <span class="count">(${fn:length(sessionScope.messageList)})</span></a>
  <div class="dropdown-menu noti noti1 pull-left bdr" role="menu">
                        <div class="msg">  <a href="#"> <i class="fa fa-inbox"></i>  Inbox <span>(${fn:length(sessionScope.messageList)})</span></a>  <a href="#" class="pull-right show_hide"  >Send new message</a></div>
	
	
            <div class="well-update1 profile-new1  classes padd-inn"> <span class="arrow-new"><i class="fa fa-caret-up fa-3x orange"></i></span>
              <div class="content message-box massage-inner"> 
          
   <c:forEach items="${sessionScope.messageList}" var="msgObj">  
                <div class="col-lg-2 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> </div>
                <div class=" events">
                  <h4 class="margin-top"><span class="pull-right"><c:out value=" ${msgObj.date} "/></span></h4>
                  <p class="margin-bottom"><c:out value="${msgObj.subject}"/></p>
                   <h4 class="margin-top pull-right"> <span class=""><em><a href="mailto:">Forword to your email</a></em></span></h4>
                 
                   <br>
                  <div class="clearfix"></div>
                </div>
          </c:forEach>           
                            
              </div>
            </div>
      
          </div>
               </li>
        
               <li class="dropdown p-left "><a class="dropdown-toggle nt" data-toggle="dropdown" href="#" role="button" aria-expanded="false" >
               <i class="fa fa-bell fa-lg orange"></i>   <span class="count">(${fn:length(sessionScope.notificationList)}) </span></a>
               <div class="dropdown-menu noti pull-left bdr" role="menu">
         <div class="well-update1 profile-new1  classes ">
          <span class="arrow-new"></span>
          <div class="content">
           <h4><i class="fa fa-bell "></i></span>  Notification    <span></span><span class="pull-right see-all"><a href="allNotification" style="color:#E06D09;" data-toggle="tooltip" title="See all" data-placement="bottom">See All </a></span></h4><hr>
        
           <c:if test="${not empty sessionScope.notificationList}">
             <c:forEach var="notificationListObj" items="${sessionScope.notificationList}" varStatus="status">
              <div class="col-lg-2 col-sm-2 col-xs-2 col-md-2 events"> <img alt="" src="entireApp/images/user.png" class="img-responsive"> 
           </div>
              <div class=" events" onclick="allNotification()">
            <h4 class="margin-top"><c:out value="${notificationListObj.notificationBy}"/></h4><span class="pull-right"> <c:out value="${notificationListObj.notificationDate}"/> </span>
        
            <p ><c:out value="${notificationListObj.notificationContent}"/> </p>
           
          <div class="clearfix"></div>
         
         </div>
          
             <hr>
             </c:forEach>
          </c:if>
       
        
          </div>
        </div>
     
       
    </div>
               </li>
 
 
  <li class="col-md-8">
    <span id="custom-search-input " class="col-md-12 col-sm-8 col-xs-8 search">
                <span class="input-group ">
                    <input type="text" class="form-control input-lg1" placeholder="Edusmart academy...">
                    <span class="input-group-btn">
                        <button class="btn btn-info1 btn-lg1" type="button">
                            <i class="glyphicon glyphicon-search "></i>
                        </button>
                    </span>
                </span>
            </span>
  </li>
          
 
   <li class=""> <img src="entireApp/images/symbol.png"  class="ic"></li>
 
          </ul>
 
 </div>
   
  </div>
</nav>

<script>
function allNotification(){
window.location.href="allNotification";
	
}


</script>