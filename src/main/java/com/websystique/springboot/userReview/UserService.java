package com.websystique.springboot.userReview;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	

	public void updateUserComment(HospitaltUser hospitaltUser) {
		// TODO Auto-generated method stub
		userRepository.save(hospitaltUser);
		
	}

	public void addUserComment(HospitaltUser hospitaltUser) {
		// TODO Auto-generated method stub
		userRepository.save(hospitaltUser);
		
	}

	public HospitaltUser getUserComment(int hid, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<HospitaltUser> getUserComments(int hospitalid) {
		// TODO Auto-generated method stub
		
		List<HospitaltUser> usersComment=new ArrayList<>();
		
		for(HospitaltUser h: userRepository.findByHospitalid(hospitalid))
		{
			usersComment.add(h);
		}
		return usersComment;
	//	return userRepository.findByHospitalid(hospitalid);
	}

	public HospitaltUser getUserComments(String email) {
		// TODO Auto-generated method stub
		return userRepository.findOne(email);
	}

	public void deleteUserComment(String email) {
		// TODO Auto-generated method stub
		userRepository.delete(email);
		
	}

}