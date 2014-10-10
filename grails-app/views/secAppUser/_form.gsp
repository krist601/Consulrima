<%@ page import="user.SecAppUser" %>

<div class="fieldcontain ${hasErrors(bean: secAppUserInstance, field: 'username', 'error')} required">
    <label for="username">
        <g:message code="secAppUser.username.label" default="Username" />
        <span class="required-indicator">*</span>
    </label>
    <input name="username" class="form-control" value="${secAppUserInstance?.username}" required>
</div>

<div class="fieldcontain ${hasErrors(bean: secAppUserInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="secAppUser.password.label" default="Contraseña" />
        <span class="required-indicator">*</span>
    </label>
    <input type="password" name="password" class="form-control" value="${secAppUserInstance?.password}" required>
</div>


<div class="form-group">

    <section class="panel">

        <div class="panel-body">
            <form action="#" class="form-horizontal ">


                <div class="form-group last">
                    <label for="photo" class="control-label col-md-3">Foto</label>
                    <div class="col-md-9">
                        <div class="fileupload fileupload-new" data-provides="fileupload">
                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                            </div>
                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                            <div>
                                <span class="btn btn-white btn-file">
                                    <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Seleccionar Imagen</span>
                                    <span class="fileupload-exists"><i class="fa fa-undo"></i> Cambiar</span>
                                    <input type="file" name="photo" id="photo" class="default" />
                                </span>
                                <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash"></i> Remover</a>
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </section>


</div>

<div class="fieldcontain ${hasErrors(bean: secAppUserInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="secAppUser.name.label" default="Nombre" />

    </label>
    <input class="form-control" name="name" value="${secAppUserInstance?.name}" required>
</div>

<div class="fieldcontain ${hasErrors(bean: secAppUserInstance, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="secAppUser.email.label" default="Correo" />

    </label>
    <input class="form-control" name="email" value="${secAppUserInstance?.email}" required>
</div>
<br>
<sec:ifAnyGranted roles="ROLE_ADMINISTRADOR">
<div  class="row">
    <div class="col-md-6 form-group">
        <label for="accountExpired">
            <g:message code="secAppUser.accountExpired.label" default="Cuenta Vencida" />

        </label>
        <g:checkBox class="form-control" name="accountExpired" value="${secAppUserInstance?.accountExpired}" />
    </div>

    <div class="col-md-6 form-group">
        <label for="accountLocked">
            <g:message code="secAppUser.accountLocked.label" default="CuentaBloqueada" />

        </label>
        <g:checkBox class="form-control" name="accountLocked" value="${secAppUserInstance?.accountLocked}" />
    </div>

    <div class="col-md-6 form-group">
        <label for="enabled">
            <g:message code="secAppUser.enabled.label" default="Activada" />

        </label>
        <g:checkBox class="form-control" name="enabled" value="${secAppUserInstance?.enabled}" />
    </div>

    <div class="col-md-6 form-group">
        <label for="passwordExpired">
            <g:message code="secAppUser.passwordExpired.label" default="Se Vence la Contraseña" />

        </label>
        <g:checkBox  class="form-control"" name="passwordExpired" value="${secAppUserInstance?.passwordExpired}" />
    </div>
</div>
</sec:ifAnyGranted>