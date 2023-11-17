package com.gclefrei.apiquestions.entities;

import jakarta.persistence.*;

import java.util.List;
import java.util.UUID;

@Entity(name = "QUESTION")
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "QUESTION_TEXT", nullable = false)
    private String question;

    @Column(name = "RIGHT_ANSWER", nullable = false)
    private String rightAnswer;

    @ElementCollection
    @Column(name = "WRONG_ANSWERS", nullable = false)
    private List<String> wrongAnswers;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getRightAnswer() {
        return rightAnswer;
    }

    public void setRightAnswer(String rightAnswer) {
        this.rightAnswer = rightAnswer;
    }

    public List<String> getWrongAnswers() {
        return wrongAnswers;
    }

    public void setWrongAnswers(List<String> wrongAnswers) {
        this.wrongAnswers = wrongAnswers;
    }
}
