<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Edusmart</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
   <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">
<script>
$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-title').text('New message to ' + recipient)
  modal.find('.modal-body input').val(recipient)
})
</script>
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
  <script src="js/modal.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
     
         <h3 style="color:#fff;margin-top: 10px;">Edusmart</h3>
        </div>
        <!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
  <div class="container-fluid">
    <div class="col-lg-8 ">
      <div class="banner-profile"> <span class=" btn-file upload-icon"> <i class="fa fa-camera " style="color:#fff;"></i>
        <input type="file">
        </span>
        <div class="col-lg-4 col-sm-4 col-xs-4 ">
          <div class="profile"> <span class=" btn-file photo-icon"> <a href="#"><i class="fa fa-camera "></i></a>
            <input type="file">
            </span> <img src="images/profile.jpg " class="pull-left" id=""> </div>
        </div>
        
        
        <!--  -->
     
        
        <!--  -->
        
        
        <img src="images/1.jpg"> </div>
      <div class="nav">
        <div class="col-xs-offset-3">
          <ul class="nav navbar-nav">
            <div class="navi">
              <h2>Edusmart</h2> <s:file name="user.ProfileImage"
						onchange="readProfileURL(this);" />
            </div>
            <li class="active"><a href="home.action">Timeline</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="product.jsp">Products</a></li>
            <li><a href="photos.html">Photos</a></li>
          </ul>
        </div>
      </div>
      
      
     <div class="col-md-4 left-none"  > <br>
      <form class="well form-inline classes">
        <h4> <i class="fa fa-book"></i> English Speaking <span> Edusmart Classes</span></h4>
        <p style="text-align:justify"> Batches start from 1 June 2015. Batch start at morning<br>
        </p>
        <h4><i class="fa fa-book"></i> English Speaking <span> Edusmart Classes</span></h4>
        <p style="text-align:justify"> Batches start from 1 June 2015. Batch start at morning<br>
        </p>
        <h4><i class="fa fa-book"></i> English Speaking <span> Edusmart Classes</span></h4>
        <p style="text-align:justify"> Batches start from 1 June 2015. Batch start at morning<br>
        </p>
        
        <!--<input type="text" class="input-large" style="font-size:15px;" placeholder="Email">
		<button type="submit" class="btn btn-large" style="color:#000; font-weight:bold; ">Subscribe</button> -->
      </form>
      <div class=" well-new classes" >
        <h4> STUDENTS <span>540</span></h4>
        <hr>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="clearfix"></div>
      </div>
      <br>
      <div class=" well-new classes" >
        <h4> FACULTY <span>40</span></h4>
        <hr>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <img src="images/user.png" class="featurette-image img-responsive" id="circle">
          <h2>John Smith</h2>
        </div>
        <div class="clearfix"></div>
      </div>
      <br>
      <div id="myCarousel" class="carousel slide">
        <div class="carousel-inner">
          <div class="item active">
            <div class="caption">
              <h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</h4>
              <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,<br>
                sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
            </div>
          </div>
          <div class="item">
            <div class="caption">
              <h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</h4>
              <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod <br>
                tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
            </div>
          </div>
          <div class="item">
            <div class="caption">
              <h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</h4>
              <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut<br>
                labore et dolore magna aliquyam erat, sed diam voluptua. </p>
            </div>
          </div>
        </div>
        <!-- Indicators --> 
        
      </div>
      <form>
        <div class="input-group">
          <div class="input-group-btn">
            <button class="btn btn-default">+1</button>
            <button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>
          </div>
          <input type="text" class="form-control" placeholder="Add a latest news..">
        </div>
      </form>
      <div class="clearfix"></div>
     
    </div>
    
    <br>
    
    <div class="col-md-8">
          <h2>Photos</h2>
        <div class="row text-center">

             <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title pull-left" id="exampleModalLabel"><i class="fa fa-pencil-square"></i> Add New Photo </h4>
     <br>
      </div>
      <div class="modal-body">
        <div class="panel panel-default">
          
            <div class="panel-body">
              <div class="">
                               <textarea placeholder="What's on your mind ?" style="height: 200px; overflow: hidden;" class="form-control message" id="status_message" rows="10" cols="40" name="message"></textarea>

              </div>
            </div>
            <div class="panel-footer">
              <div class="row">
                <div class="col-md-7">
                  <div class="form-group">
                    <div class="btn-group">
                      <button class="btn btn-primary btn-sm" type="button"><i class="icon icon-picture"></i>Add Photo</button>
                    </div>
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="form-group">
                    <select class="form-control privacy-dropdown pull-left input-sm" name="privacy" style="  margin-right: 10px;">
                      <option selected="selected" value="1">Public</option>
                      <option value="2">Only my friends</option>
                      <option value="3">Only me</option>
                    </select>
                    <input type="submit" class="btn btn-primary btn-sm" value="Post" name="submit">
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
     
    </div>
  </div>
