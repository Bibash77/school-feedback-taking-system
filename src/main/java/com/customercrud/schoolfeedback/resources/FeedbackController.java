package com.customercrud.schoolfeedback.resources;

import com.customercrud.schoolfeedback.entity.QuestionAnswer;
import com.customercrud.schoolfeedback.entity.User;
import com.customercrud.schoolfeedback.services.questionAnswer.QuestionAnswerService;
import com.customercrud.schoolfeedback.services.user.UserService;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Objects;

@RestController
@RequestMapping("/questionAnswer")
public class FeedbackController {
    @Autowired // object injection
    private QuestionAnswerService questionAnswerService;

    @Autowired
    private UserService userService;

    private ObjectMapper objectMapper = new ObjectMapper();

    @PostMapping("/save/{id}")
    public ResponseEntity<?> saveQuestionAnswer(@RequestBody QuestionAnswer questionAnswer,
        @PathVariable String id) {
        try {
            User user = userService.findById(Integer.parseInt(id));
            QuestionAnswer savequestionAnswer= new QuestionAnswer();
            savequestionAnswer.setRatingData(questionAnswer.getRatingData());
            savequestionAnswer.setId(Integer.parseInt(id));
            savequestionAnswer.setSubbmittedAt(LocalDate.now());
            user.setQuestionAnswer(questionAnswerService.addQuestionAnswer(savequestionAnswer));
            userService.addUser(user);

        } catch (Exception exception){
            return ResponseEntity.badRequest().body("unable to save your data !!");
        }
        return ResponseEntity.ok().body("succesfully submitted your answer !!");
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getAnswers(@PathVariable String id) {
        User user = userService.findById(Integer.valueOf(id));
        if(user == null){
            ResponseEntity.status(200).body(null);
        }
        return ResponseEntity.status(200).body(Objects.requireNonNull(user).getQuestionAnswer().getRatingData());
    }

    static boolean isInt(String s)
    {
        try
        { int i = Integer.parseInt(s); return true; }

        catch(NumberFormatException er)
        { return false; }
    }
}
