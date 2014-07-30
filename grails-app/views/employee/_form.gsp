<%@ page import="consulrima.Employee" %>

<div class="form-group">
    <label for="address" >Dirección</label>
    
        <input type="text" class="form-control" name="address" id="address" value="${employeeInstance?.address}">
  
</div>

<div class="form-group">
    <label for="bornDate">
        <g:message code="employee.bornDate.label" default="Born Date" />
    </label>
    
    <g:datePicker class="form-control" name="bornDate" precision="day"  value="${employeeInstance?.bornDate}"  />

</div>


<div class="form-group">
    <label for="cedula">
        <g:message code="employee.cedula.label" default="Cedula" />
        <span class="required-indicator">*</span>
    </label>
    
    <input type="number" class="form-control" name="cedula" id="cedula" value="${employeeInstance?.cedula}">
    
</div>

<div class="form-group">
    <label for="email">
        <g:message code="employee.email.label" default="Email" />

    </label>
    
    <input type="text" class="form-control" name="email" id="email"  value="${employeeInstance?.email}">
    
</div>


<div class="form-group">
    <label for="gender">
        <g:message code="employee.gender.label" default="Gender" />
        <span class="required-indicator">*</span>
    </label>
     
    <input type="text" class="form-control" name="gender" id="gender" value="${employeeInstance?.gender}">
   

</div>

<div class="form-group">
    <label for="lastName">
        <g:message code="employee.lastName.label" default="Last Name" />

    </label>
     
    <input type="text" class="form-control" name="lastName" id="lastName"  value="${employeeInstance?.lastName}">


</div>

<div class="form-group">
    <label for="name">
        <g:message code="employee.name.label" default="Name" />

    </label>
     
    <input type="text" class="form-control" name="name" id="name"  value="${employeeInstance?.name}">


</div>

<div class="form-group">
    <label for="observation">
        <g:message code="employee.observation.label" default="Observation" />

    </label>
   
    <input type="text" class="form-control" name="observation" id="observation"  value="${employeeInstance?.observation}">
 

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
                                                   <input type="file" name="photo" id="photo"  value="${employeeInstance?.photo}" class="default" />
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

  