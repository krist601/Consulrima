<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />


    </head>

    <body>



    <!--main content start-->

        <!-- page start-->

        <div class="row">
            <div class="col-md-12">
                <section class="panel">
                
                    <div class="panel-body profile-information">
                            <g:if test="${flash.message}">
                        <div class="alert alert-info fade in"><strong>${flash.message}</strong> </div>
                            </g:if>
                            <g:hasErrors bean="${employeeInstance}">
                        <ul class="alert alert-block alert-danger fade in" role="alert">
                            <g:eachError bean="${employeeInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                </g:eachError>
                        </ul>
                    </g:hasErrors>
                        <div class="col-md-3">
                            <div class="profile-pic text-center">
                                <img src="${createLink(controller:'employee', action:'showImage', id: employeeInstance?.id)}" alt=""/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="profile-desk">
                                <h2 style="font-size: 45px;">${employeeInstance?.name} ${employeeInstance?.lastName}</h2>
                                <h3><span class="text-muted" style="color: #9bcf00"><g:if test="${employeeInstance?.occupation}">${employeeInstance?.occupation?.occupationName}</g:if><g:else>Sin cargo Asignado</g:else></span></h3><br>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="profile-statistics">
                                    <p style="margin-bottom: 0px; margin-top:10px; color: #9bcf00">Cliente</p>
                                        <h1 style="margin-top:0px;margin-bottom: 0px;"><g:if test="${employeeInstance?.client}">${employeeInstance?.client}</g:if><g:else>No Asignado</g:else></h1>
                                    <p style="margin-bottom: 0px; margin-top:10px; color: #9bcf00">Cédula</p>
                                        <h1 style="margin-top:0px;margin-bottom: 0px;">${employeeInstance?.cedula}</h1>
                                <p style="margin-bottom: 0px; margin-top:10px; color: #9bcf00">Estatus</p>
                                <h1 style="margin-top:0px;margin-bottom: 0px;"><g:if test="${employeeInstance?.dischargeDate}">Retirado</g:if><g:else>Activo</g:else></h1>

                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-md-12">
                <section class="panel">
                    <header class="panel-heading tab-bg-dark-navy-blue">
                        <ul class="nav nav-tabs nav-justified ">
                            <li class="active">
                                <a data-toggle="tab" href="#overview">
                                    <strong>  Datos Personales</strong>
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#job-history">
                                   <strong> Datos Laborales </strong>
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#contacts">
                                   <strong> Antigüedad</strong>
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#advances">
                                   <strong> Adelantos </strong>
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#load">
                                    <strong>Préstamos</strong>
                                </a>
                            </li>
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content tasi-tab">
                            <div id="overview" class="tab-pane active">
                                <div class="row">
                                    <center>
                                        <div style="width: 90%;">

                                            <table class="table table-invoice" >

                                                <tbody>
                                                    <tr>
                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Nombre</strong></p></td>
                                                        <td style="background-color: #f1f1f7;">${employeeInstance?.name} ${employeeInstance?.lastName}</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Cédula</strong></p></td>
                                                        <td style="background-color: #f1f1f7;">${employeeInstance?.cedula}</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Correo</strong></p></td>
                                                        <td style="background-color: #f1f1f7;">${employeeInstance?.email}</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Género<strong></p></td>
                                                        <td style="background-color: #f1f1f7;">${employeeInstance?.gender}</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Fecha de Nacimiento</strong></p></td>
                                                        <td style="background-color: #f1f1f7;"><g:formatDate format="dd MMMM yyyy" date="${employeeInstance?.bornDate}"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Dirección</strong></p></td>
                                                        <td style="background-color: #f1f1f7;">${employeeInstance?.address}</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Observaciones</strong></p></td>
                                                        <td style="background-color: #f1f1f7;">${employeeInstance?.observation}</td>
                                                    </tr>

                                                </tbody>
                                            </table>

                                        </div>
                                        <a href="${createLink(controller:'employee', action:'edit',id:employeeInstance?.id)}" class="btn btn-info" style="margin-left: 20px; margin-bottom: 20px;">Editar Datos Personales</a>
                                    </center>

                                </div>
                            </div>
                            <div id="job-history" class="tab-pane ">
                                <div class="row">
                                    <div class="col-md-12">

                                        <center>
                                            <div style="width: 93%;">
                                                <table class="table table-invoice" >

                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Talla de Camisa</strong></p></td>
                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.shirtSize}</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Talla de Pantalón</strong></p></td>
                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.pantSize}</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Talla de Zapatos</strong></p></td>
                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.shoesSize}</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Observaciones</strong></p></td>
                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.employmentDataObservation}</td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </center>

                                        <div class="timeline-messages" style="margin-left: 5%;">
                                            <g:if test="${employeeInstance?.allocation}">
                                                <g:each in="${employeeInstance?.allocation}" var="item">
                                                    <g:if test="${item}">
                                                        <div class="msg-time-chat">
                                                            <div class="message-body msg-in">
                                                                <span class="arrow"></span>
                                                                <div class="text">
                                                                    <div class="first">
                                                                        <g:formatDate format="dd MMMM yyyy" date="${item.allocationDate}"/>
                                                                    </div>
                                                                    <g:if test="${item.allocationType.toString().equals("Shirt")}">
                                                                        <div class="second bg-blue">
                                                                            <g:if test="${item.amount.equals(1)}">
                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}" style="color: white;">Entregada ${item.amount} camisa talla ${item.size}</a>
                                                                            </g:if>
                                                                            <g:else>
                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}" style="color: white;">Entregadas ${item.amount} camisas talla ${item.size}</a>
                                                                            </g:else>
                                                                        </div>
                                                                    </g:if>
                                                                    <g:if test="${item.allocationType.toString().equals("Pant")}">
                                                                        <div class="second bg-terques">
                                                                            <g:if test="${item.amount.equals(1)}">
                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}" style="color: white;">Entregado ${item.amount} pantalon talla ${item.size}</a>
                                                                            </g:if>
                                                                            <g:else>
                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}" style="color: white;">Entregados ${item.amount} pantalones talla ${item.size}</a>
                                                                            </g:else>
                                                                        </div>
                                                                    </g:if>
                                                                    <g:if test="${item.allocationType.toString().equals("Shoes")}">
                                                                        <div class="second bg-purple">
                                                                            <g:if test="${item.amount.equals(1)}">
                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}" style="color: white;">Entregados ${item.amount} par de zapatos talla ${item.size}</a>
                                                                            </g:if>
                                                                            <g:else>
                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}" style="color: white;">Entregados ${item.amount} pares de zapatos talla ${item.size}</a>
                                                                            </g:else>
                                                                        </div>
                                                                    </g:if>
                                                                    <g:if test="${item.allocationType.toString().equals("Other")}">
                                                                        <div class="second bg-green">
                                                                            <g:if test="${item.amount.equals(1)}">
                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}" style="color: white;">Entregado ${item.amount} ${item.otherType} talla ${item.size}</a>
                                                                            </g:if>
                                                                            <g:else>
                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}" style="color: white;">Entregados ${item.amount} ${item.otherType}s talla ${item.size}</a>
                                                                            </g:else>
                                                                        </div>
                                                                    </g:if>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </g:if>
                                                </g:each>
                                            </g:if>
                                            <div class="msg-time-chat">
                                                <div class="message-body msg-in">
                                                    <span class="arrow2"></span>
                                                    <div class="text">
                                                        <div class="second bg-green" style="width: 180px;">
                                                            <a href="${createLink(controller:'allocation', action:'create', params:[foo:employeeInstance?.id])}" style="color: white;">Agregar nueva Dotación</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <center>
                                            <a href="${createLink(controller:'employee', action:'editAllocation',id:employeeInstance?.id)}" class="btn btn-info" style="margin-left: 20px; margin-bottom: 20px;">Editar Datos Laborales</a>
                                        </center>
                                    </div>
                                </div>
                            </div>
                            <div id="contacts" class="tab-pane ">                       
                                <div class="row">
                                    <div class="col-md-12">
                                        <center>
                                            <div style="width: 90%;">

                                                <table class="table table-invoice" >

                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Fecha de Ingreso</strong></p></td>
                                                            <td style="background-color: #f1f1f7;"><g:formatDate format="dd MMMM yyyy" date="${employeeInstance?.admissionDate}"/></td>
                                                        </tr>
                                                        <g:if test="${employeeInstance?.dischargeDate}">
                                                            <tr>
                                                                <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Fecha de Egreso</strong></p></td>
                                                                <td style="background-color: #f1f1f7;"><g:formatDate format="dd MMMM yyyy" date="${employeeInstance?.dischargeDate}"/></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Antigüedad</strong></p></td>
                                                                <td style="background-color: #f1f1f7;">${Employee.antiquityTimeDischargeDate(employeeInstance?.admissionDate, employeeInstance?.dischargeDate)}</td>
                                                            </tr>
                                                        </g:if>
                                                        <g:else>
                                                            <tr>
                                                                <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Antigüedad</strong></p></td>
                                                                <td style="background-color: #f1f1f7;">${Employee.antiquityTimeToday(employeeInstance?.admissionDate)}</td>
                                                            </tr>
                                                        </g:else>
                                                        <g:if test="${employeeInstance?.salary}">
                                                            <tr>
                                                                <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Salario</strong></p></td>
                                                                <td style="background-color: #f1f1f7;">${employeeInstance?.salary} BsF</td>
                                                            </tr>
                                                        </g:if>
                                                        <g:else>
                                                            <g:if test="${employeeInstance?.occupation}">
                                                                <tr>
                                                                    <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Salario</strong></p></td>
                                                                    <td style="background-color: #f1f1f7;">${employeeInstance?.occupation?.salary} BsF</td>
                                                                </tr>

                                                            </g:if>
                                                            <g:else>
                                                                <tr>
                                                                    <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Salario</strong></p></td>
                                                                    <td style="background-color: #f1f1f7;">No tiene salario asignado</td>
                                                                </tr>
                                                            </g:else>
                                                        </g:else>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Observaciones</strong></p></td>
                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.antiquityObservation}</td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                            <a href="${createLink(controller:'employee', action:'editAntiquity',id:employeeInstance?.id)}" class="btn btn-info" style="margin-left: 20px; margin-bottom: 20px;">Editar Antigüedad</a>
                                        </center>

                                    </div>
                                </div>
                            </div>
                            <div id="advances" class="tab-pane ">                     
                                <div class="row">
                                    <div class="col-md-12">
                                        <div style="width: 90%;">
                                            <div class="timeline-messages" style="margin-left: 5%;">
                                                <g:if test="${employeeInstance?.advances}">
                                                    <g:each in="${employeeInstance?.advances}" var="item">
                                                        <div class="msg-time-chat">
                                                            <div class="message-body msg-in">
                                                                <span class="arrow"></span>
                                                                <div class="text">
                                                                    <div class="first">
                                                                        <g:formatDate format="dd MMMM yyyy" date="${item.date}"/>
                                                                    </div>
                                                                    <div class="second bg-green">
                                                                        <a href="${createLink(controller:'advances', action:'show', id:item.id)}" style="color: white;">${item.amount} BsF</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </g:each>
                                                </g:if>
                                                <div class="msg-time-chat">
                                                    <div class="message-body msg-in">
                                                        <span class="arrow2"></span>
                                                        <div class="text">
                                                            <div class="second bg-green" style="width: 170px;">
                                                                <a href="${createLink(controller:'advances', action:'create', params:[foo:employeeInstance?.id])}" style="color: white;">Agregar nuevo Avance</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="load" class="tab-pane ">                     
                                <div class="row">
                                    <div class="col-md-12">
                                        <center>
                                            <div style="width: 90%;">

                                                <table class="table table-invoice" >
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Total Deudor</strong></p></td>
                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.getTotalLoadsNegative(employeeInstance?.id)} BsF</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Total Abonado</strong></p></td>
                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.getTotalLoadsPositive(employeeInstance?.id)} BsF</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Tota</strong></p></td>
                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.getTotalLoadsPositive(employeeInstance?.id)-employeeInstance?.getTotalLoadsNegative(employeeInstance?.id)} BsF</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </center>

                                        <div class="timeline-messages" style="margin-left: 5%;">
                                            <g:if test="${employeeInstance?.load}">
                                                <g:each in="${employeeInstance?.load}" var="item">
                                                    <div class="msg-time-chat">
                                                        <div class="message-body msg-in">
                                                            <span class="arrow"></span>
                                                            <div class="text">
                                                                <div class="first">
                                                                    <g:formatDate format="dd MMMM yyyy" date="${item.date}"/>
                                                                </div>
                                                                <g:if test="${item.amount<0}">
                                                                    <div class="second bg-red">
                                                                        <a href="${createLink(controller:'load', action:'show', id:item.id)}" style="color: white;">${item.amount} BsF</a>
                                                                    </div>
                                                                </g:if>
                                                                <g:else>
                                                                    <div class="second bg-green">
                                                                        <a href="${createLink(controller:'load', action:'show', id:item.id)}" style="color: white;">${item.amount} BsF</a>
                                                                    </div>
                                                                </g:else>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </g:each>

                                            </g:if>
                                            <div class="msg-time-chat">
                                                <div class="message-body msg-in">
                                                    <span class="arrow2"></span>
                                                    <div class="text">
                                                        <div class="second bg-green" style="width: 180px;">
                                                            <a href="${createLink(controller:'load', action:'create', params:[foo:employeeInstance?.id])}" style="color: white;">Agregar nuevo Prestamo</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- page end-->

 <!--main content end-->



