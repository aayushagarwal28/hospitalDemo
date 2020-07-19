package com.websystique.springboot.userReview;



import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository  extends CrudRepository<HospitaltUser,String> {
	
//	@Query("SELECT h FROM HospitalUser h WHERE h.hospitalid =:hid")
  // public List<HospitaltUser> findByHospitalid(@Param("hid") Integer hid);
	
	 public List<HospitaltUser> findByHospitalid(int hospitalid);
	
	
	 
}
