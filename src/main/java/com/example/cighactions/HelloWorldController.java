package com.example.cighactions;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "helloworld")
public class HelloWorldController {

    @GetMapping
    public String helloWorld() {
        return "Hello, world!";
    }
}
