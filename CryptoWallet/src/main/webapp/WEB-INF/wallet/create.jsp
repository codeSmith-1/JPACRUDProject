<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Create Transaction</title>
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


		<h2>Create Transaction</h2>

		<hr>
		<form action="submitTrans.do" name=form method="POST">
			<select class="form-select" aria-label="Default select example"
				name="currency">
				<option value="Bitcoin">Bitcoin</option>
				<option value="Ethereum">Ethereum</option>
				<option value="Solana">Solana</option>
			</select>

			<div class="input-group">
				<span class="input-group-addon">$</span> <input required="required" name="price" type="text"
					class="form-control" placeholder="Price" />
			</div>
			Amount acquired: <input required="required" type="number" step="any" name="amount">
			<br>
			Date: <input required="required" type="date" name="date"/>
			<br> <input type="submit" value="Create" /> <br>
		</form>
	</main>
</body>
</html>
