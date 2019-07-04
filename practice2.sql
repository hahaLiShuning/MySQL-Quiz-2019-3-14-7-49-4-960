# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

SELECT companyName, `name` FROM 
  (SELECT employee.*, company.companyName FROM Employee LEFT JOIN Company ON Employee.companyId = Company.id) employee Right JOIN 
  (SELECT companyId, max(salary) AS maxval FROM Employee GROUP BY companyId) t ON t.maxval = employee.salary AND employee.companyId = t.companyId;