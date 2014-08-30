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
        <g:datePicker name="bornDate" precision="day"  value="${employeeInstance?.bornDate}" />
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
                            <span class="label label-danger">NOTA!</span>
                            <span>
                                Attached image thumbnail is
                                supported in Latest Firefox, Chrome, Opera,
                                Safari and Internet Explorer 10 only
                            </span>
                        </div>
                    </div>

                </form>
            </div>
        </section>


    </div>
<div class="recent-act">
                                            <h1>Datos Laborales </h1>
</div>
       
<div  class="row">
    <div class="col-md-6 form-group">
        <label for="salary">
            <g:message code="employee.cedula.label" default="Salario" />
        </label>
        <input class="form-control" name="salary" id="cedula" value="${employeeInstance?.salary}" required>
    </div>

    <div class="col-md-6 form-group">
        <label for="occupation">
            <g:message code="employee.occupation.label" default="Ocupación" />

        </label>
        <g:select id="occupation" name="occupation.id" from="${consulrima.Occupation.list()}" optionKey="id" value="${employeeInstance?.occupation?.id}" class="form-control" noSelection="['null': '']"/>
    </div>



    <div class="col-md-12 form-group">
        <label for="admissionDate">
            <g:message code="employee.cedula.label" default="Fecha de Ingreso" />
        </label>
        <g:datePicker name="admissionDate" precision="day"  value="${employeeInstance?.admissionDate}"  />
    </div>



    <div class="col-md-6 form-group">
        <label for="client">
            <g:message code="employee.cedula.label" default="Cliente" />
        </label>
        <input class="form-control" name="client" id="cedula" value="${employeeInstance?.client}" required>
    </div>




    <div class="col-md-6 form-group">
        <label for="pantSize">
            <g:message code="employee.pantSize.label" default="Talla de Pantalón" />
        </label>
        <input class="form-control" name="pantSize" id="cedula" value="${employeeInstance?.pantSize}" required>
    </div>

    <div class="col-md-6 form-group">
        <label for="shirtSize">
            <g:message code="employee.shirtSize.label" default="Talla de Camisa" />

        </label>
        <input class="form-control" name="shirtSize" id="cedula" value="${employeeInstance?.shirtSize}" required>
    </div>

    <div class="col-md-6 form-group">
        <label for="shoesSize">
            <g:message code="employee.shoesSize.label" default="Talla de Zapatos" />

        </label>
        <input class="form-control" name="shoesSize" id="cedula" value="${employeeInstance?.shoesSize}" required>
    </div>              

    <div class="col-md-12 form-group">
        <label for="observation">
            <g:message code="employee.cedula.label" default="Observaciones" />
        </label>
            <textarea class="form-control" name="observation" id="cedula" value="${employeeInstance?.observation}"></textarea>
    </div>

</div>   



                 </div>





