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

		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
		<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
		<script>
			$(function() {
				$("#datepicker").datepicker();
			});
		</script>
		
		<h2>Create Transaction</h2>

		<hr>

		<form action="submitTrans.do" name=form method="POST">

			<br> Currency: <input type="text" name="currency"> 
			<br> Price: <input type="number" name="price"> 
			<br> Amount acquired: <input type="number" step="any" name="amount"> 
			<input type="submit" value="Create" /> <br>
		</form>
	</main>
</body>
</html>
