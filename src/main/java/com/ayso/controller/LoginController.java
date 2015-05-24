/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ayso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author USUARIO
 */
@Controller
public class LoginController {
   
   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public String access(@RequestParam(required=false) String email,@RequestParam(required=false) String password, ModelMap map) {
//       logic for acces to the aplication. 
       return "redirect:/getDash";
   }
}
