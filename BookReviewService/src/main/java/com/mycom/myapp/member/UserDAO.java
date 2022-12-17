package com.mycom.myapp.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycom.myapp.book.BookVO;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser", vo);
	}
	
	public int insertUser(UserVO vo) {
		int result = sqlSession.insert("User.insertUser", vo);
		return result;
	}
}
