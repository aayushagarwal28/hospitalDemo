package com.websystique.springboot;

import java.io.IOException;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
//import org.springframework.context.annotation.Import;

//import com.websystique.springboot.configuration.JpaConfiguration;


//@Import(JpaConfiguration.class)
//@SpringBootApplication(scanBasePackages={"com.websystique.springboot"})// same as @Configuration @EnableAutoConfiguration @ComponentScan
@SpringBootApplication
@EnableJpaRepositories(basePackages= {"com.websystique.springboot"})
public class SpringBootCRUDApp {

	public static void main(String[] args){
		SpringApplication.run(SpringBootCRUDApp.class, args); 
		System.out.println("hello");
	

	}
}
