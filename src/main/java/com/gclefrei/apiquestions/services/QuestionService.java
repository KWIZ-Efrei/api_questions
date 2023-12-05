package com.gclefrei.apiquestions.services;

import com.gclefrei.apiquestions.dtos.QuestionCreation;
import com.gclefrei.apiquestions.dtos.SentQuestion;
import com.gclefrei.apiquestions.entities.Question;

import java.util.List;
import java.util.UUID;

public interface QuestionService {

    SentQuestion getSentQuestionById(UUID questionId);

    void createQuestion(QuestionCreation questionCreation);

    void deleteQuestionById(UUID questionId);

    List<Question> getAllQuestions();

    List<SentQuestion> getGameQuestions(int quantity);

    List<SentQuestion> getSentQuestionsByIds(List<UUID> questionsIds);

    boolean verifyAnswer(UUID questionId, String attemptedAnswer);
}
