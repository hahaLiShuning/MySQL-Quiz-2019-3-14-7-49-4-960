#取得平均薪水最高的公司

SELECT companyId, avg(salary) AS avgSalary from employee GROUP BY employee.companyId ORDER BY avgSalary DESC LIMIT 1;

#输出公司名称和平均薪水：companyName avgSalary

SELECT companyName, avgSalary FROM (SELECT companyId, avg(salary) AS avgSalary FROM Employee GROUP BY companyId) A INNER JOIN Company B ON A.companyId=B.id
