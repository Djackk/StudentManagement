    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<center>
	<h1>Student List</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Id</th><th>Name</th><th>Age</th><th>Gender</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="stud" items="${list}">
    <tr>
    <td>${stud.id}</td>
    <td>${stud.name}</td>
    <td>${stud.age}</td>
    <td>${stud.gender}</td>
    <td><a href="editstud/${stud.id}">Edit</a></td>
    <td><a href="deletestud/${stud.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="studform">Add New Student</a>
</center>
