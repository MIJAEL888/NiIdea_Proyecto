/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ayso.controller;

import com.ayso.bean.Client;
import com.ayso.bean.Project;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author USUARIO
 */
@Controller
public class DashController {
    
    @RequestMapping(value = "/getDash", method = RequestMethod.GET)
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
       p2.setNombre("Proyecto 1");
       
        Project p3 = new Project();
       p3.setId(3);
       p3.setCliente(c2);
       p3.setFechaInicio(new Date().toString());
       p3.setNombre("Proyecto 1");
       
       List<Client> lc =  new ArrayList<Client>();
       lc.add(c1);
       lc.add(c2);
       lc.add(c3);
       List<Project> lp =  new ArrayList<Project>();
       lp.add(p1);
       lp.add(p2);
       lp.add(p3);
       
       model.addAttribute("listProject", lp);
       model.addAttribute("listClient", lc);
       model.addAttribute("formProject", new Project());
       return "/dash";
   }
    
}
