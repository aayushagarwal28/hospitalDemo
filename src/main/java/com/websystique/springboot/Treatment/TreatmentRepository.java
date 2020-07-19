package com.websystique.springboot.Treatment;

import java.util.List;

import org.springframework.data.repository.CrudRepository;



public interface TreatmentRepository extends CrudRepository<Treatment, String>{
	public List<Treatment> findByCategoryCatid(String catId);
}


