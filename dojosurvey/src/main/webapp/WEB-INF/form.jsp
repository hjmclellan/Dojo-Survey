<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Dojo Survey!!</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
</head>

<body>

	<div class="d-flex flex-column align-items-center mt-5">
		<form class="border border-3 border-dark p-5" method="POST" action="/process">
			<div class="row mb-3">
				<label class="form-label" style="width:150px">Your Name:</label>
				<input class="form-control" style="width:150px" type="text" name="name"/>
			</div>
			
			<div class="row mb-3">
				<label class="form-label" style="width:150px">Dojo Location:</label>
				<select class="form-select" style="width:150px" name="location">
					<option>Bellevue</option>
					<option>Boise</option>
					<option>Chicago</option>
					<option>Dallas</option>
					<option>Los Angeles</option>
					<option>San Jose</option>
					<option>Online</option>
				</select>
			</div>
			
			<div class="row mb-3">
				<label class="form-label" style="width:150px">Favorite Language:</label>
				<select class="form-select" style="width:150px" name="language">
					<option>C#</option>
					<option>CSS</option>
					<option>HTML5</option>
					<option>Java</option>
					<option>JavaScript</option>
					<option>Python</option>
				</select>
			</div>
			
			<div style="width:350px" class="mb-3">
				<label class="form-label">Comment (optional):</label>
				<textarea class="form-control" name="comment"></textarea>
			</div>
			
			<div class="row justify-content-end">
				<input class="btn" type="submit" value="Submit"/>			
			</div>
			
		</form>
	</div>
</body>
</html>