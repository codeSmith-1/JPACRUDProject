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
	
	<form action="delete.do" method="POST">
		Delete by ID: <input type="number" name="id" value="${wallet.id }" class="form-control"/> 
		<input type="submit" value="Delete" class="btn btn-primary btn-sm"/>
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
		
		<c:forEach var="c" items="${cryptos}">
			<tr>
				<td>${c.id}</td>
				<td>${c.symbol}</td>
				<td>${c.currency}</td>
				<td>${c.price}</td>
				<td>${c.amount}</td>
				<td><a href="getTrans.do?id=${c.id}">${c.date }</a>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	<a href="create.do" type="button" class="btn btn-success">Create Transaction</a>
		<br>
		<blockquote class="blockquote text-center">
  <p class="mb-0">"It is great wealth to a soul to live frugally with a contented mind."</p>
 <p> <footer class="blockquote-footer"><cite title="Source Title">Lucretius</p></cite></footer>
</blockquote>

	</main>
</body>
</html>