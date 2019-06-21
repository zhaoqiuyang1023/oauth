package com.resource.server.controller;

import com.resource.server.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * 
 *
 * @author alan
 * 2019-04-29 17:27:11
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;



}
