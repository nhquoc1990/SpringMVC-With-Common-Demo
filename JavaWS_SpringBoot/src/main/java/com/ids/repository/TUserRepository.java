package com.ids.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ids.entity.TUser;

@Repository
public interface TUserRepository extends CrudRepository<TUser, Long> {

	@Query("SELECT tUser FROM TUser tUser WHERE tUser.username = ?1 AND tUser.password = ?2 AND tUser.role = 0")
	public TUser loginAsStudent(String username, String password);
}
