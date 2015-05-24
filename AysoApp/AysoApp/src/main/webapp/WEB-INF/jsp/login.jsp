<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/head.jsp" %> 
<body class="login-page">
        <!-- Start login container -->
        <div class="container login-container">
            <div class="login-panel panel panel-default plain animated bounceIn">
                <!-- Start .panel -->
                <div class="panel-heading">
                    <h4 class="panel-title text-center">
                        AysoApp Login
                    </h4>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal mt0" action="login" id="login-form" role="form">
                        <div class="form-group">
                            <div class="col-lg-12">
                                <div class="input-group input-icon">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="text" name="email" id="email" class="form-control" value="admin@dynamic.com" placeholder="Your email ...">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12">
                                <div class="input-group input-icon">
                                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                    <input type="password" name="password" id="password" class="form-control" value="somepass" placeholder="Your password">
                                </div>
                                <span class="help-block text-right"><a href="#">Forgot password?</a></span> 
                            </div>
                        </div>
                        <div class="form-group mb0">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-8">
                                
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-4">
                                <button class="btn btn-default pull-right" type="submit">Login</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer gray-lighter-bg bt">
                    <!--<h4 class="text-center"><strong>Don`t have an account ?</strong> </h4>-->
                    <p class="text-center"><a href="register.html" class="btn btn-primary">Create account</a>
                    </p>
                </div>
            </div>
            <!-- End .panel -->
        </div>
        <!-- End login container -->
        <div class="container">
            <div class="footer">
                <p class="text-center">&copy;2015 Copyright AYSO. All right reserved !!!</p>
            </div>
        </div>
        <%@ include file="/WEB-INF/jsp/jsLogin.jsp" %>
    </body>
</html>