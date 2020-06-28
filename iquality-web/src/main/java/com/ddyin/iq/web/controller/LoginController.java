package com.ddyin.iq.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    final Logger log = Logger.getLogger(ToolController.class);

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(HttpServletRequest request){
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username.equalsIgnoreCase("ddyin") && password.equalsIgnoreCase("ddyin")){
                return "redirect:/tool/shard";
            }
        } catch (Exception e) {
            log.error("login:" + e.getMessage());
        }
        return "login";
    }



}
