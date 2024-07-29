<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>
    <p class="welcome-text">
        <c:if test="${not empty loginUser}">
            ${loginUser}님 환영합니다!
        </c:if>
        <c:if test="${empty loginUser}">
            로그인 정보가 없습니다.
        </c:if>
    </p>
    <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
    <a href="${pageContext.request.contextPath}/boards/all">모든 게시물 보기</a>
</body>
</html>
