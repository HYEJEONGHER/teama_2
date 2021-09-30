<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
		margin : 0px;
		background-color : #f6f6f6;
	}
.header{
	height:90px;
	display:flex;
	align-items:center;
	padding-left:20px;
	padding-top:15px;
	
	}
	.navimg{
	margin-bottom:10px;
	}
	.nav{
	display:flex;
	margin-left:auto;
	margin-right:30px;
	font-size:20px;
	font-weight:bold;
	}
	.nav-item{
	margin-left:30px;
	}
	a { 
		text-decoration:none;
		color : white;
	}
	.nav-item_a:hover { color:#FF385C; }
</style>
</head>
<body>
<div class="header" >
			<a href="/teamA_2/index.jsp"><img src="/teamA_2/include/img/logo_white.png" width="200" class="navimg" ></a>
			<div class="nav">
				<div class="nav-item"><a class="nav-item_a" href="/teamA_2/index.jsp">게스트센터</a></div>
				<div class="nav-item"><a href="/teamA_2/login/login.jsp">로그인/회원가입</a></div>
			</div>
</div>
</body>
</html>