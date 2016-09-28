package com.ecom.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import com.ecom.dao.UserDaoImpl;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	UserDaoImpl u;
	
	
	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
		System.out.println("Security Reached for"+username);
		
		try
		{
		com.ecom.model.User domainuser= u.findByEmail(username);
		System.out.println("Domin usre role is "+domainuser.getRole().getRole());
		
        Set<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority(domainuser.getRole().getRole()));
        
        
        return new User( domainuser.getEmail(), 
                domainuser.getPassword(),
                authorities);
		
		}
		catch (Exception e) {
            throw new UsernameNotFoundException("User Name not found");
        }
		

	}

}
