<%@page import="org.apache.struts2.components.ElseIf"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@page import="java.util.List"%>
<%@page import="com.edusmart.dao.NotificationTb"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 
   <div data-example-id="togglable-tabs" role="tabpanel" class=" bs-example-tabs tab	">
    <ul role="tablist" id="myTab">
          <li class="" role="presentation">Notifications <i class="fa fa-long-arrow-right"></i><br>
          <strong>2015</strong>
</li>

    </ul>
    <div class="clearfix"></div>
    <hr>
 
    <div class="well-update1 profile-new1  classes padd-inn"> 
               
            
              <div class="  message-box massage-inner">
              
              
              <fmt:formatDate var="year" value="${notificationListObj.notificationDate}" pattern="yyyy" />
               
              <%
                 String tempMonth=null; 
                 int cnt=0;
              
              %>
    <c:if test="${not empty sessionScope.notificationList}">
     <h3>July</h3>
           <c:forEach var="notificationListObj" items="${sessionScope.notificationList}" varStatus="status">
            <fmt:parseDate value="${notificationListObj.notificationDate}" var="dateObject" pattern="dd-MMMM-yyyy hh:mm a" />
                        
            
             <div class="col-lg-1 col-sm-3 col-xs-3 col-md-3 events"> <img alt="" src="images/user.png" class="img-responsive"> </div>
              <div class=" events">
                  <h4 class="margin-top"><c:out value="${notificationListObj.notificationBy}"/> <span class="pull-right">
                   <c:out value="${notificationListObj.notificationDate}"/> </span></h4>
                  <p ><c:out value="${notificationListObj.notificationContent}"/> </p>
                  <div class="clearfix"></div>
                </div>
          
             <hr>
           
              </c:forEach>
           </c:if>
              
              </div>
                <div class="clearfix"></div>
            </div>
          </div>
  
 
 
      
    