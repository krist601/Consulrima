<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>


<script type="text/javascript">
    var childCount = ${employeeInstance?.phone.size()} + 0;
   // document.writeln (${employeeInstance?.phone.size()});
    function addChild() {
        var htmlId = "phone" + childCount;      
        var deleteIcon = "${resource(dir:'images', file:'icon_delete.png')}";      
        var templateHtml = "<div id='" + htmlId + "' name='" + htmlId + "'>\n";
        templateHtml += "<div class='col-md-5 form-group'><input placeholder='Código de Área' class='form-control' type='text' id='areaCode[" + childCount + "]' name='areaCode[" + childCount + "]' /></div>\n";
        templateHtml += "<div class='col-md-5 form-group'><input placeholder='Número de teléfono' class='form-control' type='text' id='phone[" + childCount + "]' name='phone[" + childCount + "]' /></div>\n";
        templateHtml += "<span onClick='$(\"#" + htmlId + "\").remove();'><img src='" + deleteIcon + "' /></span>\n";
        templateHtml += "</div><br>\n";
        $("#childList").append(templateHtml);
     /*   var posicion= childCount;
      * 
      */
        childCount++;      
  }
 
</script>


<div id="childList">
    
</div>
<input type="button" class="btn btn-info" value="Agregar Teléfono" onclick="addChild();" />