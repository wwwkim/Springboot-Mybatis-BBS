<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Community site -board list</title>
</head>
<body>
	<h1>Board List</h1>



<h2>Version 2</h2>
<c:forEach items="${list}" var="article">
<section>
ID:${article.id },
Title:${article.title}
</section>
<hr>
</c:forEach>

</body>
</html>