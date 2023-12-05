-- Check if question_wrong_answers table exists
DO $$
    BEGIN
        IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'question_wrong_answers') THEN
            DELETE FROM question_wrong_answers;
        END IF;
    END $$;

-- Check if question table exists
DO $$
    BEGIN
        IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'question') THEN
            DELETE FROM question;
        END IF;
    END $$;


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           '95de4d9b-ae7b-4688-8c88-16e288127609',
           'Question 1',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('95de4d9b-ae7b-4688-8c88-16e288127609', 'Mauvaise réponse'),
    ('95de4d9b-ae7b-4688-8c88-16e288127609', 'Mauvaise réponse'),
    ('95de4d9b-ae7b-4688-8c88-16e288127609', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           '0cf0fd71-3829-492a-b8e3-811a6f1675d8',
           'Question 2',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('0cf0fd71-3829-492a-b8e3-811a6f1675d8', 'Mauvaise réponse'),
    ('0cf0fd71-3829-492a-b8e3-811a6f1675d8', 'Mauvaise réponse'),
    ('0cf0fd71-3829-492a-b8e3-811a6f1675d8', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           '7d31f2d6-854e-11ee-b9d1-0242ac120002',
           'Question 3',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('7d31f2d6-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('7d31f2d6-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('7d31f2d6-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           '974bf86a-854e-11ee-b9d1-0242ac120002',
           'Question 4',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('974bf86a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('974bf86a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('974bf86a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           'a49b176c-854e-11ee-b9d1-0242ac120002',
           'Question 5',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('a49b176c-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('a49b176c-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('a49b176c-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           'b4bb5602-854e-11ee-b9d1-0242ac120002',
           'Question 6',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('b4bb5602-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('b4bb5602-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('b4bb5602-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           'c010b65a-854e-11ee-b9d1-0242ac120002',
           'Question 7',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('c010b65a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('c010b65a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('c010b65a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           'caa977aa-854e-11ee-b9d1-0242ac120002',
           'Question 8',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('caa977aa-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('caa977aa-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('caa977aa-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           'd70f7634-854e-11ee-b9d1-0242ac120002',
           'Question 9',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('d70f7634-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('d70f7634-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('d70f7634-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           'e7ea77a6-854e-11ee-b9d1-0242ac120002',
           'Question 10',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('e7ea77a6-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('e7ea77a6-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('e7ea77a6-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           'f38bb07a-854e-11ee-b9d1-0242ac120002',
           'Question 11',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('f38bb07a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('f38bb07a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('f38bb07a-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           'ff6c9b84-854e-11ee-b9d1-0242ac120002',
           'Question 12',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('ff6c9b84-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('ff6c9b84-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('ff6c9b84-854e-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           '0ab5a0b2-854f-11ee-b9d1-0242ac120002',
           'Question 13',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('0ab5a0b2-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('0ab5a0b2-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('0ab5a0b2-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           '15f25826-854f-11ee-b9d1-0242ac120002',
           'Question 14',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('15f25826-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('15f25826-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('15f25826-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse');


INSERT INTO question (id, QUESTION_TEXT, RIGHT_ANSWER)
VALUES (
           '2732415a-854f-11ee-b9d1-0242ac120002',
           'Question 15',
           'Bonne réponse'
       );

INSERT INTO question_wrong_answers (question_id, wrong_answers)
VALUES
    ('2732415a-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('2732415a-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse'),
    ('2732415a-854f-11ee-b9d1-0242ac120002', 'Mauvaise réponse');