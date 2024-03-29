package com.demo.oauth2.service.impl;

import com.demo.oauth2.service.OAuth2ClientSettingsService;
import org.springframework.security.oauth2.server.authorization.settings.ClientSettings;
import org.springframework.stereotype.Service;

import com.demo.oauth2.entity.OAuth2ClientSetting;

@Service
public class OAuth2ClientSettingsServiceImpl implements OAuth2ClientSettingsService {

	@Override
	public ClientSettings getClientSettings(OAuth2ClientSetting clientSetting) {
		if (clientSetting == null) {
			return null;
		}
		boolean requireAuthorizationConsent = clientSetting.isRequireAuthorizationConsent();
		ClientSettings clientSettings = ClientSettings.builder().requireAuthorizationConsent(requireAuthorizationConsent).build();
		return clientSettings;
	}

}
