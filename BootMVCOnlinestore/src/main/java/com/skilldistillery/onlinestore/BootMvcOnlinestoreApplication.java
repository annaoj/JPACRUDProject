package com.skilldistillery.onlinestore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.data")
public class BootMvcOnlinestoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootMvcOnlinestoreApplication.class, args);
	}

}
