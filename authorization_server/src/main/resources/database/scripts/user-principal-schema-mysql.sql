CREATE TABLE UserPrincipal (
  UserId bigint(20) NOT NULL AUTO_INCREMENT,
  accountNonExpired bit(1) NOT NULL,
  accountNonLocked bit(1) NOT NULL,
  deleted_date datetime(6) DEFAULT NULL,
  created_by bigint(20) DEFAULT NULL,
  created_date datetime(6) DEFAULT NULL,
  updated_by bigint(20) DEFAULT NULL,
  updated_date datetime(6) DEFAULT NULL,
  credentialsNonExpired bit(1) NOT NULL,
  enabled bit(1) NOT NULL,
  HashedPassword varchar(255) DEFAULT NULL,
  username varchar(255) DEFAULT NULL,
  PRIMARY KEY (UserId),
  UNIQUE KEY UserPrincipal_Username (username)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE UserPrincipalAuthority (
  UserId bigint(20) NOT NULL,
  authority varchar(255) DEFAULT NULL,
  KEY FK85933rh1jk3bi5lv7ghd6308h (UserId),
  CONSTRAINT FK85933rh1jk3bi5lv7ghd6308h FOREIGN KEY (UserId) REFERENCES UserPrincipal (UserId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


