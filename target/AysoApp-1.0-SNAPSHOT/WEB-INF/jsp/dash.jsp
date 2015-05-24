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
                    <h2>Bienvenidos a AysoApp </h2>
                    <span class="txt">Gestor de proyectos, cotizacion y montiroreo para realizar reportea ambientales. </span>
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
                    <div class="panel panel-default toggle panelMove panelClose panelRefresh">
                                    <!-- Start .panel -->
                    <div class="panel-heading">
                        <h4 class="panel-title">Proyectos Activos</h4>
                    </div>
                    <div class="panel-body">
                        <table id="responsive-datatables" class="table table-bordered table-striped table-hover dt-responsive non-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th class="per5">
                                    #
                                </th>
                                <th class="per30">Nombre</th>
                                <th class="per30">Cliente</th>
                                <th class="per15">Fecha Inicio</th>
                                <th class="per20">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listProject}" var="listP" varStatus="status">
                            <tr>
                                <td>${listP.id} </td>
                                <td>${listP.nombre}</td>
                                <td>${listP.cliente.nombre}</td>
                                <td>${listP.fechaInicio}</td>
                                <td><a href="#"> Cotizar</a> - <a href="#">Monitoreo</a></td>
                            </tr>

                            </c:forEach>

                        </tbody>
                    </table>
                    </div>
                </div>
                <!-- End .panel -->
                    
                </div>        
                <!-- col-lg-12 end here -->
            </div>
            <!-- End .row -->
        </div>
    </div>    
    <!-- / page-content-wrapper -->
</div>
<!-- / page-content -->
<%@ include file="/WEB-INF/jsp/footer.jsp" %> 
<%@ include file="/WEB-INF/jsp/jsPage.jsp" %> 