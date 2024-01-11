package com.gclefrei.apiquestions.repositories;

import com.gclefrei.apiquestions.entities.Question;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.UUID;

public interface QuestionRepository extends CrudRepository<Question, UUID> {

    @Query(value = "SELECT DISTINCT * FROM question ORDER BY RANDOM() LIMIT :limit", nativeQuery = true)
    List<Question> getRandomQuestions(@Param("limit") int limit);

    List<Question> findByIdIn(List<UUID> ids);
}
