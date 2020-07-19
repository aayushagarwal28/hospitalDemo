package com.websystique.springboot.userReview;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins="*")
public class UserController {
 
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/userComments/{hid}")
	public List<HospitaltUser> getUserComments(@PathVariable int hid)
	{
		return userService.getUserComments(hid);
	}
	
	@RequestMapping("/userComments/email/{email}")
	public HospitaltUser getUserComments(@PathVariable String email)
	{
         return userService.getUserComments(email);
	}
	
	@RequestMapping("/userComments/{hid}/user/{email}")
	public HospitaltUser getUserComment(@PathVariable int hid,@PathVariable String email)
	{
		return userService.getUserComment(hid,email);
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/userComments")
	public void addUserComment(@RequestBody HospitaltUser hospitaltUser)
	{
		userService.addUserComment(hospitaltUser);
	}
	
	@RequestMapping(method=RequestMethod.PUT,value="/userComments")
	public void updateUserComment(@RequestBody  HospitaltUser hospitaltUser)
	{
		userService.updateUserComment(hospitaltUser); 
	}
	
	
	@RequestMapping(method=RequestMethod.DELETE,value="/userComments/{email}")
	public void deleteTopic(@PathVariable String email)
	{
		userService.deleteUserComment(email);
	}
	
	
}



