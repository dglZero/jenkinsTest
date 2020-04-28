package com.example.demo;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/test")
public class JenkinsController {

    @GetMapping("/getSt")
    public String getSt(){
        return "成功";
    }
}