</div>

            <div class="col-md-4 col-sm-6 hero-feature" >
                <div class="thumbnail" style="background:#ccc;">
                  
                    <div class="caption"><br>
                      <a href="#" type="" data-toggle="modal" data-target="#exampleModal" data-whatever=""> 
<i class="fa fa-plus fa-3x"></i>
 </a>
                    
                      
 <h4>Add New Photo</h4>
                     
                    </div>
                </div>
            </div>
    

            <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/b.jpg" alt="">
                    
                </div>
            </div>

            <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/2.jpg" alt="">
                    
                </div>
            </div>

            

        </div>
        
        <div class="row text-center">

            <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/4.jpg" alt="">
                    
                </div>
            </div>

            <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/3.jpg" alt="">
                    
                </div>
            </div>

            <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/2.jpg" alt="">
                    
                </div>
            </div>

            

        </div>
      
        </div>
    
    </div>
    
       <br>
    <div class="col-md-2 well">
  
      <form class="well form-inline classes">
        <h4> <i class="fa fa-book"></i> English Speaking <span> Edusmart Classes</span></h4>
        <p style="text-align:justify"> Batches start from 1 June 2015. Batch start at morning<br>
        </p>
        <h4><i class="fa fa-book"></i> English Speaking <span> Edusmart Classes</span></h4>
        <p style="text-align:justify"> Batches start from 1 June 2015. Batch start at morning<br>
        </p>
        <h4><i class="fa fa-book"></i> English Speaking <span> Edusmart Classes</span></h4>
        <p style="text-align:justify"> Batches start from 1 June 2015. Batch start at morning<br>
        </p>
        
        <!--<input type="text" class="input-large" style="font-size:15px;" placeholder="Email">
		<button type="submit" class="btn btn-large" style="color:#000; font-weight:bold; ">Subscribe</button> -->
      </form>
      <div class=" well-new classes">
        <h4> STUDENTS <span>540</span></h4>
        <hr>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="clearfix"></div>
      </div>
      <br>
      <div class=" well-new classes">
        <h4> FACULTY <span>40</span></h4>
        <hr>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4 col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="col-md-3 col-xs-4   col-lg-4 firends"> <img id="circle" class="featurette-image img-responsive" src="images/user.png">
          <h2>John Smith</h2>
        </div>
        <div class="clearfix"></div>
      </div>
      <br>
      <div class="carousel slide" id="myCarousel">
        <div class="carousel-inner">
          <div class="item">
            <div class="caption">
              <h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</h4>
              <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr,<br>
                sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
            </div>
          </div>
          <div class="item">
            <div class="caption">
              <h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</h4>
              <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod <br>
                tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </p>
            </div>
          </div>
          <div class="item active">
            <div class="caption">
              <h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</h4>
              <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut<br>
                labore et dolore magna aliquyam erat, sed diam voluptua. </p>
            </div>
          </div>
        </div>
        <!-- Indicators --> 
        
      </div>
      <form>
        <div class="input-group">
          <div class="input-group-btn">
            <button class="btn btn-default">+1</button>
            <button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>
          </div>
          <input type="text" placeholder="Add a latest news.." class="form-control">
        </div>
      </form>
      <div class="clearfix"></div>
      <br>
      <div class="well">
        <form role="form" class="form-horizontal">
          <h4>What's New</h4>
          <div style="padding:14px;" class="form-group">
            <textarea placeholder="Update your status" class="form-control"></textarea>
          </div>
          <button type="button" class="btn btn-primary pull-right">Post</button>
          <ul class="list-inline">
            <li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
            <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
            <li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li>
          </ul>
        </form>
      </div>
      <div class="clearfix"></div>
   
     </div>
    
    <div class="col-md-2 ">
      <img src="images/add2.jpg" width="100%">
      <br> <br>
       <img src="images/add.jpg" width="100%">
      
    </div>
    
  </div>
</div>

   

      <hr>

      <footer>
        <p>&copy; Company 2014</p>
      </footer>
    


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <script>
	$('#myCarousel').carousel({
		interval:   4000
	});
</script>
<script>
	function readProfileURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$(".pull-left").attr('src', e.target.result).width(150)
						.height(150);
			};
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
  </body>
</html>
