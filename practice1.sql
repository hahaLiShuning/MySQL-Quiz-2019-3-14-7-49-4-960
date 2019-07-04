# 1.创建数据库employee_db

CREATE DATABASE IF NOT EXISTS `employee_db` DEFAULT CHARACTER SET utf8;

# 2.在数据库employee_db中创建table：`Employee`

USE employee_db;

CREATE TABLE Employee(
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(20),
    companyId INT NOT NULL,
    salary INT NOT NULL
) engine=InnoDB DEFAULT CHARSET = utf8;

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中

LOAD DATA LOCAL INFILE 'C:/Users/LIShuning/Desktop/MySQL-Quiz-2019-3-14-7-49-4-960/company-data.csv' INTO TABLE Employee FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (id, name, age, gender, companyId, salary);

# 4.在数据库employee_db中创建table：`Company`

CREATE TABLE Company(
    id INT PRIMARY KEY,
    companyName VARCHAR(255) NOT NULL,
    employeesNumber INT NOT NULL
) engine=InnoDB DEFAULT CHARSET = utf8;

# 5.将`company-data.csv`文件中的数据导入Company数据表中

LOAD DATA LOCAL INFILE 'C:/Users/LIShuning/Desktop/MySQL-Quiz-2019-3-14-7-49-4-960/employee-data.csv' INTO TABLE Company FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (id, companyName, employeesNumber);

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息

SELECT * FROM Employee WHERE `name` LIKE '%n%' AND salary > 6000;

# ps:本练习中只需要将6的结果复制到`result.txt`文件中