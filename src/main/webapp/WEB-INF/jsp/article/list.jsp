<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageName" value="Board list"/>
<%@ include file="../part/head.jspf" %>



	<h2 class="con">Posting Q'ty: ${totalCount}</h2>

	<div class="con">

		<c:forEach items="${list}" var="article">
			<section>
			<a href="./detail?id=${article.id }">No:${article.id }, Title:${article.title},Hit:${article.hit}</a></section>
			<hr>
		</c:forEach>

	</div>
	<div class="btns con">

		<a href="./add">add posting</a>
	</div>
<%@ include file="../part/foot.jspf"%>