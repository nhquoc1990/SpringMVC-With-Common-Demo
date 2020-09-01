package com.ids.service;

import java.util.List;

import com.ids.model.Student;

public interface UserService {
	public Student login(String username, String password);
	public List<Student> getAllStudents();
	public List<Student> getListUserByName(String name);
}
