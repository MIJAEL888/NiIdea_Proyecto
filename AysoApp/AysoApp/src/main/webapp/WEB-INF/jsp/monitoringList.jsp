<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<div class="panel panel-default toggle panelClose panelRefresh panelMove">
<!-- Start .panel -->
    <div class="panel-heading">
        <h4 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Detalle de Monitoreo</h4>
    </div>
    <div class="panel-body">
        <p> </p>
        <dl class="dl-horizontal">
            <dt>Nombre: </dt>
            <dd>${formProject.nombre}</dd>
            <dt>Cliente: </dt>
            <dd>${formProject.cliente.nombre}</dd>
        </dl>
        <ul class="list-group">
            <c:forEach items="${formProject.listMonitorings}" var="monitoringVar">
            <li class="list-group-item">
                 <div class="row">
                <div class="col-lg-6">
                    <dl class="dl-horizontal">
                        <dt>Ubicacion:</dt>
                        <dd>${monitoringVar.ubicacion}</dd>
                        <dt>Latitud:</dt>
                        <dd>${monitoringVar.latitud}</dd>
                        <dt>Longitud:</dt>
                        <dd>${monitoringVar.longitud}</dd>
                    </dl>
                </div>
                <div class="col-lg-6">
                    <dl class="dl-horizontal">
                        <dt>Responsable:</dt>
                        <dd>${monitoringVar.responsable}</dd>
                        <dt>Fecha Inicio:</dt>
                        <dd>${monitoringVar.fechaInicio}</dd>
                        <dt>Fecha Fin:</dt>
                        <dd>${monitoringVar.fechaFin}</dd>
                    </dl>
                </div>
                </div>
            </li>
            </c:forEach>
        </ul>
        
        <button class="btn btn-default ml15" type="button" onclick="agregarMonitoreo(${formProject.id})">Agregar</button>
    </div>
</div>