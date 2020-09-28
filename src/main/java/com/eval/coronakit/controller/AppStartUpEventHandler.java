package com.eval.coronakit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;


import com.eval.coronakit.dao.UserRepository;
import com.eval.coronakit.entity.Users;



@Component
public class AppStartUpEventHandler {

	@Autowired
	private UserRepository userRepo;
	
	@Autowired	
	private PasswordEncoder penc;
	
	
	@EventListener
	public void onAppStartup(ApplicationReadyEvent event) {
		if(!userRepo.existsByUsername("admin")) {
			userRepo.save(new Users("admin", "admin",penc.encode("admin"),true,"admin@Wellsfargo..com","1234567890" , "ADMIN"));
		}
		
		if(!userRepo.existsByUsername("user")) {
			userRepo.save(new Users("user", "user",penc.encode("user"),true,"user@wellsfargo.com","0987654321" , "USER"));
		}
	}
}