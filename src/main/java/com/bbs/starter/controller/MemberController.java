package com.bbs.starter.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbs.starter.dto.Member;
import com.bbs.starter.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemberController {
	@Autowired
	MemberService memberService;
	@RequestMapping("/member/login")
	public String showLogin() {
		return "member/login";
	}
	@RequestMapping("/member/doLogout")
	public String doLogout(HttpSession session) {
		session.removeAttribute("loginedMemberId");
		return "redirect:/";
	}
	@RequestMapping("/member/doLogin")
	public String doLogin(@RequestParam Map<String,Object> param, Model model, HttpSession session) {

		Member matchedMember=memberService.getMatchedOne((String) param.get("loginId"),
				(String) param.get("loginPw"));

		if(matchedMember == null) {
			model.addAttribute("alertMsg","User does not exist.");
			model.addAttribute("historyBack", true);
			return "common/redirect";
		}
		session.setAttribute("loginedMemberId", matchedMember.getId());
		model.addAttribute("alertMsg", "You have logged in successfully");
		model.addAttribute("redirectUrl", "/");

		return "common/redirect";

	}


	@RequestMapping("/member/join")
	public String showJoin() {
		return "member/join";
	}
	@RequestMapping("/member/doJoin")

	public String doJoin(@RequestParam Map<String,Object> param, Model model) {
		//Double id check
		Map<String,Object> checkLoginIdDupRs=memberService.checkLoginIdDup((String)param.get("loginId"));

		if(((String) checkLoginIdDupRs.get("resultCode")).startsWith("F-")) {
			model.addAttribute("alertMsg", checkLoginIdDupRs.get("msg"));
			model.addAttribute("historyBack", true);
			return "common/redirect";

		}
		Map<String,Object> joinRs = memberService.join(param);
		if(((String)joinRs.get("resultCode")).startsWith("F-")){
			model.addAttribute("alertMsg", joinRs.get("msg"));
			model.addAttribute("historyBack", true);
			return "common/redirect";
		}
		model.addAttribute("alertMsg", joinRs.get("msg"));
		model.addAttribute("redirectUrl", "/member/login");

		return "common/redirect";


	}

}
