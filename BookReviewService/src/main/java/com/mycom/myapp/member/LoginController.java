package com.mycom.myapp.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.myapp.book.BookVO;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

	@Autowired
	UserServiceImpl service;

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
		return "home";
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
	
	@RequestMapping(value = "/adduser", method = RequestMethod.GET)
	public String addUserPost() {
		return "adduserform";
	}
	
	@RequestMapping(value = "/adduserok", method = RequestMethod.POST)
	public String addUser(UserVO vo) {
		if(service.insertUser(vo) == 0)
			System.out.println("����� ���� �߰� ����");
		else
			System.out.println("����� ���� �߰� ����");
		return "redirect:/login/login";
	}
	
	// �α׾ƿ��ϴºκ�
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";      
	}
}
