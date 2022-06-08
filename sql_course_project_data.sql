USE university_project;

SET SQL_SAFE_UPDATES = 0;

INSERT INTO students(student_name)
VALUES('Gawr Gura');

INSERT INTO students(student_name)
VALUES ('Amelia Watson');

INSERT INTO students(student_name)
VALUES ('Ninomae Inanis');

INSERT INTO students(student_name)
VALUES ('IRyS Hakos');

INSERT INTO students(student_name)
VALUES ('Nanshi Mumei');

INSERT INTO students(student_name)
VALUES ('Baelz Hakos');

INSERT INTO students(student_name)
VALUES ('Kronii Ouro');

INSERT INTO professors(professor_name)
VALUES ('Calliope Mori');

INSERT INTO professors(professor_name)
VALUES ('Takanashi Kiara');

INSERT INTO professors(professor_name)
VALUES ('Fauna Ceres');

INSERT INTO professors(professor_name)
VALUES ('Tsukumo Sana');

INSERT INTO professors(professor_name)
VALUES ('Yagoo');

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Minecraft for noobs', 1, 2);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Minecraft for noobs', 2, 2);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Minecraft for noobs', 3, 2);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Blue Superchats', 1, 3);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Blue Superchats', 3, 3);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Blue Superchats', 4, 3);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Blue Superchats', 5, 3);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('How to not horni', 2, 5);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('How to not horni', 6, 5);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('How to not horni', 7, 5);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Finding Gura', 2, 1);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Finding Gura', 3, 1);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Finding Gura', 4, 1);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('How to forgor and remember', 1, 4);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('How to forgor and remember', 4, 4);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('How to forgor and remember', 5, 4);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('How to forgor and remember', 6, 4);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Guh and Wah', 1, 1);

INSERT INTO courses(course_name, cour_stu_id, cour_prof_id)
VALUES ('Guh and Wah', 3, 1);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (7, 1, 2, 1);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (10, 2, 2, 1);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (6, 3, 2, 1);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (4, 1, 3, 4);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (9, 3, 3, 4);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (7, 4, 3, 4);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (7, 5, 3, 4);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (2, 2, 5, 8);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (6, 6, 5, 8);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (10, 7, 5, 8);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (10, 2, 1, 11);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (10, 3, 1, 11);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (5, 4, 1, 11);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (8, 1, 4, 14);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (7, 4, 4, 14);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (0, 5, 4, 14);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (8, 6, 4, 14);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (6, 1, 1, 18);

INSERT INTO grades(grade_num, grade_id_student, grade_id_professor, grade_id_course)
VALUES (9, 3, 1, 18);
