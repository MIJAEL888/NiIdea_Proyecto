<%@ include file="/WEB-INF/jsp/includes.jsp" %>

<form:form modelAttribute="formMonit" id="formMonit" action="regMonitoring" 
           method="post" cssClass="form-horizontal" enctype="multipart/form-data" commandName="formMonit">
<div class="form-group">
    
             <form:label path="ubicacion" cssClass="col-lg-3 control-label">Ubicacion</form:label>
            <div class="col-lg-8 ">
                <form:input path="ubicacion" cssClass="form-control required" />
            </div>   
            <br><br>
             <form:label path="latitud" cssClass="col-lg-3 control-label">Latitud:</form:label>
            <div class="col-lg-8 ">
                <form:input path="latitud" cssClass="form-control required" />
            </div>   
            <br><br>
             <form:label path="longitud" cssClass="col-lg-3 control-label">Longitud:</form:label>
            <div class="col-lg-8 ">
                <form:input path="longitud" cssClass="form-control required" />
            </div>   
            <br><br>
            <form:label path="fechaInicio" cssClass="col-lg-3 control-label">Fecha Inicio:</form:label>
           <div class="col-lg-8 ">
                <form:input path="fechaInicio" cssClass="form-control required"/>
           </div>  
            <br><br>
            <form:label path="fechaFin" cssClass="col-lg-3 control-label">Fecha Fin:</form:label>
           <div class="col-lg-8 ">
                <form:input path="fechaFin" cssClass="form-control required"/>
           </div>  
            <br><br>
             <form:label path="cantCo" cssClass="col-lg-3 control-label">CO2:</form:label>
            <div class="col-lg-8 ">
                <form:input path="cantCo" cssClass="form-control required" />
            </div>   
            <br><br>
             <form:label path="cantNo2" cssClass="col-lg-3 control-label">NO2:</form:label>
            <div class="col-lg-8 ">
                <form:input path="cantNo2" cssClass="form-control required" />
            </div>   
            <br><br>
             <form:label path="cantSo2" cssClass="col-lg-3 control-label">SO2:</form:label>
            <div class="col-lg-8 ">
                <form:input path="cantSo2" cssClass="form-control required" />
            </div>   
            <br><br>
      <form:label path="descripcion" cssClass="col-lg-3 control-label">Descripcion</form:label>
    <div class="col-lg-8">
        <form:textarea path="descripcion" rows="3"  cssClass="form-control required"/>
    </div>
</div>
<!-- End .form-group  -->
</form:form>