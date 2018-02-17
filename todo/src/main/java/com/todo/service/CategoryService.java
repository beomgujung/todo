package com.todo.service;

import java.util.List;

import com.todo.domain.Category;

public interface CategoryService {
	
	public void createCategory(Category category);
	
	public List<Category> getCategoryList(Integer mno);
}
