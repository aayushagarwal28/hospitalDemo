package com.websystique.springboot.hospitalList;
import java.util.List;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


public interface HdfcHospitalListRepository extends CrudRepository<State, Integer> {
	
}

