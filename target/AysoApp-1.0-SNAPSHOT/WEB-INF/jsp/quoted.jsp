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
                    <h2>Registrar informacion de cotización.</h2>
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
                                <form:form modelAttribute="formQuoted" action="regQouted" 
                                           method="post" cssClass="form-horizontal" commandName="formQuoted" >
                                <div class="form-group">
                                    <div class="col-lg-12">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                             <form:label path="project.id" cssClass="col-lg-4 control-label">Projecto:</form:label>
                                            <div class="col-lg-8 ">
                                                <form:select path="project.id" cssClass="form-control">
                                                    <form:option value="0">-- Seleccione --</form:option>
                                                    <form:options items="${listProjects}" itemValue="id" itemLabel="nombre" />
                                                </form:select>
                                            </div>   
                                            <br><br>
                                            <form:label path="servicio.id" cssClass="col-lg-4 control-label">Servicio:</form:label>
                                            
                                            <div class="col-lg-8 ">
                                                <form:select path="servicio.id" cssClass="form-control">
                                                    <form:option value="0">-- Seleccione --</form:option>
                                                    <form:options items="${listServices}" itemValue="id" itemLabel="nombre" />
                                                </form:select>
                                            </div>  
                                             <br><br>
                                             <form:label path="puntosMonitoreo" cssClass="col-lg-4 control-label">Puntos a Monitorear:</form:label>
                                            <div class="col-lg-8 ">
                                                 <form:input path="puntosMonitoreo" cssClass="form-control required"/>
                                            </div>  
                                             <br><br>
                                             <form:label path="montoTotal" cssClass="col-lg-4 control-label">Monto Total:</form:label>
                                            <div class="col-lg-8 ">
                                                 <form:input path="montoTotal" cssClass="form-control required"/>
                                            </div>  
                                        </div>
                                        
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        </div>
                                         
                                       
                                    </div>
                                    </div>
                                   
                                </div>
                                
                                <div class="form-group">
                                      <form:label path="descripcion" cssClass="col-lg-2 control-label">Descripcion</form:label>
                                    <div class="col-lg-8">
                                        <form:textarea path="descripcion" rows="3"  cssClass="form-control required"/>
                                    </div>
                                </div>
                                <!-- End .form-group  -->
                                <div class="form-group">
                                    <div class="col-lg-offset-2">
                                        <%--<form:button ></form:button>--%>
                                        <button class="btn btn-default ml15" type="submit">Registrar</button>
                                    </div>
                                </div>
                                <!-- End .form-group  -->
                                </form:form>
                          
                                
                                
                            
<!--                            </div>
                            <div class="tab-pane fade" id="fragment2">

                            </div>-->
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