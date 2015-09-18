<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>EduSmart | Log in</title>
        <meta http-equiv="Cache-control" content="no-cache">
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="bg-black" onload="window.history.forward(1);">

        <div class="form-box" id="login-box">
            <div class="header">Sign In</div>
            <form role="form" action="login" method="post">
                <div class="body bg-gray">
                	
                    <div class="form-group">
                        <input type="text" name="UserName" class="form-control" placeholder="User ID"
                         required="required"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="Password" class="form-control" placeholder="Password"
                         required="required"/>
                    </div>          
                    <div class="form-group">
                        <input type="checkbox" name="remember_me"/> Remember me
                    </div>
                </div>
                <div class="footer">                                                               
                     <button type="submit" class="btn bg-olive btn-block">Sign me in</button>
                </div>
            </form>
        </div>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>        
    </body>
</html>