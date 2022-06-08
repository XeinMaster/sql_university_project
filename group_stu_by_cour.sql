USE university_project;

SELECT courses.Course_name, students.student_name
FROM students, courses
WHERE students.students_id = courses.cour_stu_id
GROUP BY students.student_name, courses.Course_name
ORDER BY courses.Course_name;