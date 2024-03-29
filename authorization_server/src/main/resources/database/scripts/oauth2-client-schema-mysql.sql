CREATE TABLE oauth2_client (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  client_id varchar(200) NOT NULL,
  client_id_issued_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  client_name varchar(200) NOT NULL,
  client_secret varchar(200) NOT NULL,
  client_secret_expires_at timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  authentication_method varchar(100) NOT NULL,
  authorization_grant_type varchar(100) NOT NULL,
  scopes varchar(1000) NOT NULL,
  redirect_uris varchar(1000) DEFAULT NULL,
  registered tinyint(1) NOT NULL DEFAULT '0',
  created_date timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  created_by bigint(20) NOT NULL DEFAULT '0',
  updated_date timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  updated_by bigint(20) DEFAULT NULL,
  deleted_date timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY UC_oauth2_client_id_client_id (id,client_id),
  UNIQUE KEY UC_oauth2_client_client_id (client_id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


CREATE TABLE oauth2_client_token_setting (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  client_id varchar(200) NOT NULL,
  access_token_time int(11) NOT NULL,
  access_token_time_unit varchar(50) NOT NULL,
  refresh_token_time int(11) NOT NULL,
  refresh_token_time_unit varchar(50) NOT NULL,
  created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  created_by bigint(20) NOT NULL DEFAULT '0',
  updated_date timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  updated_by bigint(20) DEFAULT NULL,
  deleted_date timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY FK_oauth2_client_token_setting_client_id (client_id),
  CONSTRAINT FK_oauth2_client_token_setting_client_id FOREIGN KEY (client_id) REFERENCES oauth2_client (client_id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


CREATE TABLE oauth2_client_setting (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  client_id varchar(200) NOT NULL,
  require_authorization_consent tinyint(1) DEFAULT NULL,
  created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  created_by bigint(20) NOT NULL DEFAULT '0',
  updated_date timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  updated_by bigint(20) DEFAULT NULL,
  deleted_date timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY FK_oauth2_client_setting_client_id (client_id),
  CONSTRAINT FK_oauth2_client_setting_client_id FOREIGN KEY (client_id) REFERENCES oauth2_client (client_id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


