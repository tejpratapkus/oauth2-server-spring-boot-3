package com.demo.oauth2.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.demo.oauth2.entity.OAuth2Client;

public interface OAuth2ClientRepository extends CrudRepository<OAuth2Client, Long> {

	List<OAuth2Client> findByRegisteredFalse();
	
}
