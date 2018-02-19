package com.todo.mappers;

import java.util.List;

import com.todo.domain.Todo;


public interface TodoMapper extends CRUDMapper<Todo, Integer>{

public void insertTodo(Todo todo);
	
	public List<Todo> getTodoList(int mno);
	
}
