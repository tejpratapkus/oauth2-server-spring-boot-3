package com.demo.oauth2.customizer.token.claims.impl;

import com.demo.oauth2.customizer.token.claims.OAuth2TokenClaimsCustomizer;
import org.springframework.security.oauth2.server.authorization.token.OAuth2TokenClaimsContext;

public class OAuth2TokenClaimsCustomizerImpl implements OAuth2TokenClaimsCustomizer {

	@Override
	public void customizeTokenClaims(OAuth2TokenClaimsContext context) {
		System.out.println();
		
	}
	
}
