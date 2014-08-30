<%@ page defaultCodec="html" %>
<%@ page import="org.springframework.util.ClassUtils" %>
<%@ page import="grails.plugin.searchable.internal.lucene.LuceneUtils" %>
<%@ page import="grails.plugin.searchable.internal.util.StringQueryUtils" %>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:if test="${params.q && params.q?.trim() != ''}">${params.q} - </g:if>Buscar</title>

        <script type="text/javascript">
            var focusQueryInput = function() {
            document.getElementById("q").focus();
            }
        </script>
        <!--dynamic table-->
        <link href="../js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
        <link href="../js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
        <link rel="stylesheet" href="../js/data-tables/DT_bootstrap.css" />
    </head>
    <body onload="focusQueryInput();">
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">

                    <g:set var="haveQuery" value="${params.q?.trim()}" />
                    <g:set var="haveResults" value="${searchResult?.results}" />



                    <header class="panel-heading">
                        <h3>Resultados</h3>
                    </header>
                    <div class="panel-body">
                        <div class="adv-table">
                            <g:if test="${haveQuery && !haveResults && !parseException}">
                                <p>No se encontraron resultados para la busqueda de - <strong>${params.q}</strong></p>

                            </g:if>

                            <g:if test="${searchResult?.suggestedQuery}">
                                <p>Did you mean <g:link controller="employee" action="search" params="[q: searchResult.suggestedQuery]">${StringQueryUtils.highlightTermDiffs(params.q.trim(), searchResult.suggestedQuery)}</g:link>?</p>
                            </g:if>
                            <table  class="display table table-bordered table-striped" id="dynamic-table">
                                <tbody>
                                    <thead>
                                    <tr>

                                        <g:sortableColumn property="cedula" title="${message(code: 'employee.cedula.label', default: 'Cédula')}" />

                                        <g:sortableColumn property="lastName" title="${message(code: 'employee.address.label', default: 'Nombres y Apellidos')}" />




                                    </tr>
                                </thead>
                                    <g:if test="${haveResults}">
                                    <div class="list">
                                        <g:each var="result" in="${searchResult.results}" status="index">
                                            <tr class="${(index % 2) == 0 ? 'even' : 'odd'}">

                                                <td >
                                                    <g:link action="show" id="${result.id}" style="color: #4aa8e0;">
                                                        ${fieldValue(bean: result, field: "cedula")}
                                                    </g:link>
                                                </td>
                                                <td >
                                                    <g:link action="show" id="${result.id}">
                                                        ${fieldValue(bean: result, field: "name")} ${fieldValue(bean: result, field: "lastName")}
                                                    </g:link>
                                                </td>
                                            </tr>
                                        </g:each>
                                    </div>
                                    </tbody>
                                </table>
                            </div>    
                        </div>
                </div>


            </section>
        </div>
    </div>

</g:if>
</section>
</div>
</div>
</div>

        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>
            
</body>
</html>
