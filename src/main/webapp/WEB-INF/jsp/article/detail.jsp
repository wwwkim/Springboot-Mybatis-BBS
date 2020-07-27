<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageName" value="Detail Page" />
<%@ include file="../part/head.jspf"%>

<section class="con">
	No: ${article.id }<br> Title:${article.title }<br>
	Content:${article.body} Hit:${article.hit}
</section>
<div class="btns con">

	<a href="./list">move to list</a> <a href="./add">add post</a> <a
		href="./modify?id=${article.id }">edit post</a> <a
		onclick="if(confirm('Are you sure you want to delete this post?')==false) return false;"
		href="./doDelete?id=${article.id}">delete post</a>

</div>
<%@ include file="../part/foot.jspf"%>