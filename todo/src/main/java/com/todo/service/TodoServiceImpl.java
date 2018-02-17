package com.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todo.domain.Todo;
import com.todo.mappers.TodoMapper;

@Service
public class TodoServiceImpl implements TodoService {

	@Autowired
	TodoMapper tMapper;
	
	@Override
	public void createTodo(Todo todo) {
		tMapper.insertTodo(todo);
	}

	@Override
	public List<Todo> getTodoList(Integer mno, Integer cno) {
		return tMapper.getTodoList(mno);
	}

}
