<%@ page import="consulrima.Employee" %>
<div class="recent-act">
    <h1>Datos Básicos </h1>
</div>

<div class="row">
    <div class="col-md-4 form-group">
        <label for="cedula">
            <g:message code="employee.cedula.label" default="Cédula" />
        </label>
        <input type="text" data-mask="99999999" class="form-control" name="cedula" id="cedula" value="${employeeInstance?.cedula}" required>
    </div>
</div>
<div  class="row">
    <div class="col-md-6 form-group">
        <label for="name">
            <g:message code="employee.name.label" default="Nombres" />
        </label>
        <input class="form-control" name="name" id="cedula" value="${employeeInstance?.name}" required>
    </div>
    <div class="col-md-6 form-group">
        <label for="lastName">
            <g:message code="employee.lastName.label" default="Apellidos" />
        </label>
        <input class="form-control" name="lastName" id="cedula" value="${employeeInstance?.lastName}" required>
    </div>
    <div class="col-md-12 form-group">
        <label for="bornDate">
            <g:message code="employee.bornDate.label" default="Fecha de Nacimiento" />
        </label>
        <div class="form-group">
            <input value="${employeeInstance?.bornDate}" name="bornDate" class="form-control form-control-inline input-medium default-date-picker"  size="16" type="text" value="" />
        </div>
    </div>
    <div class="col-md-6 form-group">
        <label for="gender">
            <g:message code="employee.cedula.label" default="Género" />
        </label>
        <g:select  class="form-control" name="gender" value="${employeeInstance?.gender}" from="${['Masculino', 'Femenino']}"/>
    </div>
    <div class="col-md-6 form-group">
        <label for="email">
            <g:message code="employee.cedula.label" default="Correo" />
        </label>
        <input class="form-control" name="email" id="cedula" value="${employeeInstance?.email}" required>
    </div>
    <div class="col-md-12 form-group">
        <label for="cedula">
            <g:message code="employee.cedula.label" default="Dirección" />
        </label>
        <textarea class="form-control" name="address" id="cedula" value="${employeeInstance?.address}" required ></textarea>
    </div>
</div>

