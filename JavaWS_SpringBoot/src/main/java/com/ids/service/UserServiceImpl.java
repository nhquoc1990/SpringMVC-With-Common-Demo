package com.ids.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

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
		Student student = new Student(user.getFullname(), user.getEmai(), user.getAddress());
		return student;
	}

	@Override
	public List<Student> getAllStudents() {
		List<Student> result = new ArrayList<>();
		List<TUser> listUsers = StreamSupport.stream(tUserRepository.findAll().spliterator(), false).collect(Collectors.toList());
		listUsers.forEach((user) -> {
			result.add(new Student(user.getFullname(), user.getEmai(), user.getAddress()));
		});
		return result;
	}

	@Override
	public List<Student> getListUserByName(String name) {
		List<Student> result = new ArrayList<>();
		List<TUser> listUsers = tUserRepository.searchByName(name);
		listUsers.forEach((user) -> {
			result.add(new Student(user.getFullname(), user.getEmai(), user.getAddress()));
		});
		return result;
	}

}
