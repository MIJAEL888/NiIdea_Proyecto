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

public class Quoted implements Serializable{
    
    private long id;
    private Date fechaReg;
    private float montoTotal;
    private String descripcion;
    private int puntosMonitoreo;
    
    private Project project;
    private Service servicio;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getPuntosMonitoreo() {
        return puntosMonitoreo;
    }

    public void setPuntosMonitoreo(int puntosMonitoreo) {
        this.puntosMonitoreo = puntosMonitoreo;
    }

    public Date getFechaReg() {
        return fechaReg;
    }

    public void setFechaReg(Date fechaReg) {
        this.fechaReg = fechaReg;
    }

    public float getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(float montoTotal) {
        this.montoTotal = montoTotal;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public Service getServicio() {
        return servicio;
    }

    public void setServicio(Service servicio) {
        this.servicio = servicio;
    }   
    
}
