package com.mycom.myapp.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycom.myapp.book.BookVO;

@Service
public class UserServiceImpl {
	@Autowired
	UserDAO userDAO;
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
	public int insertUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.insertUser(vo);
	}

}
