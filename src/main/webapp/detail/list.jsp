<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/layout.css"/>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/detaillist.css"/>
<script>
function mindate(){
	var today = new Date();
	
	var year = today.getFullYear();
	var month = today.getMonth()+1+"";
	var date = today.getDate()+"";
	if(month.length < 2){
		month = "0"+month;
	}
	if(date.length < 2){
		date = "0"+date;
	}
	
	
	var fullToday = year + "-" + month+ "-"
					+date;
					
	document.getElementById("dateinput").min = fullToday;
	
	
}

</script>
</head>
<body>
<%@ include file = "../include/header.jsp" %>

<div class="mainSearch">
			
			<div class="sBox">
			<input type="text" id="search" placeholder="원하시는 공간을 찾아주세요.">
			<input type="date" class="sButton" id="dateinput" onclick="mindate()">
			<select class="sButton">
				<option selected>인원</option>
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10명이상</option>
			</select>
			<select class="sButton">
				<option selected>지역</option>
				<option>완산구</option>
				<option>덕진구</option>
			</select>
			<button class="sButton srchbtn">검색</button>
			</div>
		
		<div class="wrapoption">
			<select class="listoption">
				<option selected>베스트찜하기순</option>
				<option>이용후기많은순</option>
				<option>가격높은순</option>
				<option>가격낮은순</option>
			</select>
		</div>
			
		</div>


	<div class="mainbac">
		
	<section>
	<div class="main">
		<div class="table2">
		<table>
			<tr>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="view.jsp"><img src="/teamA_2/include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
					
					<div class="con2" onclick="location.href='view.jsp'">
						<table>
							<tr>
								<td class="con"><img src="/teamA_2/include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
							
						</table>
						<table>
						
							<tr>
								<td class="con conEx">공간설명블라블라블라블라</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con conEx">☆☆☆☆☆</td><td class="con ">0</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con price">무료</td>
							</tr>
						</table>
					</div>
				
				</td>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="/teamA_2/include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
				
					<div class="con2" onclick="">
						<table>
							<tr>
								<td class="con"><img src="/teamA_2/include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
							
						</table>
						<table>
						
							<tr>
								<td class="con conEx">공간설명블라블라블라블라</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con conEx">☆☆☆☆☆</td><td class="con ">0</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con price">무료</td>
							</tr>
						</table>
					</div>
				</td>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="/teamA_2/include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
					
					<div class="con2" onclick="">
						<table>
							<tr>
								<td class="con"><img src="/teamA_2/include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
							
						</table>
						<table>
						
							<tr>
								<td class="con conEx">공간설명블라블라블라블라</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con conEx">☆☆☆☆☆</td><td class="con ">0</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con price">무료</td>
							</tr>
						</table>
					</div>
					
				</td>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="/teamA_2/include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
					
					<div class="con2" onclick="">
						<table>
							<tr>
								<td class="con"><img src="/teamA_2/include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
							
						</table>
						<table>
						
							<tr>
								<td class="con conEx">공간설명블라블라블라블라</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con conEx">☆☆☆☆☆</td><td class="con ">0</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con price">무료</td>
							</tr>
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