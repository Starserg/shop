package ru.iss.shop.domain;

import org.springframework.security.core.GrantedAuthority;

//@Entity
//@Table(name = "role")
public enum Role implements GrantedAuthority {
    USER,
    ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}



