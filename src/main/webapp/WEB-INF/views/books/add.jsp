
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="post" modelAttribute="book">
    <form:hidden path="id"/>

    <label>Title:</label>
    <form:input path="title"/>
    <form:errors path="title"/>
    <br>
    <label>Author:</label>
    <form:input path="author"/>
    <form:errors path="author"/>
    <br>
    <label>ISBN:</label>
    <form:input path="isbn"/>
    <form:errors path="isbn"/>
    <br>
    <label>Publisher:</label>
    <form:input path="publisher"/>
    <form:errors path="publisher"/>
    <br>
    <label>Publication Year:</label>
    <form:input path="publicationYear"/>
    <form:errors path="publicationYear"/>
    <br>
    <label>Genre:</label>
    <form:input path="genre"/>
    <form:errors path="genre"/>
    <br>
    <label>Photo:</label>
    <form:input path="photo"/>
    <form:errors path="photo"/>
    <br>
    <label>Bookshelf:</label>
    <form:textarea path="bookshelf"/>
    <form:errors path="bookshelf"/>
    <br>


    <input type="submit" value="Save">
</form:form>


</body>
</html>
