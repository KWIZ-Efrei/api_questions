package com.gclefrei.apiquestions.dtos;

import java.util.List;
import java.util.UUID;

public class SentQuestion {
    private UUID id;
    private String questionText;
    private List<String> answers;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getQuestionText() {
        return questionText;
    }

    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }

    public List<String> getAnswers() {
        return answers;
    }

    public void setAnswers(List<String> answers) {
        this.answers = answers;
    }
}