<!-- Placed js at the end of the document so the pages load faster -->

<!--Core js-->
        <script src="js/jquery.js"></script>
        <script src="bs3/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
        <!--Easy Pie Chart-->
        <script src="js/easypiechart/jquery.easypiechart.js"></script>
        <!--Sparkline Chart-->
        <script src="js/sparkline/jquery.sparkline.js"></script>
        <!--jQuery Flot Chart-->
        <script src="js/flot-chart/jquery.flot.js"></script>
        <script src="js/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="js/flot-chart/jquery.flot.resize.js"></script>
        <script src="js/flot-chart/jquery.flot.pie.resize.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&AMP;sensor=false"></script>

<!--common script init for all pages-->
        <script src="js/scripts.js"></script>
        <script>

            function initialize() {
            var myLatlng = new google.maps.LatLng(-37.815207, 144.963937);
            var mapOptions = {
            zoom: 15,
            scrollwheel: false,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: 'Hello World!'
            });
            }
            google.maps.event.addDomListener(window, 'load', initialize);

            $('.contact-map').click(function(){

            //google map in tab click initialize
            function initialize() {
            var myLatlng = new google.maps.LatLng(-37.815207, 144.963937);
            var mapOptions = {
            zoom: 15,
            scrollwheel: false,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: 'Hello World!'
            });
            }
            google.maps.event.addDomListener(window, 'click', initialize);
            });

        </script>

        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>

    </body>
</html>



