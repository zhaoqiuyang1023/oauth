package com.oauth.server.controller;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

//    @RequestMapping("login")
//    public String tologin(){
//        logger.info("定向登陆页");
//        return "login";
//    }

    @GetMapping("index")
    public String showView(Model model) {
        return "index";
    }

    @RequestMapping("home")
    public String home(){
        logger.info("定向主页");
        return "home";
    }

    @RequestMapping("logout")
    public String logout(){
        logger.info("退出系统");

        return "redirect:login";
    }

}
