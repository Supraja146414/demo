{% macro deptsalary() %}
SELECT department_name, SUM(salary) AS total_salary
FROM prod.departments d
INNER JOIN prod.employees e ON e.department_id = d.department_id
GROUP BY department_name
{% endmacro %}