{%macro deptsalary() %}



SELECT d.department_name, SUM(e.salary) AS total_salary
    FROM prod.departments d 
    INNER JOIN prod.employees e ON e.department_id = d.department_id
    GROUP BY 1

    {% endmacro %}
