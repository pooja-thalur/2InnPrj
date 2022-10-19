package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.domain.Member;
import com.example.demo.repository.MemberRepo;

@RestController
public class MemberController {
	@Autowired
	MemberRepo memberRepo;
	
	@GetMapping("/checkTest")
	public String checkTest(){
		return "str";
				
	}

	@RequestMapping("/saveMemberDetails")
	public String saveMemberDetails(Member member){
		System.out.println("jhsgd");
		System.out.println(member);
		System.out.println(member.getName());
		System.out.println(member.getPhoneNumber());
		memberRepo.save(member);
		return "T";
	}

	@PostMapping("/addpwd")
	public String processRegister(Member member) {
	    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	    String pwd = member.getPassword();
	    if(pwd==null) {
	    	pwd="123456";
	    }
	    String encodedPassword = passwordEncoder.encode(pwd);
	    member.setPassword(pwd);
	     
	    memberRepo.save(member);
	     
	    return "register_success";
	}
	
}

