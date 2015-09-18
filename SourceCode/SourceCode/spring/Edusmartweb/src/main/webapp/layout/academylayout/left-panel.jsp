<%@page import="com.edusmartweb.edusmart.model.*" %>
<%@page contentType="text/html" import="java.util.*"%>
<%@page import="com.edusmartweb.edusmart.dao.CommonController"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--  <%
	UserProfileTB user = UserProfileTB.class.cast(session
			.getAttribute("USER"));
%>
 --%>
<div class="col-md-4 left-none">
    
    <div class=" well-new classes well">
        <h4>  <span>342</span> visit +  <span>30</span> this week</h4>
       
        <div class="clearfix"></div>
      </div>
    
       
  <style type="text/css">
    .editable{ background:#EAEAEA}
  </style>
   
<script type="text/javascript">//<![CDATA[ 
$(window).load(function(){
	$('#edit_about').click(function(){
		var $div=$('#about_editdiv'), isEditable=$div.is('.editable');
	
		$('#about_editdiv').prop('contenteditable',!isEditable).toggleClass('editable');
		$('#edit_about').html('<p id="update"><i class="fa fa-thumb-tack fa-lg"></i></p>');
		$('#about_editdiv p').removeClass("more");
		$('#about_editdiv p .morelink').click();
		$('#about_editdiv p .morelink').html('');
		
	
	})
}); 

</script>


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

function editac(){

    var description=document.getElementById('AboutInfoId').innerHTML	
    var address=document.getElementById('AddressId').innerHTML	
    $.ajax({
    	   type: "POST",
    	   url: "saveDescription",
    	   data: "description="+description+"&address="+address,
    	   success: function(html){    
    	 
    	
    	   },
    	   beforeSend:function()
    	   {
    
    	   }
    	  });
}

    
</script>

  <div id="" class="well  slide classes carousel bd">



    <span style="float:right;margin-right: 11px;" id="edit1"><a href="#" data-toggle="tooltip" title="Edit" data-placement="bottom">
    <i class="fa fa-pencil blue"></i></a></span>  
        <span  style="display:none;float:right;margin-right: 11px;" id="done"><i class="fa fa-floppy-o blue" onclick="editac()"></i></span>
        <span style="float:right;margin-right: 11px;" ><a href="#" data-toggle="tooltip" title="Reset" data-placement="bottom">
        
        <i class="fa fa-repeat blue"></i></a></span>  
   <h4><i class="fa fa-user"></i>   ABOUT  <span></span></h4>
      <hr>
   
        <div class="panel-group">  
            <div class="panel panel-default" id="panel1">
      <div id="collapseOne" class="panel-collapse collapse in" >
      <div  class="panel-body" >
        <p class="comment more"><span id="AboutInfoId"><!-- <s:property value="user.AboutInfo" /> --></span></p>
	<div class="pull-left">
      
     <a href="https://www.google.com/maps/place/Prestige+Point,+Madhukar+Chimanrav+Potnis+Rd,+Sathe+Colony,+Shukrawar+Peth,+Pune,+Maharashtra+411002,+India/@18.508066,73.855106,14z/data=!4m2!3m1!1s0x3bc2c06d40145179:0x1f2266903f700574?hl=en-US" target="_blank"> <img src="entireApp/images/map.png" style="border:1px solid #ccc;padding:1px;margin:5px;height:80px;width:80px;"></a>
      </div>
        <p style="text-align:justify; margin-bottom: 0px;" >
           <span id="AddressId">
          <!--  <s:property value="user.PAddress1"/> -->
         </span>
        </p>
        
        </div>
      
</div>
     <p>
<i class="fa fa-phone"></i><!-- <s:property value="user.Contact"/> --></span><br>
 
<i class="fa fa-envelope"></i><!-- <s:property value="user.Email"/> -->
  <br>
    <i class="fa fa-globe"></i>  <a href="#"><!-- <s:property value="user.Website"/> --></a>
        </p>  
   </div></div></div>
        
       

 <div class="clearfix"></div>
	<div class=" well-new classes well carousel ">
	
<!-- Faculty List -->

		<h4>
			<i class="fa fa-users"></i> FACULTY <span> <!-- <s:property value="facultyList1.size()"></s:property> -->
			</span> <span class="pull-right see-all"><a href="registration.jsp"
				data-toggle="tooltip" title="Add faculty" data-placement="bottom"><i
					class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="#">See All</a></span>
		</h4>
		<hr>
		
		<div class="content ">
			
			 <c:forEach items="${facultyList}" var="facultyObj">     
				<div class="col-md-3 col-xs-4 col-lg-4 firends">
					<a href="facultyProfile">
						<img class="featurette-image img-responsive"
							src="entireApp/entireApp/images/user.png">
						<c:out value="${facultyObj.FName}" />
					</a>
				</div>
		  </c:forEach>
		
			
		</div>

		<div class="clearfix"></div>
	</div>
	
<!-- Academy List -->	

	<div class="carousel slide well-new classes well">
      
       <h4><i class="fa fa-hospital-o"></i>  COACHING  <span><!-- <s:property value="centerList1.size()"></s:property> --></span><span class="pull-right see-all"><a href="registration.jsp" data-toggle="tooltip" title="Add center" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;<a href="#">See All</a></span></h4>
       <hr>
       
		 <%--  <s:iterator value="centerList1">     
        <div class="col-md-3 col-xs-4 col-lg-4 firends">
        <s:a href="#"> <img class="featurette-image img-responsive" src="entireApp/entireApp/images/user.png">
        <img class="featurette-image img-responsive"src="<s:property value="ProfileImage" />">
        <s:property value="CCity" />
        </s:a>
        </div>
</s:iterator> --%>
<div class="content ">
				
			
       
        <div class="col-md-3 col-xs-4 col-lg-4 firends"><a href="#"> <img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Pune</h2></a>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"><a href="#"> <img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Dhule</h2></a>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"><a href="#"> <img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Nagar</h2></a>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Shirdi</h2></a>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Pune</h2></a>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Nashik</h2></a>
        </div>
          <div class="col-md-3 col-xs-4 col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Sangavi</h2></a>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Aundh</h2></a>
        </div>
          <div class="col-md-3 col-xs-4 col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Swarget</h2></a>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Kothrud</h2></a>
        </div>
          <div class="col-md-3 col-xs-4 col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Pune</h2></a>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/user.png">
          <h2>Aundh</h2></a>
        </div>
        
    
			</div> 
           	 <!-- Indicators --> 
     
      </div>
      
  <div class="clearfix"></div>
     <div class=" well-gallery classes carousel">
        <h4><i class="fa fa-picture-o"></i>  GALLERY <span>(120)</span><span class="pull-right see-all" ><a href="#" data-toggle="tooltip" title="Add photos" data-placement="bottom"><i class="fa fa-plus"></i></a>&nbsp;&nbsp;
 <a href="#">See All</a></span>
        </h4>
        <hr>
    <div class="content">
     <div class="col-md-3 col-xs-4 col-lg-4 firends"><a href="#"> <img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
       </a>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"><a href="#"> <img class="featurette-image img-responsive" src="entireApp/images/rec.jpg">
        </a>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"><a href="#"> <img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
         </a>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
         </a>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
        </a>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
         </a>
        </div> 
           <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
         </a>
        </div> 
           <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
         </a>
        </div> 
        
           <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
         </a>
        </div> 
        
           <div class="col-md-3 col-xs-4   col-lg-4 firends"> <a href="#"><img class="featurette-image img-responsive" src="entireApp/images/students.jpg">
         </a>
        </div> 
        
       </div>
     
        <div class="clearfix"></div>
      </div>
    </div>