<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageName" value="Detail Page" />
<%@ include file="../part/head.jspf"%>
<section class="page-section bg-light">
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">No.${article.id }</th>
						<th style="background-color: #eeeeee; text-align: center;">Title :${article.title}</th>
						<th style="background-color: #eeeeee; text-align: center;">Hit.${article.hit}</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="3">${article.body }</td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>

</section>


<a href="./list" class="btn btn-primary">list</a>

<a href="./add" class="btn btn-primary">write</a>

<a href="./modify?id=${article.id }" class="btn btn-primary">edit</a>

<a
	onclick="if(confirm('Are you sure you want to delete this post?')==false) return false;"
	href="./doDelete?id=${article.id}" class="btn btn-primary">delete</a>

<%@ include file="../part/foot.jspf"%>