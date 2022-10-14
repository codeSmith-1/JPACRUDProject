<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
<title>Film</title>
<jsp:include page="../bootstrapHead.jsp"/>  
</head>
 <main class="container-fluid">

<body>
<jsp:include page="../navBar.jsp"/>

<p>Date: <input type="text" id="datepicker"></p>
  <h5>${film.title} (${film.releaseYear})</h5>
  <p>${film.description}</p>
  <br>
</main>
 
</body>
</html>



 
 
 