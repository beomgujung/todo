package com.todo.service;

import java.util.List;

import com.todo.domain.Todo;

public interface TodoService {
	public void createTodo(Todo todo);
	
	public List<Todo> getTodoList(Integer mno, Integer cno);
}
