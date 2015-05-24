<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/head.jsp" %> 
<%@ include file="/WEB-INF/jsp/wrapper.jsp" %> 

<!-- .page-content -->
<div class="page-content sidebar-page clearfix">
    <!-- .page-content-wrapper -->
    <div class="page-content-wrapper">
        
        <div class="page-content-inner">
            <!-- Start .page-content-inner -->
            
            <div id="page-header" class="clearfix">
                <div class="page-header">
                    <h2>Registro de Proyectos</h2>
                    <!--<span class="txt">Validate data before send it to server</span>-->
                </div>
                <div class="header-stats">
<!--                    <div class="spark clearfix">
                        <div class="spark-info"><span class="number">2345</span>Visitors</div>
                        <div id="spark-visitors" class="sparkline"></div>
                    </div>
                    <div class="spark clearfix">
                        <div class="spark-info"><span class="number">17345</span>Views</div>
                        <div id="spark-templateviews" class="sparkline"></div>
                    </div>
                    <div class="spark clearfix">
                        <div class="spark-info"><span class="number">3700$</span>Sales</div>
                        <div id="spark-sales" class="sparkline"></div>
                    </div>-->
                </div>
            </div>
            <!-- Start .row -->
            <div class="row">
                <div class="col-lg-12">
                <!-- col-lg-12 start here -->
                <c:if test="${error}">
                     <div class="bs-callout bs-callout-warning fade in">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <h4>Lo Sentimos...</h4>
                        <p>Hubo un error en el proceso.</p>
                    </div>
                </c:if>
                <c:if test="${!error}">
                <div class="panel panel-default toggle panelClose panelRefresh panelMove">
                <!-- Start .panel -->
                    <div class="panel-heading">
                        <h4 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Detalle de Cotizacion</h4>
                    </div>
                    <div class="panel-body">
                        <p> </p>
                        <dl class="dl-horizontal">
                            <dt>Proyecto:</dt>
                            <dd>${formQuoted.project.nombre}</dd>
                            <br>
                            <dt>Cliente: </dt>
                            <dd>${formQuoted.cliente.nombre}</dd>
                            <br>
                            <dt>Servicio Contratado:</dt>
                            <dd>${formQuoted.servicio.nombre}</dd>
                            <br>
                            <dt>Numero de putnos:</dt>
                            <dd>${formQuoted.puntosMonitoreo}</dd>
                            <br>
                            <dt>Monto Total:</dt>
                            <dd>${formQuoted.montoTotal}</dd>
                            <br>
                            <dt>Descripcion:</dt>
                            <dd>${formQuoted.descripcion}</dd>
                            <br>
                        </dl>
                    </div>
                </div>
                <!-- End .panel -->
                </c:if>
                

                <!-- col-lg-12 end here -->
                </div>
            <!-- End .row -->
            </div>
        </div>
    </div>
    <!-- / page-content-wrapper -->
</div>
<!-- / page-content -->
<%@ include file="/WEB-INF/jsp/footer.jsp" %> 
<%@ include file="/WEB-INF/jsp/jsPage.jsp" %> 