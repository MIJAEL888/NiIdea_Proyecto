/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ayso.controller;

import com.ayso.bean.Client;
import com.ayso.bean.Monitoring;
import com.ayso.bean.Project;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author USUARIO
 */

@Controller
@SessionAttributes("formMonit")
public class MonitoringController {
    
    @ModelAttribute("formMonit")
    public Monitoring getMonitoring() {
        return new Monitoring();
    }
    
   @RequestMapping(value = "/monitoring", method = RequestMethod.GET)
   public String getForm(Model model) {
       Client c1 = new Client();
       c1.setId(1);
       c1.setNombre("RANSA");
        Client c2 = new Client();
       c2.setId(2);
       c2.setNombre("REP");
        Client c3 = new Client();
       c3.setId(1);
       c3.setNombre("SEDAPAL");
       
       Project p1 = new Project();
       p1.setId(1);
       p1.setCliente(c1);
       p1.setFechaInicio(new Date().toString());
       p1.setNombre("Proyecto 1");
       
        Project p2 = new Project();
       p2.setId(2);
       p2.setCliente(c2);
       p2.setFechaInicio(new Date().toString());
       p2.setNombre("Proyecto 2");
       
        Project p3 = new Project();
       p3.setId(3);
       p3.setCliente(c2);
       p3.setFechaInicio(new Date().toString());
       p3.setNombre("Proyecto 3");
       
       List<Client> lc =  new ArrayList<Client>();
       lc.add(c1);
       lc.add(c2);
       lc.add(c3);
       List<Project> lp =  new ArrayList<Project>();
       lp.add(p1);
       lp.add(p2);
       lp.add(p3);
       
       model.addAttribute("listProject", lp);
       
       return "/monitoring";
   }
   
   @RequestMapping(value = "/getMonitoring", method = RequestMethod.GET)
   public String getMonitoring(@RequestParam int idProyecto, Model model) {
       Client c1 = new Client();
       c1.setId(1);
       c1.setNombre("RANSA");
       
       Monitoring m1 = new Monitoring();
       m1.setFechaInicio("15/05/2015");
       m1.setFechaFin("15/05/2015");
       m1.setFechaReg("15/05/2015");
       m1.setDescripcion("Descripcion de monitoreo..");
       m1.setUbicacion("ubicacion 1");
       m1.setLatitud("latitud");
       m1.setLongitud("longitud");
       m1.setCantCo("co2 123");
       m1.setCantNo2("no2 12");
       m1.setCantSo2("So2 12");
       
       List<Monitoring> l = new ArrayList<>();
       l.add(m1);
       
       Project p1 = new Project();
       p1.setId(1);
       p1.setCliente(c1);
       p1.setFechaInicio(new Date().toString());
       p1.setNombre("Proyecto 1");
       p1.setListMonitorings(l);
       System.out.println("teste " + idProyecto);
       
       model.addAttribute("formProject", p1);
//       model.addAttribute("formMonit", new Monitoring());
       return "/monitoringList";
   }
   
     @RequestMapping(value = "/getFormMonitoring", method = RequestMethod.GET)
   public String newProject(@RequestParam int idProyecto, Model model, HttpSession session) {
        Client c1 = new Client();
       c1.setId(1);
       c1.setNombre("RANSA");
        Project p1 = new Project();
       p1.setId(1);
       p1.setCliente(c1);
       p1.setFechaInicio(new Date().toString());
       p1.setNombre("Proyecto 1"); 
       
       Monitoring m = new Monitoring();
       m.setProject(p1);
       model.addAttribute("formMonit", m);
       return "/monitoringForm";
   }
   
   @RequestMapping(value = "/regMonitoring", method = RequestMethod.POST)
   public String newProject(@ModelAttribute(value="formMonit") Monitoring monitoring, Model model, HttpSession session) {
//        List<Client> lc =  (List<Client>) session.getAttribute("listClient");
//        List<Project> lp =   (List<Project>) session.getAttribute("listProject");
//        lp.add(p);
//        
//       model.addAttribute("listProject", lp);
//       model.addAttribute("listClient", lc);
      
       model.addAttribute("error", false);
       model.addAttribute("formProject", monitoring);
       return "/monitoringDetail";
   }
}
