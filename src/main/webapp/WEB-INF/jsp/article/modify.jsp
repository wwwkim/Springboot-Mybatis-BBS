<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="Edit post"/>

<%@ include file="../part/head.jspf" %>

<script>
	function submitModifyForm(form) {
		form.title.value = form.title.value.trim();
		if (form.title.value.length == 0) {
			alert('please enter the title');
			form.title.focus();

			return false;
		}

		form.body.value = form.body.value.trim();
		if (form.body.value.length == 0) {
			alert('please enter the content');
			form.body.focus();

			return false;
		}

		form.submit();
	}
</script>

<form class="con common-form" action="./doModify" method="POST"
	onsubmit="submitModifyForm(this); return false;">
	<input type="hidden" name="id" value="${article.id}">
	<div>
		<span> title </span>
		<div>
			<input name="title" type="text" placeholder="title"
				autofocus="autofocus" value="${article.title}">
		</div>
	</div>

	<div>
		<span> content </span>
		<div>
			<textarea name="body" placeholder="content">${article.body}</textarea>
		</div>
	</div>

	<div>
		<span> modify </span>
		<div>
			<input type="submit" value="save"> <input type="reset"
				value="cancle" onclick="history.back();">
		</div>
	</div>
</form>

<%@ include file="../part/foot.jspf"%>