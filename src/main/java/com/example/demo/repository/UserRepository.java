package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.Member;

public interface UserRepository extends JpaRepository<Member, Long>{
	
	public Member findByUsername(String username);
}
