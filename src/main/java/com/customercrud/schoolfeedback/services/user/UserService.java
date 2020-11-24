package com.customercrud.schoolfeedback.services.user;

import com.customercrud.schoolfeedback.base.UserType;
import com.customercrud.schoolfeedback.entity.User;

import java.util.List;

public interface UserService {
    List<User> getAllUser();
    User findById(Integer id);
    void addUser(User User);
    void updateUser(User User);
    void deleteUser(Integer id);
    User findByUserName(String userName);
    List<User> findUserByUserType(UserType userType);
}
