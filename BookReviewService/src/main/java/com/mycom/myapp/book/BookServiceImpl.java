package com.mycom.myapp.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	BookDAO bookDAO;
	
	@Override
	public int insertBook(BookVO vo) {
		// TODO Auto-generated method stub
		return bookDAO.insertBoard(vo);
	}

	@Override
	public int deleteBook(int seq) {
		// TODO Auto-generated method stub
		return bookDAO.deleteBook(seq);
	}

	@Override
	public int updateBook(BookVO vo) {
		// TODO Auto-generated method stub
		return bookDAO.updateBook(vo);
	}

	@Override
	public BookVO getBook(int seq) {
		// TODO Auto-generated method stub
		return bookDAO.getBook(seq);
	}

	@Override
	public List<BookVO> getBookList() {
		// TODO Auto-generated method stub
		return bookDAO.getBookList();
	}
	
	@Override
	public List<BookVO> getSearchList() {
		// TODO Auto-generated method stub
		return bookDAO.getSearchList();
	}
	
}
