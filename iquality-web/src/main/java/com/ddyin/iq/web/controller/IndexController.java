package com.ddyin.iq.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ddyin
 * @Description
 * @date 2020/5/30 14:16
 */
@Controller
public class IndexController {

    @RequestMapping(value = "/index")
    public String index() {
        return "redirect:/iq/index";
    }

}
