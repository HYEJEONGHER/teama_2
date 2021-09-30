<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myspace list</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/.css">
<style>
	body{	
		background-color :#f8f8f8;
	}
	.con{
		font-size : 20px;
		padding : 2px;
	}
	.contitle{
		font-size : 25px;
		font-weight : bold;
		text-aline : left;
	}
	.conEx{
		color : gray;
		font-size : 12px;
		height:55px;
	}
	.price{
		font-size : 25px;
		color : #FF385C;
	}
	.lo{
		font-size : 15px;
	}
	.table2{
		margin-left:auto;
		margin-right:auto;
		padding-top:10px;
		height:auto;
		width:1170px;
		display:flex;
	}
	.tdimg2{
		width : 270px;
	}
	.divimg2{
		width : 270px;
		height : 170px;
	}
	.con2{
		width : 250px;
		padding : 10px;
		background-color : white;
		cursor : pointer;
	}
	.star2{
		position:relative;
		top:-175px;
		left:220px;
		width:15px;
		cursor:pointer;
		text-align:center;
		font-size : 40px;
		color : #ffd014;
	}	
	.morewrap{
		margin-left:auto;
		margin-right:auto;
		padding-top:30px;
		height:auto;
		width:1170px;
		text-align : center;
		margin-bottom : 100px;
	}
	
	#more{
		cursor:pointer;
		height:50px;
		width:270px;
		border : none;
		background-color : #FF385C;
		color : white;
		font-weight : bold;
	}
	
	h2{
		margin : 0px;
		text-align:center;
		font-size : 42px;
	}
	
	.modebox{
	display:flex;
	width:270px;
	background-color : #ffffff;
	
	}
	.sp_modify
	{
	font-size : 18px;
	height:26px;
	width:150px;
	padding:10px 5px;
	text-align : center;
	color : #ffffff;
	font-weight : bold;
	background-color :#FF385C;
	cursor:pointer;
	}
	.sp_delet{
	font-size : 18px;
	height:26px;
	width:100px;
	padding:10px 5px;
	text-align : center;
	color : #ffffff;
	background-color :#4D4D4D;
	font-weight : bold;
	cursor:pointer;
	
	}
	


</style>

</head>
<body>
<%@ include file = "../include/header.jsp" %>
<h2>내공간 등록리스트</h2>
	<div class="mainbac">
		
	<section>
	<div class="main">
		<div class="table2">
		<table>
			<tr>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="/teamA_2/include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
					</div>
			
					<div class="con2" onclick="">
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
						</table>
						<table>
							<tr>
							<hr>
								<td class="con conEx">등록일 2021.09.24</td>
								<td><div class="open">
									<input type="radio" name="radio1" value="open"/>공개
									<input type="radio" name="radio1" value="close"/>비공개
								</div>
								</td>
							</tr>
						</table>
						</div>
							<div class="modebox">
								<div class="sp_modify" onclick="location.href='#'">공간정보수정</div>
								<div class="sp_delet">삭제</div>
							</div>
				
				</td>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="/teamA_2/include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
					</div>
				
							<div class="con2" onclick="">
						<table>
							<tr>
								<tr>
								<td class="con contitle">공간이름</td>
							</tr>
						</table>
						<table>
							<tr>
							<hr>
								<td class="con conEx">등록일 2021.09.24</td>
								<td><div class="open">
									<input type="radio" name="radio2" value="open"/>공개
									<input type="radio" name="radio2" value="close"/>비공개
								</div>
								</td>
							</tr>
						</table>
						</div>
							<div class="modebox">
								<div class="sp_modify">공간정보수정</div>
								<div class="sp_delet">삭제</div>
							</div>
				
				</td>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="/teamA_2/include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
					</div>
					
						<div class="con2" onclick="">
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
						</table>
						<table>
							<tr>
							<hr>
								<td class="con conEx">등록일 2021.09.24</td>
								<td><div class="open">
									<input type="radio" name="radio3" value="open"/>공개
									<input type="radio" name="radio3" value="close"/>비공개
								</div>
								</td>
							</tr>
						</table>
						</div>
							<div class="modebox">
								<div class="sp_modify">공간정보수정</div>
								<div class="sp_delet">삭제</div>
							</div>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="/teamA_2/include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
					</div>
					
						<div class="con2" onclick="">
						<table>
							<tr>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
						</table>
						<table>
							<tr>
							<hr>
								<td class="con conEx">등록일 2021.09.24</td>
								<td><div class="open">
									<input type="radio" name="radio4" value="open"/>공개
									<input type="radio" name="radio4" value="close"/>비공개
								</div>
								</td>
							</tr>
						</table>
						</div>
							<div class="modebox">
								<div class="sp_modify">공간정보수정</div>
								<div class="sp_delet">삭제</div>
							</div>
						</table>
					</div>
					
				</td>
			</tr>
		</table>
		</div>
	</div>
	<!--12개까지 보여주고 더보기 버튼으로 페이징구현하기-->
	<div class="morewrap">
		<input type=button value="더보기" id="more">
	</div>
</section>
</div>
<%@ include file = "../include/topButton.jsp" %>







<%@ include file = "../include/footer.jsp" %>
</body>
</html>