package com.mycom.myapp.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

	@Autowired
	UserServiceImpl service;

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value="/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo){
		String returnURL = "";
		if ( session.getAttribute("login") != null ) { 
			session.removeAttribute("login");         
			}         
		UserVO loginvo = service.getUser(vo);
		if ( loginvo != null ){ // �α��μ���
			System.out.println("�α��μ���!");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/book/list";
			}
		else {  // �α��ν���
			System.out.println("�α��ν���!");
			returnURL = "redirect:/login/login";         
			}
		return returnURL;
		}
	
	// �α׾ƿ��ϴºκ�
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";      
	}
}
