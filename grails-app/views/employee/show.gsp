<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />

    </head>
    <body>
        <div class="row">
            <div class="col-md-12">
                <section class="panel">

                    <div class="panel-body profile-information">
                        <g:if test="${flash.message}">
                            <div class="alert alert-info fade in"><strong>${flash.message}</strong> </div>
                                </g:if>

                                <g:hasErrors bean="${employeeInstance}">
                                    <g:eachError bean="${employeeInstance}" var="error">
                                <div class="alert alert-block alert-danger fade in">
                                    <button data-dismiss="alert" class="close close-sm" type="button">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Error!</strong> <g:message error="${error}"/>
                                </div>
                            </g:eachError>
                        </g:hasErrors>
                        <div class="col-md-3">
                            <div class="profile-pic text-center">
                                <img src="${createLink(controller:'employee', action:'showImage', id: employeeInstance?.id)}" alt=""/> </br>
                                <div>
                                <g:form method="post" action="editPhoto">
                                <g:hiddenField name="id" value="${employeeInstance?.id}" />
                                <g:hiddenField name="version" value="${employeeInstance?.version}" />
                                <g:actionSubmit class="btn btn-info" action="editPhoto" value="Editar Foto" formnovalidate=""/>   
                                </g:form>
                                <g:form method="post" action="delete">
                                <g:hiddenField name="id" value="${employeeInstance?.id}" />
                                <g:hiddenField name="version" value="${employeeInstance?.version}" />
                                <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Eliminar Empleado')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />   
                                </g:form>
                                </div>
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
                                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Edad</strong></p></td>
                                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.age}</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Dirección</strong></p></td>
                                                                            <td style="background-color: #f1f1f7;">${employeeInstance?.address}</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Teléfonos</strong></p></td>
                                                                            <td style="background-color: #f1f1f7;">
                                                                            <g:each in="${employeeInstance?.phone}" var="item">
                                                                                    <a href="${createLink(controller:'phone', action:'show', id:item.id)}">${item.areaCode+"-"+item.phoneNumber+", "}</a>
                                                                            </g:each>
                                                                                    <a class="btn btn-info" href="${createLink(controller:'phone', action:'create', params:[foo:employeeInstance?.id])}">Agregar Teléfono</a>
                                                                            </td>
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

                                                                                    <center>
                                                                                        <h1>Lista de Dotaciones</h1>
                                                                                        <table class="table table-invoice" style="width: 70%;">
                                                                                            <tr>
                                                                                                <td style="width: 33%;text-align: center; background-color: #dbdbe0;"><strong>Tipo de Dotacion</strong></td>
                                                                                                <td style="width: 33%;text-align: center; background-color: #dbdbe0;"><strong>Cantidad</strong></td>
                                                                                                <td style="width: 33%;text-align: center; background-color: #dbdbe0;"><strong>Fecha de Entrega</strong></td>
                                                                                            </tr>
                                                                                            <g:if test="${employeeInstance?.allocation}">
                                                                                                <g:each in="${employeeInstance?.allocation}" var="item">
                                                                                                    <g:if test="${item}">
                                                                                                        <g:if test="${item.allocationType.toString().equals("Camisa")}">
                                                                                                            <tr>
                                                                                                                <td style="width: 33%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;">
                                                                                                                            <g:if test="${item.amount.equals(1)}">
                                                                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}">Camisa talla ${item.size}</a>
                                                                                                                            </g:if>
                                                                                                                            <g:else>
                                                                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}">Camisas talla ${item.size}</a>
                                                                                                                            </g:else>
                                                                                                                        
                                                                                                                    </p>
                                                                                                                </td>
                                                                                                                <td style="width: 33%;text-align: center; background-color: #f1f1f7;">${item.amount}</td>
                                                                                                                <td style="background-color: #f1f1f7;"><g:formatDate format="dd MMMM yyyy" date="${item.allocationDate}"/></td>
                                                                                                            </tr>
                                                                                                        </g:if>
                                                                                                        <g:if test="${item.allocationType.toString().equals("Pantalon")}">
                                                                                                            <tr>
                                                                                                                <td style="width: 33%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;">
                                                                                                                            <g:if test="${item.amount.equals(1)}">
                                                                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}">Entregado ${item.amount} pantalon talla ${item.size}</a>
                                                                                                                            </g:if>
                                                                                                                            <g:else>
                                                                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}">Entregados ${item.amount} pantalones talla ${item.size}</a>
                                                                                                                            </g:else>
                                                                                                                        
                                                                                                                    </p>
                                                                                                                </td>
                                                                                                                <td style="width: 33%;text-align: center; background-color: #f1f1f7;">${item.amount}</td>
                                                                                                                <td style="background-color: #f1f1f7;"><g:formatDate format="dd MMMM yyyy" date="${item.allocationDate}"/></td>
                                                                                                            </tr>
                                                                                                        </g:if>
                                                                                                        <g:if test="${item.allocationType.toString().equals("Zapatos")}">
                                                                                                            <tr>
                                                                                                                <td style="width: 33%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;">
                                                                                                                            <g:if test="${item.amount.equals(1)}">
                                                                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}">Par de zapatos talla ${item.size}</a>
                                                                                                                            </g:if>
                                                                                                                            <g:else>
                                                                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}">Pares de zapatos talla ${item.size}</a>
                                                                                                                            </g:else>
                                                                                                                        </strong>
                                                                                                                    
                                                                                                                </td>
                                                                                                                <td style="width: 33%;text-align: center; background-color: #f1f1f7;">${item.amount}</td>
                                                                                                                <td style="background-color: #f1f1f7;"><g:formatDate format="dd MMMM yyyy" date="${item.allocationDate}"/></td>
                                                                                                            </tr>
                                                                                                        </g:if>
                                                                                                        <g:if test="${item.allocationType.toString().equals("Otros")}">
                                                                                                            <tr>
                                                                                                                <td style="width: 33%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;">
                                                                                                                            <g:if test="${item.amount.equals(1)}">
                                                                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}">${item.otherType} talla ${item.size}</a>
                                                                                                                            </g:if>
                                                                                                                            <g:else>
                                                                                                                                <a href="${createLink(controller:'allocation', action:'show', id:item.id)}">${item.otherType}s talla ${item.size}</a>
                                                                                                                            </g:else>
                                                                                                                    </p>
                                                                                                                </td>
                                                                                                                <td style="width: 33%;text-align: center; background-color: #f1f1f7;">${item.amount}</td>
                                                                                                                <td style="background-color: #f1f1f7;"><g:formatDate format="dd MMMM yyyy" date="${item.allocationDate}"/></td>
                                                                                                            </tr>
                                                                                                        </g:if>

                                                                                                    </g:if>
                                                                                                </g:each>
                                                                                            </g:if>
                                                    
                                                    <tr><td></td><td class="second bg-green"><a href="${createLink(controller:'allocation', action:'create', params:[foo:employeeInstance?.id])}" style="color: white; text-align: center;">Agregar nueva Dotación</a></td><td></td></tr>
                                                                                        </table>
                                                                                    </center>
                                                                                        
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
                                                                                                            <td style="background-color: #f1f1f7;"><g:formatNumber number="${employeeInstance?.salary}" type="number"/> BsF</td>
                                                                                                        </tr>
                                                                                                    </g:if>
                                                                                                    <g:else>
                                                                                                        <g:if test="${employeeInstance?.occupation}">
                                                                                                            <tr>
                                                                                                                <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Salario</strong></p></td>
                                                                                                                <td style="background-color: #f1f1f7;"><g:formatNumber number="${employeeInstance?.occupation?.salary}" type="number"/> BsF</td>
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
                                                                                                    <g:if test="${item}">
                                                                                                        <div class="msg-time-chat">
                                                                                                            <div class="message-body msg-in">
                                                                                                                <span class="arrow"></span>
                                                                                                                <div class="text">
                                                                                                                    <div class="first">
                                                                                                                        <g:formatDate format="dd MMMM yyyy" date="${item.date}"/>
                                                                                                                    </div>
                                                                                                                    <div class="second bg-green">
                                                                                                                        <a href="${createLink(controller:'advances', action:'show', id:item.id)}" style="color: white;"><g:formatNumber number="${item.amount}" type="number"/> BsF</a>
                                                                                                                    </div>
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
                                                                                                        <td style="background-color: #f1f1f7;"><g:formatNumber number="${employeeInstance?.getTotalLoadsNegative(employeeInstance?.id)}" type="number"/> BsF</td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Total Abonado</strong></p></td>
                                                                                                        <td style="background-color: #f1f1f7;"><g:formatNumber number="${employeeInstance?.getTotalLoadsPositive(employeeInstance?.id)}" type="number"/> BsF</td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;"><strong>Total</strong></p></td>
                                                                                                        <td style="background-color: #f1f1f7;"><g:formatNumber number="${employeeInstance?.getTotalLoadsPositive(employeeInstance?.id)-employeeInstance?.getTotalLoadsNegative(employeeInstance?.id)}" type="number"/> BsF</td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </div>
                                                                                    </center>

                                                                                    <div class="timeline-messages" style="margin-left: 5%;">
                                                                                        <g:if test="${employeeInstance?.load}">
                                                                                            <g:each in="${employeeInstance?.load}" var="item">
                                                                                                <g:if test="${item}">
                                                                                                    <div class="msg-time-chat">
                                                                                                        <div class="message-body msg-in">
                                                                                                            <span class="arrow"></span>
                                                                                                            <div class="text">
                                                                                                                <div class="first" style="width: 180px;">
                                                                                                                    <g:formatDate format="dd MMMM yyyy" date="${item.date}"/>
                                                                                                                </div>
                                                                                                                <g:if test="${item.amount<0}">
                                                                                                                    <div class="second bg-red">
                                                                                                                        <a href="${createLink(controller:'load', action:'show', id:item.id)}" style="color: white;"><g:formatNumber number="${item.amount}" type="number"/> BsF</a>
                                                                                                                    </div>
                                                                                                                </g:if>
                                                                                                                <g:else>
                                                                                                                    <div class="second bg-green">
                                                                                                                        <a href="${createLink(controller:'load', action:'show', id:item.id)}" style="color: white;"><g:formatNumber number="${item.amount}" type="number"/> BsF</a>
                                                                                                                    </div>
                                                                                                                </g:else>
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


                                                                        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
                                                                        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>

                                                                        </body>
                                                                        </html>



