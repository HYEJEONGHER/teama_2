<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		
	h2{
		font-size:42px;
	}
	a { 
		text-decoration:none;
	 c	olor:white; 
	}
	a:not(#circle):hover { color:#FF385C; }
	
	#mainback{
		height : 1050px;
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
		position: relative;
		top : -650px;
		Z-index : -1;
		background-image:url(../include/img/architecture.png);
	}
	

	.wrap{
		height : 800px;
	}
	.stext{
		font-size : 30px;
		font-weight : bold;
		margin-bottom : 20px;
		margin-top: 20px;
		color : white;
	}
	
	.mainSearch{
		margin-left:auto;
		margin-right:auto;
		padding-top:100px;
		height:auto;
		width:1170px;
	}
		
	.wrap{
		height : 800px;
	}	
						
	.search_button{
		height:50px; width:200px;
		font-size : 22px;
		cursor:pointer;
		margin-top:30px;
		color:white;
		border-radius:10px;
		color:white;
		background-color:#FF385C;
	}
	
	.search_button {
		border-style:none;
		font-weight: bold;
	}


	.text2{
		margin-top:50px;
		font-size : 22px;
	}	
		
		</style>	

</head>
<body>
<%@ include file = "../include/hostheader.jsp" %>
	<div class="wrap">
	
		<div class="mainSearch">
			<div class="stext">
				이웃들을 위한
			</div>	
			<div class="stext">
				공간비즈니스를 시작해보세요!
			<div class="buttonbox">
				<input type="button" value="공간 등록하기" class="search_button" onclick="location.href='/teamA_2/space/newspace.do'">
			</div>
			<div class="text2">| 등록 가능 공간 | 모임 · 촬영 · 연습 · 공유오피스까지</div>
			</div>	
		</div>
	<div id="mainback">
	
	</div>
	</div>
	
<%@ include file = "../include/footer.jsp" %>	
	</body>
</html>
	
