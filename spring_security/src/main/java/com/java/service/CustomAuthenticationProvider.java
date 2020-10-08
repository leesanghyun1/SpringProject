package com.java.service;

reimport javax.inject.Inject;
import javax.security.sasl.AuthenticationException;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetailsService;

public class CustomAuthenticationProvider implements AuthenticationProvider {
	
	@Inject
	private UserDetailsService service;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException{
		
		
		String id = (String)authentication.getPrincipal();
		String pw = (String)authentication.getCredentials();
		
		CustomUserDetails user = (CustomUserDetails)service.loadUserByUsername(id);
		
		if(!matchPassword(pw, user.getPassword())){
			throw new BadCredentialsException(id);
		}
			
			return UsernamePasswordAuthenticationToken(id, pw, user.getAuthorities());
	}
	
	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return true;
	}
	
	private boolean matchPassword(String pw, String password){
		return pw.equals(password);
	}
	
}
