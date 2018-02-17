package com.todo.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.todo.domain.Category;
import com.todo.domain.Todo;
import com.todo.service.CategoryService;
import com.todo.service.TodoService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/todo/*")
public class TodoController {
	
	@Autowired
	CategoryService cService;
	
	@Autowired
	TodoService tService;
	
	@GetMapping("/todo")
	public void getCategory () {
		
	}

	@PostMapping("/category")
	@ResponseBody
	public String postCategory(Category category) {
		log.info("aaa");
		cService.createCategory(category);
		
		return "good"; 
	}
	
	
	@GetMapping("/category")
	@ResponseBody
	public List<Category> getCategoryList(int mno, Model model){
		
		model.addAttribute("list", cService.getCategoryList(mno));
		return cService.getCategoryList(mno);
	}
	
	@PostMapping("/createTodo")
	@ResponseBody
	public String postSaveTodo(Todo todo) {
		
		tService.createTodo(todo);
		
		return "gg";
	}
}
