USE university_project;

SELECT courses.Course_name, AVG(grades.grade_num)
FROM courses, grades
WHERE courses.Course_id = grades.grade_id_course
GROUP BY courses.Course_name
ORDER BY AVG(grades.grade_num);