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
@Table(name = "t_class")
public class TClass {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tClass_Sequence")
	@SequenceGenerator(name = "tClass_Sequence", sequenceName = "TCLASS_SEQ")
	private Long id;

	@Column(name = "class_name", nullable = false, length = 1000)
	private String className;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "TUser", joinColumns = { @JoinColumn(name = "class_id", referencedColumnName = "id") })
	private Set<TUser> users;

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
	 * @return the className
	 */
	public String getClassName() {
		return className;
	}

	/**
	 * @param className the className to set
	 */
	public void setClassName(String className) {
		this.className = className;
	}

	/**
	 * @return the users
	 */
	public Set<TUser> getUsers() {
		return users;
	}

	/**
	 * @param users the users to set
	 */
	public void setUsers(Set<TUser> users) {
		this.users = users;
	}
}
