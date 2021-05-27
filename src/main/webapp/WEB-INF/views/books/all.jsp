<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
  <tr>
    <th>Id</th>
    <th>Title</th>
    <th>Author</th>
    <th>Genre</th>
    <th>Photo</th>
    <th>Action</th>
  </tr>
  <c:forEach items="${books}" var="book">
    <tr>
      <th>${book.id}</th>
      <th>${book.title}</th>
      <th>${book.author}</th>
      <th>${book.genre}</th>
      <th>${book.photo}</th>
      <td><button><a href="<c:url value="/book/details/${book.id}"/>">Details</a></button></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
