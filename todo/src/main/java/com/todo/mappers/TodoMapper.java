package com.todo.mappers;

import java.util.List;

import com.todo.domain.Todo;


public interface TodoMapper {

public void insertTodo(Todo todo);
	
	public List<Todo> getTodoList(int mno);
	
}
