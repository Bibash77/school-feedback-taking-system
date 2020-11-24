package com.customercrud.schoolfeedback;

import com.customercrud.schoolfeedback.base.UserConst;
import com.customercrud.schoolfeedback.base.UserType;
import com.customercrud.schoolfeedback.entity.User;
import com.customercrud.schoolfeedback.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.util.ObjectUtils;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import javax.annotation.PostConstruct;

@SpringBootApplication
@EnableSwagger2
public class SchoolFeedbackApp extends SpringBootServletInitializer {
    @Autowired
    private UserRepository userRepository;

    public static void main(String[] args) {
        SpringApplication.run(SchoolFeedbackApp.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(SchoolFeedbackApp.class);
    }

    @PostConstruct
    public void defaultAdmin(){
        User prevUser = userRepository.findByUserName(UserConst.DEFAULT_USERNAME);
        if(ObjectUtils.isEmpty(prevUser)){
            User user = new User();
            user.setUserName(UserConst.DEFAULT_USERNAME);
            user.setEmail("admin@gmail.com");
            user.setPhoneNumber("9888");
            user.setPassword(UserConst.DEFAULT_PASSWORD);
            user.setUserType(UserType.ADMIN);
            userRepository.save(user);
        }
    }

    public UserRepository getUserRepository() {
        return userRepository;
    }

    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
