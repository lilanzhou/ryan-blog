package com.ryan;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ryan.dao")
public class RblogApplication {

    public static void main(String[] args) {
        SpringApplication.run(RblogApplication.class, args);
    }

}
