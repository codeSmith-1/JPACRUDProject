<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<jsp:include page="../bootstrapHead.jsp" />
<jsp:include page="../navBar.jsp" />
<html>
<head>
<title>Great success!</title>
</head>
<body>
<main class="container-fluid">
	
	<br>
<c:choose>
  <c:when test="${success == true}">
    <p>Transaction ID: ${wallet.id } updated.</p>
  </c:when>
  <c:when test="${not empty newTrans}">
   <p>Transaction added: ${newTrans.id }</p>
  </c:when>
  <c:when test="${delete == true}">
   <p>Transaction deleted.</p>
  </c:when>
  <c:otherwise>
    <p>Unable to process request.</p>
  </c:otherwise>
</c:choose>
	<a href="home.do">Return</a>
</main>
</body>





</html>
