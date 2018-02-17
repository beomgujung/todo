package com.todo.mappers;

import java.util.List;


import com.todo.domain.Category;

public interface CategoryMapper extends CRUDMapper<Category, Integer> {

	public void insertCategory(Category category);
	
	public List<Category> getCategoryList(int mno);
	
}
