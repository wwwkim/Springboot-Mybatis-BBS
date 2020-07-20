<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Community site -board list</title>
<style>
.con {
width: 1000px;
margin:0 auto;
}
.commonform>div>* {
float: left;
}
.common-form>div::after{
content: "";
display: block;
clear: both;
}
.common-form>div>span{
width: 50px;
}
.common-form>div>div {
width: calc(100% -50px);
}
.common-form>div>div>input[type="text"], .common-form>div>div>textarea{
width: 200px;}
</style>
</head>
<body>
	<h1>Post your Journal</h1>
	<script>
	founction submitAddForm(form){
		form.title.value.langth ==0){
			alert('please enter the title');
			form.title.focus();

			return false;
		}

		form.body.value=form.body.value.trim();
		if(form.body.value.length == 0){
			alert('plese enter the content');
			form.boby.focus();

			return false;
		}
	}

	</script>
	<form class="con common-form" action="./doAdd" method="post"
		onsubmit="submitAddForm(this);return false;">
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
				<textarea name="bady" placeholder="Content"></textarea>
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

</body>
</html>