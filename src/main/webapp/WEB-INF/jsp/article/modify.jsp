<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="Edit post" />

<%@ include file="../part/head.jspf"%>

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
<section class="page-section bg-light" id="portfolio">
	<div class="container">
		<div class="row mb-5 justify-content-center">
			<div class="col-md-12">
				<h2>Modify</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<form action="./doModify" method="post"
					onsubmit="submitModifyForm(this); return false;">
					<input type="hidden" name="id" value="${article.id}">
					<div class="row mb-4">
						<div class="col-md-12">
							<input type="text" name="title" class="form-control"
								placeholder="Title" autofocus="autofocus"
								value="${article.title}">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-md-12">
							<textarea name="body" id="" class="form-control"
								placeholder="Content" cols="30" rows="10">${article.body}</textarea>
						</div>
					</div>
					<div class="row ">
						<div class="col-md-4 text-right">
							<input type="submit" class="btn btn-primary btn-block"
								value="save">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</section>



<%@ include file="../part/foot.jspf"%>