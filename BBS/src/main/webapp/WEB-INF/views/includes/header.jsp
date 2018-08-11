<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" 
value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!-- Favicons -->
<link rel="apple-touch-icon" href="/resources/assets/img/apple-icon.png">
<link rel="icon" href="/resources/assets/img/favicon.png">
<title>Personal Blog</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="/resources/assets/css/material-dashboard.css?v=2.0.1">
<!-- Documentation extras -->
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="/resources/assets/assets-for-demo/demo.css" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<!-- iframe removal -->
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8iJqPPW6t2YOtavuUPFtbcNFwtHdvAHk&callback=initMap"
   	 async defer></script>
   	 <script src="${path}/libraries/jquery.min.js"></script>
   	 <script>
		function getData() {
			$.ajax({
				type: "get",
				url: "${path}/saveData",
				success: function(result){
					$('#result').html("Product:" + result.name +", price " + result.price)
				}
			})
		}
		
	</script>
</head>