<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트와QNA리스트</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/layout.css"/>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/paging.css"/>
<style>
	.qnaWrap{
		margin-left:auto;
		margin-right:auto;
		padding-top:30px;
		padding-bottom:30px;
		height:auto;
		width:1170px;
	}
	h2{
		margin : 0px;
		text-align:center;
		font-size : 42px;
	}
	.qnaArticle{
		width:1170px;
		background-color : white;
		border: 1px solid #FF385C;
		margin-top : 20px;
	}
	.contable{
		width:1100px;	
		margin-left:auto;
		margin-right:auto;
		margin-top : 30px;
		margin-bottom : 20px;
	}
	.atable{
		width:1100px;	
		margin-left:auto;
		margin-right:auto;
		margin-top : 10px;
		margin-bottom : 30px;
		border-top : 1px solid lightgray;
	}
	td{
		padding : 5px;
	}
	.title{
		color : #FF385C;
		font-weight : bold;
		font-size : 18px;
	}
	
	.title a{
		color : #FF385C;
		font-weight : bold;
		font-size : 18px;
	}
	.btn{
		width : 100px;
		height:40px;
		font-size : 15px;
		font-weight : bold;
	}
	.modify{
		background-color : #FF385C;
		color : white;
		border: none;
		cursor: pointer;
	}
	.del{
		background-color : white;
		color : #FF385C;
		border:3px solid #FF385C;
		cursor: pointer;
	}

</style>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
<div class="qnaWrap">
	<h2>공간QNA관리</h2>

	<div class="qnaArticle">
		<table class="contable">	
				<tr>
					<td class="sName title"> 
						<a href="#">공간명 : 공간이름들어올자리</a>
					</td>
				</tr>
				<tr>
					<td class="qContent">
						질문내용이 들어올자리?????
					</td>
				</tr>
				<tr>
					<td class="qDate">
						2021.09.10 10:47:48
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" class="modify btn" value="수정하기">
						<input type="button" class="del btn" value="삭제하기">
					</td>
				</tr>
			</table>
			<table class="atable">
				<tr class="answer">
					<td class="aName title">
						호스트이름님의 답글
					</td>
				</tr>
				<tr>
					<td class="aContent">
						답글내용답글내용답글내용답글내용답글내용답글내용답글내용답글내용답글내용답글내용답글내용답글내용
						답글내용답글내용답글내용답글내용답글내용답글내용답글내용답글내용
					</td>
				</tr>
				<tr>
					<td class="aDate">
						2021.09.10 10:47:48
					</td>
				</tr>
			</table>
		
	</div>
	
	<div class="pagingArea">
				<a href="#">&lt;</a>
				<a href="#" id="select3">1</a>
				<a href="#">&gt;</a>
	</div>
		
</div>
<%@ include file = "../include/topButton.jsp" %>
<%@ include file = "../include/footer.jsp" %>

</body>
</html>