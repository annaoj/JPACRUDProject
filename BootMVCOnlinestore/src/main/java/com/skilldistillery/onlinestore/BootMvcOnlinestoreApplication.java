package com.skilldistillery.onlinestore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EntityScan("com.skilldistillery.data")
public class BootMvcOnlinestoreApplication extends SpringBootServletInitializer {
	  @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(BootMvcOnlinestoreApplication.class);
	  }

	public static void main(String[] args) {
		SpringApplication.run(BootMvcOnlinestoreApplication.class, args);
	}

}
