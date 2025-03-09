SELECT A.department_name, A.total_salary, 
       DENSE_RANK() OVER(ORDER BY total_salary DESC) AS rank_
FROM ( 
    SELECT * FROM {{ ref('deptsalary') }} 
) AS A
QUALIFY rank_ < 3;