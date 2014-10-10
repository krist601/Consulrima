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

            <form action='${postUrl}' method='POST' id='loginForm'  autocomplete='off'></form>
            <form action='../login/sendEmail' method='POST' id='forgotPassword'  autocomplete='off'></form>
                <div class='form-signin'>
                <h2 class="form-signin-heading">
                    <img src="${resource(dir: 'images', file: 'logo2.jpg')}" alt="">

                </h2>
                <g:if test="${flash.error}">
                    <div class="alert alert-block alert-danger fade in">Contraseña o Usuario Inválido</div>
                </g:if>
                <g:if test="${flash.message}">
                    <!--<div class="alert alert-info fade in">Contraseña o Usuario Invalido</div>-->
                    <div class="alert alert-block alert-danger fade in">Contraseña o Usuario Inválido</div>
                </g:if>
                <div class="login-wrap">
                    <div class="user-login-info">
                        <p>
                            <input type="text" form="loginForm" class="form-control" name='j_username' id='username' placeholder="User ID" autofocus required>
                        </p>
                        <p>
                            <input type="password" form="loginForm" class="form-control" name='j_password' id='password' placeholder="Password" required>
                        </p>
                    </div>
                    <label class="checkbox">
                        <input type="checkbox" value="remember-me"> Recordarme
                        <span class="pull-right">
                            <a data-toggle="modal" href="#myModal"> Olvidé Contraseña</a>

                        </span>
                    </label>
                    <p>
                        <input form="loginForm" class="btn btn-lg btn-login btn-block" id="submit" type="submit" value='${message(code: "springSecurity.login.button")}'/>
                    </p>

                </div>

          <!-- Modal -->
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">¿Olvidaste tu Contraseña?</h4>
                            </div>
                            <section>
                                
                                    <div class="modal-body">
                                        <p style="color: black;">Ingresa tu nombre de usuario y recibirás un correo con tu contraseña.</p>
                                        <input type="text" form="forgotPassword" name="email" placeholder="Usuario" autocomplete="off" class="form-control placeholder-no-fix">

                                    </div>
                                    <div class="modal-footer">
                                        <button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
                                        <input type="submit" form="forgotPassword"  class="btn btn-success" value="${message(code: 'Enviar', default: 'Enviar')}" />
                                    </div>
                            </section>
                        </div>
                    </div>
                </div>
                <!-- modal -->

            </div>

        </div>



    <!-- Placed js at the end of the document so the pages load faster -->

    <!--Core js-->
        <script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
        <script src="${resource(dir: 'bs3/js', file: 'bootstrap.min.js')}"></script>

    </body>
</html>
