<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageName" value="Board list" />
<%@ include file="../part/head.jspf"%>
<section class="page-section bg-light" >

	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">No</th>
						<th style="background-color: #eeeeee; text-align: center;">Title</th>
						<th style="background-color: #eeeeee; text-align: center;">Hit</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="article">
						<tr>
							<td>${article.id }</td>
							<td><a href="./detail?id=${article.id }">${article.title}</a></td>
							<td>${article.hit}</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<a href="./add" class="btn btn-primary text-right">Write</a>
		</div>
	</div>

</section>


<h2 class="con">Posting Q'ty: ${totalCount}</h2>

<div class="btns con">

	<a href="">add posting</a>
</div>
<%@ include file="../part/foot.jspf"%>