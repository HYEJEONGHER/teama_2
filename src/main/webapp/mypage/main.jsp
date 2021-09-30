<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지메인</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/layout.css"/>
<style>
	h2{
		margin : 0px;
		text-align:center;
		font-size : 42px;
	}
	
	table{
		margin-top : 50px;
		width : 1170px;
		height : 400px;
	}
	.menu{
		cursor : pointer;
		font-size : 15px;
		vertical-align : middle;
		text-align: center	
	}
	
	.menuTitle{
		font-weight : bold;
		font-size : 30px;
		color:#FF385C;
	}
	.line2{
		border-top:3px solid #FF385C;
	}
</style>
<script>
	function move(type){
		if(type == '1'){
			location.href = "/teamA_2/reserve/list.do";
		}else if(type == '2'){
			location.href = "/teamA_2/space/bookmark.do";
		}else if(type == '3'){
			location.href = "/teamA_2/hostQNA/list.do";
		}else if(type == '4'){
			location.href = "/teamA_2/host/main.do";
		}else if(type == '5'){
			location.href = "/teamA_2/qna/list.do";
		}else if(type == '6'){
			location.href = "/teamA_2/mypage/loginCheck.do";
		}
		
		
	}

</script>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
<h2>내정보</h2>
<div class="mainbac">
	<table>
		<tr>
			<td>
				<div class="menu" onclick="move('1')">
					<span class="menuTitle">예약정보</span>
					<p>예약한 공간의 정보를 확인할 수 있습니다.</p>
				</div>
			</td>
			<td class="line">
				<div class="menu" onclick="move('2')">
					<span class="menuTitle">찜한공간</span>
					<p>찜한 공간의 정보를 확인할 수 있습니다.</p>
				</div>
			</td>
			<td>
				<div class="menu" onclick="move('3')">
					<span class="menuTitle">QNA/후기</span>
					<p>공간에 대한 질문과 후기를 작성할수 있습니다.</p>
				</div>
			</td>
		</tr>
		<tr class="line2">
			<td>
				<div class="menu" onclick="move('4')">
					<span class="menuTitle">호스트센터</span>
					<p>제공하고 싶은 공간을 등록할 수 있습니다.</p>
				</div>
			</td>
			<td class="line">
				<div class="menu" onclick="move('5')">
					<span class="menuTitle">관리자문의</span>
					<p>사이트관리자에게 문의할 수 있습니다.</p>
				</div>
			</td>
			<td>
				<div class="menu" onclick="move('6')">
					<span class="menuTitle">회원정보수정</span>
					<p>내 정보를 확인하고 수정할 수 있습니다.</p>
				</div>
			</td>
		</tr>
	</table>
</div>

<%@ include file = "../include/footer.jsp" %>
</body>
</html>