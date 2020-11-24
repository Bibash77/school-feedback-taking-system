package com.customercrud.schoolfeedback.repository;

import com.customercrud.schoolfeedback.entity.QuestionAnswer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackRepository extends JpaRepository<QuestionAnswer, Integer> {
}
