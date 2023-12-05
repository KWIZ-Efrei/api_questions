package com.gclefrei.apiquestions.controllers;

import com.gclefrei.apiquestions.dtos.AnswerAttempt;
import com.gclefrei.apiquestions.dtos.ListOfQuestionIds;
import com.gclefrei.apiquestions.dtos.QuestionCreation;
import com.gclefrei.apiquestions.dtos.SentQuestion;
import com.gclefrei.apiquestions.entities.Question;
import com.gclefrei.apiquestions.services.QuestionService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
public class QuestionController {

    private final QuestionService service;

    public QuestionController(QuestionService service) {
        this.service = service;
    }

    @GetMapping("/questions")
    List<Question> getAllQuestions(){
        return service.getAllQuestions();
    }

    @GetMapping("/sent-questions/{questionId}")
    SentQuestion getSentQuestionById(@PathVariable UUID questionId) {
        return service.getSentQuestionById(questionId);
    }

    @GetMapping("/questions/random/{quantity}")
    List<SentQuestion> getRandomQuestions(@PathVariable int quantity) {
        return service.getGameQuestions(quantity);
    }

    @PostMapping("/questions/answer/{questionId}")
    boolean attemptAnAnswer(@PathVariable UUID questionId, @RequestBody AnswerAttempt answerAttempt) {
        return service.verifyAnswer(questionId, answerAttempt.getAttemptedAnwser());
    }

    @PostMapping("/questions")
    void createQuestion(@RequestBody QuestionCreation questionInfos) {
        service.createQuestion(questionInfos);
    }

    @PostMapping("/sent-questions-by-id")
    List<SentQuestion> getQuestionsByIds(@RequestBody ListOfQuestionIds ids){
        return service.getSentQuestionsByIds(ids.getIds());
    }

    @DeleteMapping("/questions/{questionId}")
    void deleteQuestionById(@PathVariable UUID questionId){
        service.deleteQuestionById(questionId);
    }
}
