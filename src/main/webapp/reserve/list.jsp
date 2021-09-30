<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약리스트</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/layout.css"/>
<style>
	.con{
		font-size : 20px;
		padding : 2px;
	}
	.contitle{
		font-size : 25px;
		font-weight : bold;
	}
	.contime{
		color : gray;
		font-size : 15px;
	}
	.price{
		font-size : 25px;
		color : #FF385C;
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
		border-radius : 10px 10px 0px 0px;
	}
	.con2{
		width : 250px;
		padding : 10px;
		background-color : white;
		border-radius : 0px 0px 10px 10px;
		cursor : pointer;
	}


	.wrapoption{
		padding : 50px 0px 20px 21.5px;
		width : 1148.5px;
		text-align : right;
		border-bottom:3px solid  #FF385C;
	}
	.listoption{
		font-size : 14px;
		color : gray;
		width: 200px;
		height: 50px;
		border: none;
		background: white;
		cursor: pointer;
		opacity:0.8;
	}
	
	.pagingArea {
        padding-top:30px;
        text-align:center;

      }
      
    .pagingArea a{
				display:inline-block;
				width:40px;
				height:30px;
				text-align:center;
				border:1px solid black;
				color:black;
				text-decoration:none;
				padding-top:10px;
				font-size : 15px;
			}
			
	.pagingArea a:hover{
		background-color:#FF385C;
        color:white;
			}
	h2{
		margin : 0px;
		text-align:center;
		font-size : 42px;
	}
	.Reservation_status{
		width : 100px; 
		background-color : #FF385C;
		text-align : center;
		color : white;
		font-size : 12px;
		padding : 5px;
		border-radius : 50px;
	
	}
	
</style>
</head>
<body>
<%@ include file = "../include/header.jsp" %>

	<h2>예약내역리스트</h2>
	<div class="mainbac">
		
		<div class="wrapoption">
			<select class="listoption">
				<option selected>예약번호순정렬</option>
				<option>이용일자순정렬</option>
			</select>
			<select class="listoption">
				<option selected>전체</option>
				<option>승인대기</option>
				<option>결제대기</option>
				<option>예약확정</option>
				<option>이용완료</option>
				<option>취소환불</option>
			</select>
		</div>
<section>
	<div class="main">
		<!--예야내역이 없다면보여줄 내용
			예약한 공간 내역이 없습니다. <br>
			이용하고 싶은 공간을 예약해 보세요!
		-->
		
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
								<td class="con lo">
									<div class="Reservation_status">
										승인대기
										<!--결제대기,예약확정,이용완료,취소환불-->
									</div>
								</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
						</table>
						<table>
							<tr>
								<td  class="con contime">2019.09.29 (월)</td>
								<td  class="con contime">10시~11시</td>
								<td  class="con contime">1시간</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con price">0원</td>
							</tr>
						</table>
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
								<td class="con lo">
									<div class="Reservation_status">
										승인대기
										<!--결제대기,예약확정,이용완료,취소환불-->
									</div>
								</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
						</table>
						<table>
							<tr>
								<td  class="con contime">2019.09.29 (월)</td>
								<td  class="con contime">10시~11시</td>
								<td  class="con contime">1시간</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con price">0원</td>
							</tr>
						</table>
					</div>
					
				</td>
				<td width="30px"></td>
			</tr>
		</table>
		</div>
	</div>
</section>
	<!--12개까지 보여주고 더보기 버튼으로 페이징구현하기-->
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