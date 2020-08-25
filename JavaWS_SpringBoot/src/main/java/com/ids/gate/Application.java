package com.ids.gate;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan({"com.ids.*"})
@EnableJpaRepositories("com.ids.repository")
@EntityScan("com.ids.entity")
public class Application {//implements CommandLineRunner{
	
	/*
	 * @Autowired UserService studentService;
	 */
	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
	
	/*
	 * @Override public void run(String... arg0) throws Exception {
	 * 
	 * studentService.addUser("Quoc");
	 * 
	 * List<User> students = studentService.getAllUser(); for(User student :
	 * students) { System.out.println("Introducing student => " +
	 * student.getUsername()); } }
	 */
}