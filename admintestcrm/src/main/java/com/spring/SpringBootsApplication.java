package com.spring;

import org.modelmapper.ModelMapper;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootApplication
public class SpringBootsApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootsApplication.class, args);
	}
	 
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.setOrder(Integer.MIN_VALUE);
        registry.addResourceHandler(new String[] { "/sitemap.xml" }).addResourceLocations(new String[] { "/sitemap.xml" });
        registry.addResourceHandler(new String[] { "/sitemap.html" }).addResourceLocations(new String[] { "/sitemap.html" });
        registry.addResourceHandler(new String[] { "/robots.txt" }).addResourceLocations(new String[] { "robots.txt" });
        registry.addResourceHandler(new String[] { "/resources/**" }).addResourceLocations(new String[] { "/resources/" });
        registry.addResourceHandler(new String[] { "/urllist.txt" }).addResourceLocations(new String[] { "/urllist.txt" });
        registry.addResourceHandler(new String[] { "/ror.xml" }).addResourceLocations(new String[] { "/ror.xml" });
    }
	
	@Bean
	public ModelMapper modelMapper() {
		return new ModelMapper();
	}
	
	@Bean
    public ObjectMapper objectMapper() {
        return new ObjectMapper();
    }
}
