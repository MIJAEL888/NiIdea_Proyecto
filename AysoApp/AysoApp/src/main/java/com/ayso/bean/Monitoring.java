/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ayso.bean;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author USUARIO
 */
public class Monitoring  implements Serializable{
    private long id;
    private String responsable;
    private String fechaInicio;
    private String fechaFin;
    private String fechaReg;
    
    private String descripcion;
    private String ubicacion;
    private String latitud;
    private String longitud;
    
    private String cantCo;
    private String cantNo2;
    private String cantSo2;
    
    private Project project;
    private Quoted quoted;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }

    public String getFechaReg() {
        return fechaReg;
    }

    public void setFechaReg(String fechaReg) {
        this.fechaReg = fechaReg;
    }

    public String getCantCo() {
        return cantCo;
    }

    public void setCantCo(String cantCo) {
        this.cantCo = cantCo;
    }

    public String getCantNo2() {
        return cantNo2;
    }

    public void setCantNo2(String cantNo2) {
        this.cantNo2 = cantNo2;
    }

    public String getCantSo2() {
        return cantSo2;
    }

    public void setCantSo2(String cantSo2) {
        this.cantSo2 = cantSo2;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public Quoted getQuoted() {
        return quoted;
    }

    public void setQuoted(Quoted quoted) {
        this.quoted = quoted;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getLatitud() {
        return latitud;
    }

    public void setLatitud(String latitud) {
        this.latitud = latitud;
    }

    public String getLongitud() {
        return longitud;
    }

    public void setLongitud(String longitud) {
        this.longitud = longitud;
    }
    
}
