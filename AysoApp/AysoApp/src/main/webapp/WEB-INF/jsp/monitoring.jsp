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
                    <h2>Registrar informacion de monitoreo.</h2>
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
                    <div class="tabs mb20">
<!--                        <ul id="myTab" class="nav nav-tabs">
                            <li>
                                <a href="#fragment1" data-toggle="tab">Registrar</a>
                            </li>
                            <li class="">
                                <a href="#fragment2" data-toggle="tab">Consultar</a>
                            </li>
                           
                        </ul>
                        <div id="myTabContent2" class="tab-content">-->
                        <div class="tab-pane fade active in" id="fragment1">
                            <div class="form-group">
                                <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

                                        <label class="col-lg-4 control-label" >Proyecto:</label>
                                        <div class="col-lg-8 ">
                                            <select class="form-control" name="idProyecto" id="idProyecto" onchange="actualizaProyecto(this)">
                                                <option value="0">-- Seleccione --</option>
                                                <c:forEach items="${listProject}" var="proyecto">
                                                    <option value="${proyecto.id}">${proyecto.nombre}</option>
                                                </c:forEach>
                                            </select>
                                        </div> 
                                    </div>
                                </div>
                                </div>

                            </div>
                            
                            <div class="clearfix"></div>
                            <br>
                            <div id="contenido1">
                                
                            </div>
                            
                           <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">
                                                <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel2">Registrar datos de monitoreo.</h4>
                                        </div>
                                        <div class="modal-body" id="contentMonit">
                                            
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                            <button type="button" class="btn btn-primary">Guardar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                  <!--<button class="btn btn-default ml15" type="button">Registrar</button>-->
                        </div>
                    </div>
                    <!-- col-lg-12 start here -->

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