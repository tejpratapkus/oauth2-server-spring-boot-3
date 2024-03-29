INSERT INTO UserPrincipal (UserId, accountNonExpired,
        accountNonLocked, deleted_date, created_by, created_date, updated_by, updated_date,
        credentialsNonExpired, enabled, HashedPassword, username)
    VALUES (1,  1, 1, NULL, 0, CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 1, 1,
        '{bcrypt}$2a$12$JG6r8yi2yHSYHNgoaQHJOeEhTS9uKavwaNWiNaEFXGVfpJU4l4MIe', 'user1');
        

INSERT INTO UserPrincipalAuthority (userId, authority)
  VALUES (1, 'ADMIN'), (1, 'USER');
  