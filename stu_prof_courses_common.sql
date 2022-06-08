USE university_project;

SELECT students.student_name, professors.Professor_name, COUNT(courses.Course_name)
FROM students, professors, courses
WHERE students.students_id = courses.cour_stu_id AND professors.Professor_id = courses.cour_prof_id
GROUP BY students.student_name, professors.Professor_name
ORDER BY COUNT(courses.Course_name) DESC
LIMIT 1;