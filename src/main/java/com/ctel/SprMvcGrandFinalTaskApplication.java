package com.ctel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication(scanBasePackages = {"com.ctel.UserController", "com.ctel"})
public class SprMvcGrandFinalTaskApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(SprMvcGrandFinalTaskApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(SprMvcGrandFinalTaskApplication.class, args);
	}
}