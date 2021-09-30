<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
		color : black;
	}
	.nav-item_a:hover { color:#FF385C; }
</style>
</head>
<body>
<div class="header" >
			<a href="/teamA_2/index.jsp"><img src="/teamA_2/include/img/logo.png" width="200" class="navimg" ></a>
			<div class="nav">
				<div class="nav-item"><a class="nav-item_a" href="/teamA_2/login/login.do">로그인/회원가입</a></div>
				<div class="nav-item"><a class="nav-item_a" href="/teamA_2/notice/list.do">공지</a></div>
				<div class="nav-item"><a class="nav-item_a" href="/teamA_2/qna/list.do">문의</a></div>
				<div class="nav-item"><a class="nav-item_a" href="/teamA_2/space/bookmark.do">찜한공간</a></div>
				<div class="nav-item"><a class="nav-item_a" href="/teamA_2/reserve/list.do">예약</a></div>
				<div class="nav-item"><a class="nav-item_a" href="/teamA_2/mypage/main.do">내정보</a></div>
				
			</div>
</div>
</body>
</html>