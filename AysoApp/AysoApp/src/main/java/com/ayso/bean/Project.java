/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ayso.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class Project implements Serializable{
    
    private long id;
    private String responsable;
    private String nombre;
    private String fechaInicio;
    private String fechaFin;
    private String fechaReg;
    private String nombreCto;
    private String emailCto;
    private String tlfCto;
    private String descripcion;
    private Client cliente;
    
    private List<Monitoring> listMonitorings;

    public Client getCliente() {
        return cliente;
    }

    public void setCliente(Client cliente) {
        this.cliente = cliente;
    }
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<Monitoring> getListMonitorings() {
        return listMonitorings;
    }

    public void setListMonitorings(List<Monitoring> listMonitorings) {
        this.listMonitorings = listMonitorings;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombreCto() {
        return nombreCto;
    }

    public void setNombreCto(String nombreCto) {
        this.nombreCto = nombreCto;
    }

    public String getEmailCto() {
        return emailCto;
    }

    public void setEmailCto(String emailCto) {
        this.emailCto = emailCto;
    }

    public String getTlfCto() {
        return tlfCto;
    }

    public void setTlfCto(String tlfCto) {
        this.tlfCto = tlfCto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
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
  
}
