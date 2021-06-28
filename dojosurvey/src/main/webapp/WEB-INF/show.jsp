<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your responses:</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
</head>

<body>
	<div>
			<h5>Submitted Info:</h5>
			
			<div class="d-flex align-items-center flex-column">
				<div class="row">
					<p>Name: ${name}</p>
				</div>
				
				<div class="row">
					<p>Dojo Location: ${location}</p>
				</div>
				
				<div class="row">
					<p>Favorite Language: ${language}</p>
				</div>
				
				<div class="row">
					<p style="width:150px">Comment: ${comment}</p>
				</div>
				
				<div class="row justify-content-end">
					<input class="btn" type="submit" value="Back" onclick="history.back()"/>			
				</div>
				
			</div>
		</div>		
	</div>
</body>
</html>