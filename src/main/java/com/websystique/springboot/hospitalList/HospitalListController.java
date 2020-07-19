package com.websystique.springboot.hospitalList;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;

@RestController
@CrossOrigin(origins="*")
public class HospitalListController {
	
	@Autowired
	private HospitalListService hospitalListService;
	@RequestMapping("/hospitals/all")
	public List<Hospital> getHospitals()
	{
		return hospitalListService.getAllHospitals();
	}
	@RequestMapping("/hospitals/{id}")
	public Hospital getHospital(@PathVariable int id)
	{
		return hospitalListService.getHospital(id);
	}
	@RequestMapping("/hospitals/state/{state}/city/")
	public 	List<Hospital> getHospitalByState(@PathVariable String state)
	{
	return hospitalListService.getHospitalByState(state);
	}
	@RequestMapping("/hospitals/state/{state}/city/{city}")
	public 	List<Hospital> getHospitalByState(@PathVariable String state,@PathVariable(name="city",required = false) String city)
	{
	        return hospitalListService.getHospitalByStateCity(state,city);
	}
	
	@GetMapping("/hospitals/info/{keyword}")
	@RequestMapping(method=RequestMethod.POST,value="/hospitals/info")
	public Map<String,String> getHospitalInfo(@RequestBody String keyword) throws IOException
	{
		
		Map<String, String> hdata=new HashMap<String, String>();
		hdata=hospitalListService.getHospitalInfo(keyword);
		System.out.println(hdata);
		return hdata;  
	}
	
	  
	/*
	@RequestMapping(method=RequestMethod.POST, value="/hospitals")
	public String addHospital(@RequestBody Hospital hospital) {
		hospitalListService.addHospital(hospital);
		String response = "{\"success\": true, \"message\": Hospital has been added successfully.}";
		return response;
	}
	*/
	
	@RequestMapping("/blogs")
	public String blogNews() throws JsonProcessingException, IOException {		
		
		String response = hospitalListService.blogNews();
		return response;
	}
	
	@RequestMapping("/google/places/{name}")
	public String getGooglePlaces(@PathVariable String name) throws JsonProcessingException, IOException {		
		
		String response = hospitalListService.getGooglePlaces(name);
		return response;
	}

	@RequestMapping("/google/places/detail/{placeId}")
	public String getGooglePlacesDetail(@PathVariable String placeId) throws JsonProcessingException, IOException {		
		
		String response = hospitalListService.getGooglePlacesDetail(placeId);
		return response;
	}
	
	@RequestMapping("/google/photo/{url}")
	public String getGooglePhoto(@PathVariable String url) throws JsonProcessingException, IOException {		
		
		String response = hospitalListService.getGooglePhoto(url);
		return response;
	}
}
