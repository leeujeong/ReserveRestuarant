package com.reserve.restaurant.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.reserve.restaurant.service.BookService;
import com.reserve.restaurant.service.BookServiceImpl;
import com.reserve.restaurant.service.UserService;
import com.reserve.restaurant.service.UserServiceImpl;

@Configuration
public class UserConfig {

	
	
	@Bean
	public UserService service() {
		return new UserServiceImpl();
	}
	
	@Bean
	public BookService bookService() {
		return new BookServiceImpl();
	}
	
}
