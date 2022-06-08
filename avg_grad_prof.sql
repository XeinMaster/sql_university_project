USE university_project;

SELECT professors.Professor_name, AVG(grades.grade_num)
FROM professors, grades
WHERE professors.Professor_id = grades.grade_id_professor
GROUP BY professors.Professor_name;