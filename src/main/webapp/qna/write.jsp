<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글작성</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/layout.css"/>
<style>
	.writeWrap{
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
	.contable{
		margin : 30px 0px;
		width:1170px;
	}
	.title{
		font-size : 20px;
		width:1126px;
		padding : 10px;
	}
	td{
		padding : 5px;
	}
	textarea{
		width:1126px;
		height:500px;
		font-size : 20px;
		resize: none;
		padding : 10px;
	}
	.type{
		color : #FF385C;
	}
	
	.btn{
		width : 565px;
		height:55px;
		font-size : 20px;
		font-weight : bold;
	}
	.writebt{
		background-color : #FF385C;
		color : white;
		border: none;
		cursor: pointer;
	}
	.cancelbt{
		background-color : white;
		color : #FF385C;
		border:3px solid #FF385C;
		cursor: pointer;
	}
	
</style>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
<div class="writeWrap">
	<h2>관리자에게 문의하기</h2>

	<div class="writeArticle">
		<table class="contable">	
				<tr>
					<td class="title" colspan="2"><input type="text"  class="title" name="title" placeholder="제목을 입력하세요" autofocus></td>
				</tr>
				<tr>
					<td class="wrname" colspan="2">
						<span class="type">호스트</span> · 닉네임
					</td>
				</tr>
				<tr>
					<td class="article-content" colspan="2">
						<textarea  rows="30" cols="115" name="contents" placeholder="내용을 입력하세요"></textarea>	
					</td>
				</tr>
				<tr>
					<td><input type="submit" value = "작성완료" class="btn writebt"></td>
					<td><input type="button" value = "취소하기" class="btn cancelbt" onclick="cancel()" ></td>
				</tr>
				
		</table>

	</div>
		


</div>


<%@ include file = "../include/footer.jsp" %>
</body>
</html>