package com.bbs.starter.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbs.starter.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	@Autowired
	MemberService memberService;

	@RequestMapping("/")
	public String showMain2() {
		return "home/home";
	}
	@RequestMapping("/home/main")

	public String showMain( Model model) {

		return "home/main";
	}

}
