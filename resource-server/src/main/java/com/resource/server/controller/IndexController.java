package com.resource.server.controller;

import com.resource.server.entity.ao.OauthAo;
import com.resource.server.entity.vo.TokenVO;
import com.resource.server.utils.RestResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;


@Controller
public class IndexController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("login")
    public String tologin() {
        logger.info("定向登陆页");
        return "login";
    }

    @GetMapping("index")
    public String showView(Model model) {
        return "index";
    }

    @Value("${token.login}")
    String oauth2login;


    @PostMapping("/login")
    @ResponseBody
    public RestResponse Login(OauthAo oauthAo) {
        try {

            RestTemplate restTemplate = new RestTemplate();
            ResponseEntity<TokenVO> result = restTemplate.getForEntity(oauth2login + "?grant_type=" + oauthAo.getGrant_type() + "&username=" + oauthAo.getUsername() + "&password=" + oauthAo.getPassword()
                    + "&scope=" + oauthAo.getScope() + "&client_id=" + oauthAo.getClient_id() + "&client_secret=" + oauthAo.getClient_secret(), TokenVO.class);

            return RestResponse.success().setData(result.getBody());
        } catch (Exception e) {
            e.printStackTrace();
            return RestResponse.failure("失败");
        }
    }

    @RequestMapping("logout")
    public String logout() {
        logger.info("退出系统");

        return "redirect:login";
    }

}
