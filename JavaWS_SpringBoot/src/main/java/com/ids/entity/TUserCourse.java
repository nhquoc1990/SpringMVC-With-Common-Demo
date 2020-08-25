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
@Table(name = "t_user_course")
public class TUserCourse {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "tUserCourse_Sequence")
	@SequenceGenerator(name = "tUserCourse_Sequence", sequenceName = "TUSERCOURSE_SEQ")
	private Long id;

	@Column(name = "user_id", nullable = false)
	private Long userId;

	@Column(name = "course_id", nullable = false)
	private Long courseId;

	/**
	 * @return the userId
	 */
	public Long getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**
	 * @return the courseId
	 */
	public Long getCourseId() {
		return courseId;
	}

	/**
	 * @param courseId the courseId to set
	 */
	public void setCourseId(Long courseId) {
		this.courseId = courseId;
	}
}
