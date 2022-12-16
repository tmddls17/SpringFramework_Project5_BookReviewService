package com.mycom.myapp.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value="/book", method=RequestMethod.GET)
@Controller
public class BookController {

	@Autowired
	BookServiceImpl bookService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String booklist(Model model) {
		model.addAttribute("list", bookService.getBookList());
		return "posts";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchlist(Model model) {
		model.addAttribute("list", bookService.getSearchList());
		return "result";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(BookVO vo) {
		if(bookService.insertBook(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		BookVO boardVO = bookService.getBook(id);
		model.addAttribute("u", boardVO);
		return "editform";
	}
	
	@RequestMapping(value = "/viewform/{id}", method = RequestMethod.GET)
	public String viewPost(@PathVariable("id") int id, Model model) {
		BookVO boardVO = bookService.getBook(id);
		model.addAttribute("u", boardVO);
		return "viewform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(BookVO vo) {
		if (bookService.updateBook(vo) == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		if(bookService.deleteBook(id) == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공");
		return "redirect:../list";
	}
}


