<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function topBtn(){
		location.href = "#top";
	}
</script>
<style>
	#circle {
		background-color:#FF385C;
		width:75px; height:75px;
		border-radius:55px;
		text-align:center;
		margin:0 auto;
		font-size:20px; color:#fff;
		vertical-align:middle;
		line-height:75px;
		cursor:pointer;
		position : fixed;
		right : 20px;
		bottom : 20px;
		}
</style>
</head>
<body>
	<div id="circle" onclick="topBtn()">
		TOP
	</div>
</body>
</html>