package com.websystique.springboot.Category;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;
	
	
	
	public List<Category> getCategories()
	{
		List<Category> categories=new ArrayList<Category>();
		
		for(Category c: categoryRepository.findAll())
		{
			categories.add(c);
		}
		return categories;
		
			
	}
	public Category getCategory(String id)
	{
		return categoryRepository.findOne(id);
		
	}
	public void addCategory(Category category)
	{
		
			categoryRepository.save(category);
	}
	public void updateCategory(Category category,String id)
	{
		categoryRepository.save(category);
	}
	public void deleteCategory(String id)
	{
		categoryRepository.delete(id);
		
	} 
}

