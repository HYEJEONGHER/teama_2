<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/login.css">
<style>
	body{
		height : 1000px;
	}
	footer{
		position: relative;
		top : -800px;
	}
</style>
</head>
<body>
	
		<div class="header">
			<a href="/teamA_2/index.jsp"><img src="/teamA_2/include/img/logo_white.png" width="200px" class="navimg" ></a>
		</div>
			<div class="login">
				<!--로그인안했을때-->
				<form name="frmlogin" action='#.loginok.jsp' method="post" class="frmlogin">
					<div class="rows">
						
						<input type="text" id="id" name="id" placeholder="아이디를 입력하세요">
					</div>
					<div class="rows">
						
						<input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
					</div>
					<div><input type="checkbox" class="checkbox">로그인 기억하기</div>
					<div class="rows">
						<input type="submit" value="로그인" class="btn loginbt">
					</div>
				</form>
					<div class="rows">
						<input type="button" value="회원가입" class="btn joinbt" onClick="location.href='/teamA_2/login/join.do'">
					</div>
				
				<!--로그인했을때-->
			</div>
					
		<div id="mainback">
		</div>
		


<%@ include file = "../include/footer.jsp" %>
</body>
</html>