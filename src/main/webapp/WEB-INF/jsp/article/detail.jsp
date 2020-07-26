<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Community site -board list</title>
<style>
.con{
width:1000px;
margin: 0 auto;
}
</style>
</head>
<body>
	<h1 class="con">Detail Page</h1>

<section class="con">
No: ${article.id }<br>
Title:${article.title }<br>
Content:${article.body}
</section>
<div class="btns con">

<a href ="./list">move to list</a>
<a href ="./add">add post</a>
<a href ="./modify?id=${article.id }">edit post</a>
<a onclick = "if(confirm('Are you sure you want to delete this post?')==false) return false;" href="./doDelete?id=${article.id}">delete post</a>

</div>

</body>
</html>