# StudentManagement

# Prerequisites
1. Eclipse EE
2. Mysql Server & Mysql Workbench
3. Apache Tomcat 
## Java: Spring + Maven
What it is: Spring
It is an open source framework for developing applications on the Java platform. Many other projects are associated with this framework, which have compound names like Spring Boot, Spring Data, Spring Batch, etc. These projects are designed to provide additional functionality to the framework.

## What it is: Spring MVC
In a Spring MVC Web MVC application you have 3 MVC components:
- Models: Domain objects processed by the service layer (business logic) or persistent layer (database operation).
- Views: View the data, usually a JSP page written with the Java Standard Tag Library.
- Controller: Mapping URLs and interacting with the service layer for business processing and returning a model.

# How to use it
it's so simple.
1. just clone it and import/open it into your IDE (like `Eclipse`) and then simply run it.
2. User the following sql to create the inital schema:
```sql
create database student_db;
use student_db;
 
create table IF NOT EXISTS Student_data(
ID int(10) AUTO_INCREMENT,
NAME varchar(20),
Age int(10),
Gender varchar(20),
PRIMARY KEY(ID)
 );
 
insert into Student_data values
 (1,'Jack',20,'Male')

commit;
```
3. In the spring-servlet.xml file change the base-package of the component, the prefix where the bean should search for the jsp and the localhost and db connection parameters.
```
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"  
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  
xmlns:p="http://www.springframework.org/schema/p"  
xmlns:context="http://www.springframework.org/schema/context"  
xsi:schemaLocation="http://www.springframework.org/schema/beans  
http://www.springframework.org/schema/beans/spring-beans-3.0.xsd  
http://www.springframework.org/schema/context  
http://www.springframework.org/schema/context/spring-context-3.0.xsd">

<context:component-scan base-package="com.controllers"></context:component-scan>

<bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
<property name="prefix" value="/WEB-INF/jsp/"></property>
<property name="suffix" value=".jsp"></property>
</bean>

<bean id="ds" class="org.springframework.jdbc.datasource.DriverManagerDataSource">  
<property name="driverClassName" value="com.mysql.jdbc.Driver"></property>  
<property name="url" value="jdbc:mysql://localhost:3306/student_db"></property>  
<property name="username" value="root"></property>  
<property name="password" value="root"></property>  
</bean>  

<bean id="jt" class="org.springframework.jdbc.core.JdbcTemplate">
<property name="dataSource" ref="ds"></property>
</bean>

<bean id="dao" class="com.dao.StudentDao">
<property name="template" ref="jt"></property>
</bean>
</beans>
```

4. you can also compile it using maven with following command:

   ```
   mvn clean install
   ```
