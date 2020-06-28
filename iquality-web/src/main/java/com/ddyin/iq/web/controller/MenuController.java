package com.ddyin.iq.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ddyin
 * @Description
 * @date 2020/5/26 14:08
 */
@Controller
@RequestMapping("/iq")
public class MenuController {

    @RequestMapping(value = "/index")
    public String index(ModelMap model) {
        return "login";
    }







}
