package com.example.demo.service;

import java.nio.file.attribute.UserPrincipal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Member;
import com.example.demo.repository.MemberRepo;
import com.example.demo.service.impl.MemberPrincipal;

@Service
public class MyUserDetailsService implements UserDetailsService{
	
	@Autowired
	private MemberRepo repo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Member member = repo.findByUsername(username);
		System.out.println("member found "+member);
		if(member==null) {
			throw new UsernameNotFoundException(username);
		}
		return new MemberPrincipal(member);
	}

}
