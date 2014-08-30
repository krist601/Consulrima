<%@ page import="user.SecAppUser" %>

<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- start: Meta -->
        <meta charset="utf-8">
        <meta name="layout" content="main"/>

        <title></title> 

<!-- end: Meta -->

<!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- end: Mobile Specific -->

<!-- start: Facebook Open Graph -->
        <meta property="og:title" content=""/>
        <meta property="og:description" content=""/>
        <meta property="og:type" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:image" content=""/>
        <!-- end: Facebook Open Graph -->

    <!-- start: CSS -->
        <link href="${resource(dir: 'bs3/css', file: 'bootstrap.css')}" rel="stylesheet">
        <link href="${resource(dir: 'css', file: 'style-responsive.css')}" rel="stylesheet">
        <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Boogaloo">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">
        <!-- end: CSS -->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


    </head>
    <body>




<!--start: Wrapper-->
        <div id="wrapper">

<!--start: Container -->
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="recent-act">
                                <h1>Registro de Trabajadores </h1>
                            </div>

                        </header>
                        <div class="panel-body">
                            <h4>
                                Bienvenido, ¡ ${SecAppUser.findByUsername(sec.loggedInUserInfo(field:'username')).name} !
                            </h4>
                        </div>
                    </section>
                </div>
            </div>
            
             <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                     
                        <div class="panel-body">
                            
                        </div>
                    </section>
                </div>
            </div>

        </div>
        <!-- end: Wrapper  -->			




    </body>
</html>
