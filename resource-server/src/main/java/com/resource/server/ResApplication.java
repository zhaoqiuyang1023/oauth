package com.resource.server;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class ResApplication {

    public static void main(String[] args) {
        SpringApplication.run(ResApplication.class, args);
    }
}
