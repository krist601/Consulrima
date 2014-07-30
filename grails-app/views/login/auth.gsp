<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="main">
        <meta name="author" content="ThemeBucket">
 

        <title>Login</title>

    <!--Core CSS -->

        <link rel="stylesheet" href="${resource(dir: 'bs3/css', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-reset.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'font-awesome/css', file: 'font-awesome.css')}" type="text/css">

    <!-- Custom styles for this template -->
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style-responsive.css')}" type="text/css">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    </head>

    <body class="login-body">

        <div class="container">

            <form action='${postUrl}' method='POST' id='loginForm' class='form-signin' autocomplete='off'>
                <h2 class="form-signin-heading">
                    <img src="${resource(dir: 'images', file: 'logo2.jpg')}" alt="">
             
                </h2>
                <g:if test='${flash.message}'>
                    <div class='login_message'>${flash.message}</div>
                </g:if>
                <div class="login-wrap">
                    <div class="user-login-info">
                        <p>
                            <input type="text" class="form-control" name='j_username' id='username' placeholder="User ID" autofocus>
                        </p>
                        <p>
                            <input type="password" class="form-control" name='j_password' id='password' placeholder="Password">
                        </p>
                    </div>
                    <label class="checkbox">
                        <input type="checkbox" value="remember-me"> Recordarme
                        <span class="pull-right">
                            <a data-toggle="modal" href="#myModal"> Olvidé Contraseña</a>

                        </span>
                    </label>
                    <p>
                        <input class="btn btn-lg btn-login btn-block" id="submit" type="submit" value='${message(code: "springSecurity.login.button")}'/>
                    </p>
                    <div class="registration">
                        Don't have an account yet?
                        <a class="" href="registration.html">
                            Create an account
                        </a>
                    </div>

                </div>

          <!-- Modal -->
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Forgot Password ?</h4>
                            </div>
                            <div class="modal-body">
                                <p>Enter your e-mail address below to reset your password.</p>
                                <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                            </div>
                            <div class="modal-footer">
                                <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                                <button class="btn btn-success" type="button">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- modal -->

            </form>

        </div>



    <!-- Placed js at the end of the document so the pages load faster -->

    <!--Core js-->
        <script src="js/jquery.js"></script>
        <script src="bs3/js/bootstrap.min.js"></script>

    </body>
</html>
