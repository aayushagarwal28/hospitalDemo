package com.websystique.springboot.hospitalList;
import java.util.List;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HospitalListRepository extends CrudRepository<Hospital,Integer> {
	
	 @Query("SELECT h FROM Hospital h WHERE h.State =:searchState")
	    public List<Hospital> findByState(@Param("searchState") String searchState);

	 @Query("SELECT h FROM Hospital h WHERE h.State =:searchState and h.City=:searchCity")
	public List<Hospital> findByStateCity(@Param("searchState") String searchState,@Param("searchCity") String searchCity);
	
	 
}


