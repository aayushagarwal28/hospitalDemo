package com.websystique.springboot.Treatment;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class TreatmentService {

	@Autowired
	private TreatmentRepository treatmentRepository;
	
	
	
	public List<Treatment> getTreatments(String catId)
	{
		List<Treatment> treatments=new ArrayList<Treatment>();
		
		for(Treatment t: treatmentRepository.findByCategoryCatid(catId))
		{
			treatments.add(t);
		}
		return treatments;
	}
	public Treatment getTreatment(String id)
	{
		return  treatmentRepository.findOne(id);
		
	}
	public void addTreatment(Treatment treatment)
	{
		treatmentRepository.save(treatment);
	}
	public void updateTreatment(Treatment treatment)
	{
		treatmentRepository.save(treatment);
	}
	public void deleteTreatment(String id)
	{
		treatmentRepository.delete(id);
		
	}
}

