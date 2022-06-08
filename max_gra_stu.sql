USE university_project;

SELECT students.student_name, MAX(grades.grade_num)
FROM students, grades
WHERE students.students_id = grades.grade_id_student
GROUP BY students.student_name;