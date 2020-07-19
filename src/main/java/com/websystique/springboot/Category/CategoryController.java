package com.websystique.springboot.Category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;



@RestController
@CrossOrigin(origins="*")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/hospitals/categories")
	public List<Category> getCategories()
	{
		return categoryService.getCategories();
	}
	@RequestMapping("/hospitals/categories/{id}")
	public Category getCategory(@PathVariable String id)
	{
		return categoryService.getCategory(id);
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/hospitals/categories")
	public void addCategory(@RequestBody Category category)
	{
		categoryService.addCategory(category);
	}
	
	@RequestMapping(method=RequestMethod.PUT,value="/hospitals/categories/{id}")
	public void updateCategory(@RequestBody Category category,@PathVariable String id)
	{
		categoryService.updateCategory(category,id); 
	}
	
	@RequestMapping(method=RequestMethod.DELETE,value="/hospitals/categories/{id}")
	public void deleteTopic(@PathVariable String id)
	{
		categoryService.deleteCategory(id);
	}
}