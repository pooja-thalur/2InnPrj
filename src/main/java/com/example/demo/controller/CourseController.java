package com.example.demo.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.server.RenderingResponse;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CourseController {
	
	@GetMapping("/testHelp")
	public String testHelp() {
		return "testhelp";
	}
	
	@GetMapping("/startTest")
	public String startTest() {
		return "starttest";
		
	}
	
	@GetMapping("/saveTestProgress")
	public String saveProgress(HttpServletRequest request,Model model) {
		System.out.println("jshdgffhfhh");
		int currentQuesId = 0 ;
		if(request.getParameter("currentQuesId")!="") {
			currentQuesId = Integer.parseInt(request.getParameter("currentQuesId"));
		}
		int currentQuesNo = 0 ;
		if(request.getParameter("currentQuesNo")!="") {
			currentQuesNo = Integer.parseInt(request.getParameter("currentQuesNo"));
		}
		model.addAttribute("currentQuesId",currentQuesId);
		model.addAttribute("questNo",currentQuesNo+1);
		model.addAttribute("question","Question ");
		HashMap<Integer, String> answerOptions = new HashMap<Integer, String>();
		answerOptions.put(1, "Answer 1");
		answerOptions.put(2, "Answer 2");
		answerOptions.put(3, "Answer 3");
		answerOptions.put(4, "Answer 4");
		model.addAttribute("options", answerOptions);
		return "starttest";
	}
}
