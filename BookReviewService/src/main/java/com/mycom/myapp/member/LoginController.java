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
		if ( loginvo != null ){ // 로그인성공
			System.out.println("로그인성공!");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/book/list";
			}
		else {  // 로그인실패
			System.out.println("로그인실패!");
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
			System.out.println("사용자 정보 추가 실패");
		else
			System.out.println("사용자 정보 추가 성공");
		return "redirect:/login/login";
	}
	
	// 로그아웃하는부분
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";      
	}
}
