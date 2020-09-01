package com.ids.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ids.entity.TUser;

@Repository
public interface TUserRepository extends CrudRepository<TUser, Long> {

	@Query("SELECT tUser FROM TUser tUser WHERE tUser.username = ?1 AND tUser.password = ?2 AND tUser.role = 0")
	public TUser loginAsStudent(String username, String password);

	@Query("SELECT tUser FROM TUser tUser WHERE tUser.fullname LIKE %:name%")
	public List<TUser> searchByName(@Param("name") String name);
}
