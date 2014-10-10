
<%@ page import="user.SecAppUser" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'secAppUser.label', default: 'SecAppUser')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">
                <section class="panel">

                    <div class="panel-body profile-information">
                        <g:if test="${flash.message}">
                            <div class="alert alert-info fade in"><strong>${flash.message}</strong></div>
                                </g:if>

                                <g:hasErrors bean="${secAppUserInstance}">
                                    <g:eachError bean="${secAppUserInstance}" var="error">
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
                                <img src="${createLink(controller:'secAppUser', action:'showImage', id: secAppUserInstance?.id)}" alt=""/>
                                
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="profile-desk">
                                <h2 style="font-size: 45px;">${secAppUserInstance?.name} </h2>
                                <h3><span class="text-muted" style="color: #9bcf00">${secAppUserInstance?.username}</span></h3><br>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="profile-statistics">

                                <p style="margin-bottom: 0px; margin-top:10px; color: #9bcf00">Estatus</p>
                                <h1 style="margin-top:0px;margin-bottom: 0px;"><g:if test="${employeeInstance?.dischargeDate}">Retirado</g:if><g:else>Activo</g:else></h1>

                            </div>
                        </div>
                    </div>
                    <center>
                        <div style="width: 80%;">
                            <table class="table table-invoice" >

                                <tbody>
                                    <tr>
                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;">Rol</p></td>
                                        <td style="background-color: #f1f1f7;">
                                            <g:each in="${secAppUserInstance?.getAuthorities()}" status="i" var="rol">
                                                ${rol.authority}
                                            </g:each></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%;text-align: right; background-color: #f1f1f7;"><p style="margin-right: 20px;">Correo</p></td>
                                        <td style="background-color: #f1f1f7;">${secAppUserInstance?.email}</td>
                                    </tr>


                                </tbody>
                            </table>
                        </div>

                        <a href="${createLink(controller:'secAppUser', action:'edit',id:secAppUserInstance?.id)}" class="btn btn-info" style="margin-left: 20px; margin-bottom: 20px;">Editar Perfil</a>
                        <a href="${createLink(controller:'secAppUser', action:'delete',id:secAppUserInstance?.id)}" class="btn btn-danger" style="margin-left: 20px; margin-bottom: 20px;"> <i class="glyphicon glyphicon-trash"></i> Eliminar</a>

                    </center>
                </section>

            </div>

        </div>
        <!-- page end-->

    </body>
</html>
