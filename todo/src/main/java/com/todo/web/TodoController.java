package com.todo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/todo/*")
public class TodoController {

	@GetMapping("/todo")
	public void todoPage() {
		
	}
}
