package com.example.demo.domain;

import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.boot.autoconfigure.domain.*;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@Table(name="member")
public class Member {
	public Member(){
		
	}
	
	public Member(Long id, String address, String name, String place, String phoneNumber, String username,
			String password, String qualification, String college, String course, String careerInterest) {
		super();
		this.id = id;
		this.address = address;
		this.name = name;
		this.place = place;
		this.phoneNumber = phoneNumber;
		this.username = username;
		this.password = password;
		this.qualification = qualification;
		this.college = college;
		this.course = course;
		this.careerInterest = careerInterest;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String address;
	String name;
	String place;
	@Column(name="phone_number")
	private String phoneNumber;
	String username;

	private String password;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getCareerInterest() {
		return careerInterest;
	}
	public void setCareerInterest(String careerInterest) {
		this.careerInterest = careerInterest;
	}
	public void setPassword(String pwd) {
		BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
		pwd = bcrypt.encode(pwd);
		this.password = pwd;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	String qualification;
	String college;
	String course;
	@Column(name="career_interest")
	String careerInterest;

}
