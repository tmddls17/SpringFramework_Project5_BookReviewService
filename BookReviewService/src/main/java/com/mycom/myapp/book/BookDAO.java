package com.mycom.myapp.book;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BookDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BookVO vo) {
		int result = sqlSession.insert("Book.insertBook", vo);
		return result;
	}
	
	
	class BoardRowMapper implements RowMapper<BookVO> {
		@Override
		public BookVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			BookVO vo = new BookVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setTitle(rs.getString("title"));
			vo.setContent(rs.getString("content"));
			vo.setWriter(rs.getString("writer"));
			vo.setCategory(rs.getString("category"));
			vo.setPrice(rs.getString("price"));
			vo.setRegdate(rs.getDate("regdate"));
			return vo;			
		}
	}
	
	public int deleteBook(int seq) {
		int result = sqlSession.delete("Book.deleteBook", seq);
		return result;
	}
	
	public int updateBook(BookVO vo) {
		int result = sqlSession.update("Book.updateBook", vo);
		return result;
	}
	
	public BookVO getBook(int seq) {
		BookVO one = sqlSession.selectOne("Book.getBook", seq);
		return one;
	}
	
	public List<BookVO> getBookList() {
		List<BookVO> list = sqlSession.selectList("Book.getBookList");
		return list;
	}
	
	public List<BookVO> getSearchList() {
		List<BookVO> list = sqlSession.selectList("Book.getSearchList");
		return list;
	}
}
