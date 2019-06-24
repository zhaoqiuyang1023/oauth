package com.resource.server.controller;
import com.resource.server.entity.ao.OauthAo;
import com.resource.server.entity.vo.OAuthVO;
import com.resource.server.utils.RestResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * @Title: LoginController
 * @Description:
 * @author: youqing
 * @version: 1.0
 * @date: 2018/11/20 11:39
 */
@Controller
public class IndexController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("login")
    public String tologin(){
        logger.info("定向登陆页");
        return "login";
    }

    @GetMapping("index")
    public String showView(Model model) {
        return "index";
    }

    @RequestMapping("home")
    public String home(){
        logger.info("定向主页");
        return "home";
    }


    @Value("${token.login}")
    String oauth2login;



    @PostMapping("/login")
    @ResponseBody
    public RestResponse Login(OauthAo oauthAo, HttpServletResponse response) {
        try {
//            Map<String,String> map = new HashMap();
//
//            map.put("grant_type",oauthAo.getGrant_type());
//            map.put("username",oauthAo.getUsername());
//            map.put("password",oauthAo.getPassword());
//            map.put("scope",oauthAo.getScope());
//            map.put("client_id",oauthAo.getClient_id());
//            map.put("client_secret",oauthAo.getClient_secret());
//            RestTemplate restTemplate = new RestTemplate();
//            System.out.println(oauth2login);
//            OAuthVO oAuthVO = restTemplate.getForObject(oauth2login="?grant_type={grant_type}&username={username}&password={password}&scope={scope}&client_id={client_id}&client_secret={client_secret}", OAuthVO.class,map);
//            return RestResponse.success("成功").setData(oAuthVO);

            String url = oauth2login;
            RestTemplate client = new RestTemplate();
            HttpHeaders headers = new HttpHeaders();
//  请勿轻易改变此提交方式，大部分的情况下，提交方式都是表单提交
            headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
//  封装参数，千万不要替换为Map与HashMap，否则参数无法传递
            MultiValueMap<String, String> params= new LinkedMultiValueMap<String, String>();
//  也支持中文
            param.put("grant_type",oauthAo.getGrant_type());
//            map.put("username",oauthAo.getUsername());
//            map.put("password",oauthAo.getPassword());
//            map.put("scope",oauthAo.getScope());
//            map.put("client_id",oauthAo.getClient_id());
//            map.put("client_secret",oauthAo.getClient_secret());
            HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<MultiValueMap<String, String>>(params, headers);
//  执行HTTP请求
            ResponseEntity<String> response1 = client.exchange(url, HttpMethod.GET, requestEntity, String.class);
//  输出结果
            System.out.println(response1.getBody());
            return RestResponse.failure("失败");
        } catch (Exception e) {
            e.printStackTrace();
            return RestResponse.failure("失败");
        }
    }

    @RequestMapping("logout")
    public String logout(){
        logger.info("退出系统");

        return "redirect:login";
    }

}
