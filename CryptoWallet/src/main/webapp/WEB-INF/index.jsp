<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapHead.jsp"/>  
<!-- link to css style sheet -->

<title>Crypto Wallet</title>
</head>
<body>
<jsp:include page="navBar.jsp"/>
<main class="container-fluid">
	<h1>Crypto Wallet</h1>

	<form action="home.do" method="GET">
		Transaction ID: <input type="text" name="id" class="form-control"/> 
		<input type="submit" value="Display Trans" class="btn btn-primary"/>
	</form>
	<hr>
	<table class="table table-striped table-hover">
		<thead class="table-light">
			<tr>
				<th>Id</th>
				<th>Symbol</th>
				<th>Currency</th>
				<th>Price</th>
				<th>Amount</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
		<c:forEach var="c" items="${cryptos}">
			<tr>
				<td>${c.id}</td>
				<td>${c.symbol}</td>
				<td>${c.currency}</td>
				<td>${c.price}</td>
				<td>${c.amount}</td>
				<td>${c.date}</td>
				<td><a href="getTrans.do?fid=${c.id}">${c.date }</a>
			</tr>
		</c:forEach>
	</table>
	</main>
</body>
</html>