# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

SELECT * FROM (SELECT A.*, B.avgsal FROM  (SELECT employee.*, company.companyName FROM Employee LEFT JOIN Company ON Employee.companyId = Company.id) A LEFT JOIN (SELECT companyId, avg(salary) AS avgsal FROM Employee GROUP BY companyId) B ON A.companyId = B.companyId
) t WHERE t.salary >= t.avgsal;