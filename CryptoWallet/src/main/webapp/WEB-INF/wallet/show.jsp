<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Transaction details</title>
</head>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<body>
<main class="container-fluid">
<jsp:include page="../bootstrapHead.jsp" />


	<jsp:include page="../navBar.jsp" />

	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
		<script>
			$(function() {
				$("#datepicker").datepicker();
			});
		</script>
<h2>Edit Transaction</h2>

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
			<tr>
				<td>${trans.id}</td>
				<td>${trans.symbol}</td>
				<td>${trans.currency}</td>
				<td>${trans.price}</td>
				<td>${trans.amount}</td>
				<td>${trans.date }</td>
			</tr>
	</tbody>
	</table>


	<form action="edit.do" name=form method="POST">
	<input type="hidden" name="id" value="${trans.id }"/>
		<br> Currency: <input type="text" name="currency" value="${trans.currency }"/>
		<br> Price: <label for="currency-field"></label><input type="number" name="price" value="${trans.price }">  
		 <br> Amount acquired: <input type="number" name="amount" value="${trans.amount }"> 
				<input type="hidden" name="symbol" value="${trans.symbol }"/>
		<br>
		<input type="submit" value="Update"/>
	<br>
		<script>
			$(function() {
				$("#datepicker").datepicker();
			});
		</script>
	</form>
	</main>
</body>


</html>





