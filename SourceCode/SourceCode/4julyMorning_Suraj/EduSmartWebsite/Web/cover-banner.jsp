 <%@ taglib prefix="s" uri="/struts-tags"%>
 
 <script>
	function readProfileURL(input) {
		
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$(".profile-pic").attr('src', e.target.result).width(150)
						.height(150);
			};
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>


<script>
	function readCoverpicURL(input) {
		
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$(".cover-pic").attr('src', e.target.result).width(949)
						.height(299);
				
			};
			reader.readAsDataURL(input.files[0]);
		}

		alert($("#inputImage").val());
		
		$.getJSON('uploadImage', {
			fileName : $("#inputImage").val()
			
		}, function(jsonResponse) {
			$.each(jsonResponse.resultMap, function(key, value) {
				
			alert("success");

			});
		}); 
     
		
	}
</script>
 
 <%-- <%
					if (user!= null) {
						if (user.getProfileImage() == null) {
					%>
					<img alt="Profile Image" src="img/default_profile_pic.png"
						class="profileImg"
						style="width: 167px; height: 167px; position: relative; bottom: 0px; padding-left:10px;">
					<%
						} else {
					%>
					<img alt="Profile Image" src="<%=user.getProfileImage()%>"
						class="profileImg"
						style="width: 167px; height: 171px; position: relative; bottom: 0px; padding-left:10px;">
					<%
						}
					}
					%> --%>

<div class="panel-new">
   
                   <a href="#" class="btn btn-xs btn-primary pull-left" style="margin:10px;position:absolute;">
                 <span class=" btn-file "> <i class="fa fa-camera " style="color:#fff;"></i>
                    Change cover   <s:file name="userProfileTB.bannerFileUploadFileName" id="inputImage" onchange="readCoverpicURL(this);" /> </span></a>
                    
                    
                    
                    <img class="pic profile-pic " src="images/profile.jpg" alt="...">
                   
                    <div class="name">
                    <div style="z-index:999">  <span class=" btn-file photo-icon" > <a href="#"><i class="fa fa-camera "></i></a>
            <s:file name="user.ProfileImage"
						onchange="readProfileURL(this);"/></div>
                    <small><s:property value="user.FName" /></small><br><span class="pull-right"><s:property value="user.CCity" /></span></div>
                     </span>
                  <img class="cover-pic" src="images/1.jpg" width="100%">
                </div>


     <div class="nav">
        <div class="col-xs-offset-3">
          <ul class="nav navbar-nav posi">
           
            <li class="active nav1"><s:a action="academyProfile">Timeline</s:a></span></li>
            <li class="nav1"><a href="aboutPage">About</a><span></span></li>
            <li class="nav1"><s:a action="facultyProfile">Faculty</s:a></span></li>
            <li class="nav1"><a href="#"> Center</a><span></span></li>
               <li class="nav1"><s:a action="show">News</s:a><span></span></li>
             <li role="presentation" class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
      More.. <span class="caret"></span>
    </a>
    <ul class="dropdown-menu" role="menu">
         <li><a href="#"><i class="fa fa-picture-o"></i>  Gallery</a></li>
         <li><a href="#"><i class="fa fa-pencil-square-o"></i>  Reviews</a></li>
         <li><a href="events.action"><i class="fa fa-bullhorn"></i>  Events</a></li>
         <li><a href="#"><i class="fa fa-folder-open"></i>  Files</a></li>
           <li><a href="#" ><i class="fa fa-inbox"></i>  Report</a></li>
    </ul>
  </li> 
  <span class="viewer dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"><i class="fa fa-eye fa-lg" style="color:#fff;"></i></a>
    
      
      <ul class="dropdown-menu pull-right width1" role="menu">
         <li><a href="#"> Academy</a></li>
         <li><a href="#"> Center</a></li>
         <li><a href="#"> Student</a></li>
         
    </ul>
     
  </span>
  <span class="pull-right setting dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false"> <i class="fa fa-cog fa-lg"></i></a>
  <div class="dropdown-menu width" role="menu">
       
   <form role="search" class="navbar-form navbar-left">
   <button class="btn btn-sm  btn-primary" type="submit">Generate</button>
            <div class="form-group">
              <input type="text" placeholder="Add code here" class="">
            </div>
            
             <button class="btn btn-sm btn-success" type="submit">Confirm</button>
          </form>  
       
    </div>
  
  </span>
          </ul>
           
         

        </div>
      </div>
      
        <%--  
                          
                    <s:form action="uploadImage.action" method="post" enctype="multipart/form-data">
                      <s:file name="userProfileTB.bannerFileUploadFileName" id="imgData" label="User Image" size="10"/>
                      <s:submit value="Upload" align="center" />
                     </s:form>
       Uploaded Image:
    <br/>
    <img src=""/>ss<s:property value="userProfileTB.userImageFileName"/>ss
    
    
 
<script>
 
     function uploadImage(){

$.ajax({
	   type: "POST",
	   url: "uploadImage.action",
	   data: "",
	   success: function(html){    
		   alert("call upload1");
	
	   },
	   beforeSend:function()
	   {
		   alert("call upload2");
	   }
	  });


    	      }

    </script>  --%>