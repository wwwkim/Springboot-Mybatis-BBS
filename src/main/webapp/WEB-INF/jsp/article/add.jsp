<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageName" value="Add post" />
<%@ include file="../part/head.jspf"%>
<script>
	function submitAddForm(form) {
		form.title.value = form.title.value.trim();
		if (from.title.value.lenth == 0) {
			alert('please enter the title');
			form.title.focus();

			return false;
		}
		form.body.value = form.body.value.trim();
		alert('please enter the content');
		form.body.focus();

		return false;
	}
	form.submit();
	}
</script>

<form class="con common-form" action="./doAdd" method="POST"
	onsubmit="submitAddForm(this); return false;">
	<div>
		<span> Title </span>
		<div>
			<input name="title" type="text" placeholder="Title"
				autofocus="autofocus">
		</div>
	</div>
	<div>
		<span>Content</span>
		<div>
			<textarea name="body" placeholder="Content"></textarea>
		</div>
	</div>
	<div>
		<span> Register</span>
		<div>
			<input type="submit" value="Done"><input type="reset"
				value="Cancel" onclick="history.back();">
		</div>
	</div>

</form>
<%@ include file="../part/foot.jspf"%>
