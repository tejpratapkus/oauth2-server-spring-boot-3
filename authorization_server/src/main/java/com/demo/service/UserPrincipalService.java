package com.demo.service;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.validation.annotation.Validated;

import com.demo.jpa.entity.UserPrincipal;

@Validated
public interface UserPrincipalService extends UserDetailsService {

	@Override
    UserPrincipal loadUserByUsername(String username);
	
}
