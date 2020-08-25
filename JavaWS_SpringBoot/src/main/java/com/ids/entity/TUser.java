/**
 * 
 */
package com.ids.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * @author danhnc
 *
 */
@Entity
@Table(name = "t_user")
public class TUser {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "tUser_Sequence")
	@SequenceGenerator(name = "tUser_Sequence", sequenceName = "TUSER_SEQ")
	private Long id;
	
	@Column(name = "username", nullable = false, length = 10)
	private String username;
	
	@Column(name = "password", nullable = false, length = 100)
	private String password;
	
	@Column(name = "role", nullable = false, length = 1)
	private int role;
	
	@Column(name = "isadmin", nullable = false, length = 1)
	private int isAdmin;
	
	@Column(name = "emai", nullable = true, length = 100)
	private String emai;
	
	@Column(name = "fullname", nullable = true, length = 100)
	private String fullname;
	
	@Column(name = "address", nullable = true, length = 200)
	private String address;
	
	@Column(name = "class_id", nullable = true)
	private int classId;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinTable(name="t_user_course", joinColumns={@JoinColumn(name ="user_id", referencedColumnName ="id")},
			inverseJoinColumns={@JoinColumn(name ="course_id", referencedColumnName ="id")})
	private Set<TCourse> courses;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the role
	 */
	public int getRole() {
		return role;
	}

	/**
	 * @param role the role to set
	 */
	public void setRole(int role) {
		this.role = role;
	}

	/**
	 * @return the isAdmin
	 */
	public int getIsAdmin() {
		return isAdmin;
	}

	/**
	 * @param isAdmin the isAdmin to set
	 */
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	/**
	 * @return the emai
	 */
	public String getEmai() {
		return emai;
	}

	/**
	 * @param emai the emai to set
	 */
	public void setEmai(String emai) {
		this.emai = emai;
	}

	/**
	 * @return the fullname
	 */
	public String getFullname() {
		return fullname;
	}

	/**
	 * @param fullname the fullname to set
	 */
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the classId
	 */
	public int getClassId() {
		return classId;
	}

	/**
	 * @param classId the classId to set
	 */
	public void setClassId(int classId) {
		this.classId = classId;
	}

	/**
	 * @return the courses
	 */
	public Set<TCourse> getCourses() {
		return courses;
	}

	/**
	 * @param courses the courses to set
	 */
	public void setCourses(Set<TCourse> courses) {
		this.courses = courses;
	}
}
