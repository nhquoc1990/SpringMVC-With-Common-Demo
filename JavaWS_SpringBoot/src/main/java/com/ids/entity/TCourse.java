/**
 * 
 */
package com.ids.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * @author danhnc
 *
 */
@Entity
@Table(name = "t_course")
public class TCourse {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "tCourse_Sequence")
	@SequenceGenerator(name = "tCourse_Sequence", sequenceName = "TCOURSE_SEQ")
	private Long id;
	
	@Column(name = "course_name", nullable = false, length = 1000)
	private String courseName;

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
	 * @return the courseName
	 */
	public String getCourseName() {
		return courseName;
	}

	/**
	 * @param courseName the courseName to set
	 */
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
}
