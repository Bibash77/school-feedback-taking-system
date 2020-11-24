package com.customercrud.callcenter.repository;

import com.customercrud.callcenter.entity.QuestionAnswer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackRepository extends JpaRepository<QuestionAnswer, Integer> {
}
