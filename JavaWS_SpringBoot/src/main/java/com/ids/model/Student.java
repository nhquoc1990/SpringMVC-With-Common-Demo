/**
 * 
 */
package com.ids.model;

/**
 * @author danhnc
 *
 */
public class Student {

	private String name;
	
	private String email;
	
	private String address;
	
	public Student(String name, String email, String address) {
		this.name = name;
		this.email = email;
		this.address = address;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
