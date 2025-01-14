package com.demo.oauth2.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.oauth2.entity.OAuth2RegisteredClient;

public interface OAuth2RegisteredClientRepository extends JpaRepository<OAuth2RegisteredClient, String> {
	Optional<OAuth2RegisteredClient> findByClientId(String clientId);
}
