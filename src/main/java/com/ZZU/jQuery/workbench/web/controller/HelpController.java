package com.ZZU.jQuery.workbench.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpController {

    @RequestMapping("/workbench/help.do/{city}")
    public String help(@PathVariable("city") String city, Model model){
        model.addAttribute("city",city);
        return "workbench/help";
    }
}
