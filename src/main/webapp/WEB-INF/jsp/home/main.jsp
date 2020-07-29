<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageName" value="Main" />
<%@ include file="../part/head.jspf"%>

<c:if test="${loginedMember != null}">

	<div class="con">login ID :${loginedMember.loginId }</div>

</c:if>


<%@ include file="../part/foot.jspf"%>