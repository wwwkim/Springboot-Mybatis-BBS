<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageName" value="login" />
<%@ include file="../part/head.jspf"%>
<script>
	function submitLoginForm(form) {
		form.loginId.value = form.loginId.value.trim();
		if (from.loginId.value.length == 0) {
			alert('please enter the ID');
			form.loginId.focus();

			return false;
		}
		form.loginPw.value = form.loginPw.value.trim();
		if (from.loginPw.value.length == 0) {
			alert('please enter the Password');
			form.loginPw.focus();

			return false;
		}

		form.submit();
	}
</script>

<form class="con common-form" action="./doLogin" method="POST"
	onsubmit="submitLoginForm(this); return false;">
	<div>
		<span> Login ID </span>
		<div>
			<input name="loginId" type="text" placeholder="ID"
				autofocus="autofocus" maxlength="30">
		</div>
	</div>
	<div>
		<span>Login Password</span>
		<div>
			<input name="loginPw" type="password" placeholder="Password"
				autofocus="autofocus" maxlength="30">
		</div>
	</div>

	<div>

		<div>
			<input type="submit" value="login"><input type="reset"
				value="Cancel" onclick="history.back();">
		</div>
	</div>

</form>
<div class="btns con">
<a href ="/">main</a>
<a href ="/member/join">join</a>
</div>
<%@ include file="../part/foot.jspf"%>
