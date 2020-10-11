package com.java.service;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


//�궗�슜�옄 �젙蹂대�� �떞�뒗 �씤�꽣�럹�씠�뒪 UserDetails
@SuppressWarnings("serial") 
public class CustomUserDetails implements UserDetails{
	private String ID;
    private String PASSWORD;
    private String AUTHORITY;
    private boolean ENABLED;
    
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
    	
        ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        auth.add(new SimpleGrantedAuthority(AUTHORITY));
        
        return auth;
    }

    @Override
    public String getPassword() {
        return PASSWORD;
    }
 
    @Override
    public String getUsername() {
        return ID;
    }
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }
 
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }
 
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }
    
    @Override
    public boolean isEnabled() {
        return ENABLED;
    }

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}
    
 

}
