package com.gclefrei.apiquestions.services;

import com.gclefrei.apiquestions.dtos.QuestionCreation;
import com.gclefrei.apiquestions.dtos.SentQuestion;
import com.gclefrei.apiquestions.entities.Question;
import com.gclefrei.apiquestions.repositories.QuestionRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class QuestionServiceImpl implements QuestionService {

    private final QuestionRepository repository;

    public QuestionServiceImpl(QuestionRepository repository) {
        this.repository = repository;
    }

    @Override
    public Question getQuestionById(UUID questionId){
        return repository.findById(questionId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
    }

    @Override
    public void createQuestion(QuestionCreation questionCreation) {
        Question question = new Question();

        question.setQuestion(questionCreation.getQuestionText());
        question.setRightAnswer(questionCreation.getRightAnswer());
        question.setWrongAnswers(questionCreation.getWrongAnswers());

        repository.save(question);
    }

    @Override
    public void deleteQuestionById(UUID questionId) {
        repository.deleteById(questionId);
    }

    @Override
    public List<Question> getAllQuestions() {
        List<Question> result = new ArrayList<>();
        repository.findAll().forEach(result::add);
        return result;
    }

    @Override
    public List<SentQuestion> getGameQuestions() {
        return null;
    }
}
