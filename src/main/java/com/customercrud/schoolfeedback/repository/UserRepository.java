package com.customercrud.schoolfeedback.repository;

import com.customercrud.schoolfeedback.base.UserType;
import com.customercrud.schoolfeedback.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
User findByUserName(String userName);
List<User> findAllByUserType(UserType userType);
}
