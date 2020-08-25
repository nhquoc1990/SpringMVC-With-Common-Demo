package com.ids.service;

import com.ids.model.Student;

public interface UserService {
	public Student login(String username, String password);
}
