<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageName" value="Join Us" />
<%@ include file="../part/head.jspf"%>
<script>
	function submitJoinForm(form) {
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
		form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
		if (from.loginPwConfirm.value.length == 0) {
			alert('please enter the Password');
			form.loginPwConfirm.focus();

			return false;
		}
		form.submit();
	}
</script>
<section class="page-section bg-light" id="portfolio">
	<div class="container text-center col-lg-4">
		<div class="jumbotron " style="width: 100%;">
			<div class="text-center">
				<h2 class="section-heading">Sign in</h2>

				<form class="form-singin" action="./doJoin" method="post"
					novalidate="novalidate"
					onsubmit="submitJoinForm(this); return false;">

					<div class="text-center">

						<div class="form-singin ">
							<input class="form-control" name="loginId" type="text"
								placeholder="Your ID *" required="required"
								autofocus="autofocus"
								data-validation-required-message="Please enter your ID." />
							<p class="help-block text-danger"></p>
						</div>

					</div>


					<div class="text-center">
						<div class="form-singin">
							<input class="form-control" name="loginPw" type="password"
								placeholder="Your Password *" required="required"
								autofocus="autofocus"
								data-validation-required-message="Please renter your password." />
							<p class="help-block text-danger"></p>
						</div>
					</div>

					<div class="text-center">
						<div class="form-singin">
							<input class="form-control" name="loginPwConfirm" type="password"
								placeholder="Confirm Password *" required="required"
								autofocus="autofocus"
								data-validation-required-message="Please enter your password." />
							<p class="help-block text-danger"></p>
						</div>
					</div>


					<div class="text-center">
						<div id="success"></div>
						<button class="btn btn-primary btn-block text-uppercase"
							type="submit">sign in</button>

					</div>

				</form>
			</div>
		</div>
	</div>

</section>


<%@ include file="../part/foot.jspf"%>
