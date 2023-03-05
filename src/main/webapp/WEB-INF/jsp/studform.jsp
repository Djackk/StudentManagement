<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<center>
		<h1>Add New Student</h1>
       <form:form method="post" action="save">
      	<table >
         <tr>
          <td>Name : </td>
          <td><form:input path="name"  /></td>
         </tr>
         <tr>
          <td>Age :</td>
          <td><form:input path="age" /></td>
         </tr>
         <tr>
          <td>Gender :</td>
          <td><form:input path="gender" /></td>
         </tr>
         <tr>
          <td> </td>
          <td><input type="submit" value="Save" /></td>
         </tr>
        </table>
       </form:form>
</center>
