package com.customercrud.callcenter.services.questionAnswer;

import com.customercrud.callcenter.entity.QuestionAnswer;
import com.customercrud.callcenter.repository.FeedbackRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionAnswerServiceImpl implements QuestionAnswerService{
    @Autowired
    private FeedbackRepository feedbackRepository;

    @Override
    public List<QuestionAnswer> getAllQuestionAnswer() {
        return feedbackRepository.findAll();
    }

    @Override
    public QuestionAnswer findById(Integer id) {
        return feedbackRepository.findById(id).get();
    }

    @Override
    public QuestionAnswer addQuestionAnswer(QuestionAnswer questionAnswer) {
        return feedbackRepository.save(questionAnswer);
    }

    @Override
    public void updateQuestionAnswer(QuestionAnswer questionAnswer) {

    }

    @Override
    public void deleteQuestionAnswer(Integer id) {

    }
//
//    @Override
//    public List<QuestionAnswer> getAllFeedBack() {
//        return feedbackRepository.findAll();
//    }
//
//    @Override
//    public QuestionAnswer findById(Integer id) {
//        return feedbackRepository.findById(id).get();
//    }
//
//    @Override
//    public FeedBack addFeedBack(FeedBack feedBack) {
//       return feedbackRepository.save(feedBack);
//    }
//
//    @Override
//    public void updateFeedBack(FeedBack feedBack) {
//        feedbackRepository.save(feedBack);
//    }
//
//    @Override
//    public void deleteFeedBack(Integer id) {
//    }
}
