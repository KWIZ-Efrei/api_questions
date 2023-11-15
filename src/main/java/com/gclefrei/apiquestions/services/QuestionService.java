package com.gclefrei.apiquestions.services;

import com.gclefrei.apiquestions.dtos.QuestionCreation;
import com.gclefrei.apiquestions.dtos.SentQuestion;
import com.gclefrei.apiquestions.entities.Question;

import java.util.List;
import java.util.UUID;

public interface QuestionService {

    Question getQuestionById(UUID questionId);

    void createQuestion(QuestionCreation questionCreation);

    void deleteQuestionById(UUID questionId);

    List<Question> getAllQuestions();

    List<SentQuestion> getGameQuestions();
}
