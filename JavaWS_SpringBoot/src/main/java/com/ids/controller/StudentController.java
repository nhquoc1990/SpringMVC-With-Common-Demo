/**
 * 
 */
package com.ids.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ids.model.Student;
import com.ids.service.UserService;

/**
 * @author danhnc
 *
 */
@Controller
@RequestMapping("/api/v1")
public class StudentController {
	
	@Autowired
	private UserService service;

	@RequestMapping(value = { "/index" }, method = RequestMethod.GET)
	public ResponseEntity<List<Student>> index() {
		List<Student> res = service.getAllStudents();
		return ResponseEntity.ok().body(res);
	}

	@PostMapping("/login")
	public ResponseEntity<Student> login(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Student res = service.login(username, password);
		return ResponseEntity.ok().body(res);
	}

	@GetMapping("/getListUser")
	public ResponseEntity<List<Student>> getListUser(HttpServletRequest request) {
		String name = request.getParameter("name");
		List<Student> res = service.getListUserByName(name);
		return ResponseEntity.ok().body(res);
	}
}
