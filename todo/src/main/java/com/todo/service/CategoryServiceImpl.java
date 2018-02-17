package com.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todo.domain.Category;
import com.todo.mappers.CategoryMapper;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryMapper cMapper;
	
	@Override
	public void createCategory(Category category) {
		cMapper.insertCategory(category);
	}
	@Override
	public List<Category> getCategoryList(Integer mno) {
		return cMapper.getCategoryList(mno);
	}

}
