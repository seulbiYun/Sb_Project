<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}

	header h1{
		text-align: center;
		color:#ABD0CE;
		text-shadow: 4px 2px 2px #D9D4CF;
		margin: 30px 0;
		font-size: 40px;
	}
	nav{
		width: 100%;
		height: 60px;
		background-color: #ABD0CE;
	}
	nav ul{
		list-style: none;
		padding :0;
		width: 800px;
		margin:0 auto;
	}
	nav li{
		width: 200px;
		float:left;
		line-height: 60px;
		text-align: center;
	}
	nav a {
		color:#7C7877;
		text-decoration: none;
		font-size: 18px;
	}
	nav a.on{
		background-color: #F0E5DE;
		font-weight: bold;
		display: block;
		padding:0 0 15px;
		border-radius: 0 0 10px 10px;
		line-height: 60px;
		box-shadow: 0 5px 6px 0 #7C7877;
	}
	#container{
		width: 780px;
		margin: 0 auto;
		padding:10px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<header>
	<h1>Tambi's PROJECT</h1>
</header>
<nav>
	<ul>
		<li>
			<a href = "${pageContext.request.contextPath }/sbP/list.do" class = "on">프로젝트 관리 시스템</a>
		</li>
	</ul>
</nav>
<div id = "container">