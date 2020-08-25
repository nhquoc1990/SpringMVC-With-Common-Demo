package com.ids.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ids.entity.TUser;
import com.ids.model.Student;
import com.ids.repository.TUserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private TUserRepository tUserRepository;

	@Override
	public Student login(String username, String password) {
		TUser user = tUserRepository.loginAsStudent(username, password);
		Student student = new Student(user.getFullname(), user.getEmai(), new Date());
		return student;
	}

}
