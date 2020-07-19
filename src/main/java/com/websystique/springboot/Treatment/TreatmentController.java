package com.websystique.springboot.Treatment;


import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.websystique.springboot.Category.Category;



@RestController
@CrossOrigin(origins="*")
public class TreatmentController {

	@Autowired
	private TreatmentService treatmentService;
	
	@RequestMapping("/hospitals/categories/{catId}/treatments")
	public List<Treatment> getTreatments(@PathVariable String catId)
	{
		return treatmentService.getTreatments(catId);
	}
	@RequestMapping("/hospitals/categories/{catId}/treatments/{id}")
	public Treatment getTreatment(@PathVariable String id)
	{
		return treatmentService.getTreatment(id);
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/hospitals/categories/{catId}/treatments")
	public void addTreatment(@RequestBody Treatment treatment,@PathVariable String catId)
	{
		treatment.setCategory(new Category(catId,""));
		treatmentService.addTreatment(treatment);
	}
	
	@RequestMapping(method=RequestMethod.PUT,value="/hospitals/categories/{catId}/treatments/{id}")
	public void updateCategory(@RequestBody Treatment treatment,@PathVariable String catId,@PathVariable String id)
	{
		treatment.setCategory(new Category(catId,""));
		treatmentService.updateTreatment(treatment);
	}
	
	@RequestMapping(method=RequestMethod.DELETE,value="/hospitals/categories/{catId}/treatments/{id}")
	public void deleteTreatment(@PathVariable String id)
	{
		treatmentService.deleteTreatment(id);
	}
}

