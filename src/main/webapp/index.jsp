<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link type="text/css" rel="stylesheet" href="include/main.css"/>
<script src="jquery/jquery-3.6.0.min.js"></script>
<script>		
		var images = ["architecture.png", "chairs.png", "table.png", "workplace.png"];
		$(function () {
			var i = 0;
			$("#mainback").css("background-image", "url(include/img/" + images[i] + ")");
			setInterval(function () {
				
				$("#mainback").fadeOut("1000",function () {
					$(this).css("background-image", "url(include/img/" + images[i] + ")");
					$(this).fadeIn("1000");
            });
			i++;
				if (i == images.length) {
					i = 0;
				}
			}, 5000);
		});
		
		
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
<div class="wrap">
		<div class="header" >
			<a href="index.jsp"><img src="include/img/logo_white.png" width="200" class="navimg" ></a>
		<div class="nav">
		<!-- 주석 추가 한부분 33333-->
			<div class="nav-item"><a class="nav-item_a" href="/teamA_2/login/login.do">로그인/회원가입</a></div>
			<div class="nav-item"><a class="nav-item_a" href="/teamA_2/notice/list.do">공지</a></div>
			<div class="nav-item"><a class="nav-item_a" href="/teamA_2/qna/list.do">문의</a></div>
			<div class="nav-item"><a class="nav-item_a" href="/teamA_2/space/bookmark.do">찜한공간</a></div>
			<div class="nav-item"><a class="nav-item_a" href="/teamA_2/reserve/list.do">예약</a></div>
			<div class="nav-item"><a class="nav-item_a" href="/teamA_2/mypage/main.do">내정보</a></div>
			
		</div>
		</div>
		<div class="mainSearch">
			<div class="stext">
				어떤 공간을 찾고 있나요?
			</div>
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
			<div class="stext2">
				공간이 필요하세요?<br>
				아더스페이스하세요!
			</div>
			<div class="stext">
				이웃의 공간을 연결합니다.<br>
				당신에게 꼭 맞는 공간으로 이어드립니다.
			</div>
			
		</div>
	<div id="mainback">
	</div>
	</div>
<div class="mainbac">
<section>
	<div class="main">
		<div>
		<table class="table">
			<tr>
				<td class="td1" colspan="3">#아더스페이스의 인기공간을 확인하세요.</td>
			</tr>
			<tr>
				<td class="tdimg">
					<div class="divimg">
						<a href="detail/view.jsp"><img src="include/img/architecture-2804083_1280.jpg" class="divimg" ></a>
						<div class="star">☆</div>
					</div>
					
					<div class="con1" onclick="location.href='detail/view.jsp'">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
							<tr>
								<td class="con conEx">공간설명블라블라블라블라블라블라블라블라</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con conEx">☆☆☆☆☆</td><td class="con ">0</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con">시간(공간)</td><td class="con price">30,000원</td>
							</tr>
						</table>
					</div>
					
				</td>
				<td width="70px"></td>
				<td class="tdimg">
					<div class="divimg">
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg" ></a>
						<div class="star">☆</div>
					</div>
					
					<div class="con1">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
							<tr>
								<td class="con conEx">공간설명블라블라블라블라블라블라블라블라</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con conEx">☆☆☆☆☆</td><td class="con ">0</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con">시간(공간)</td><td class="con price">30,000원</td>
							</tr>
						</table>
					</div>
				
				</td>
			</tr>
			<tr height="30px">
				<td colspan="3"></td>
			</tr>
			<tr>
				<td class="tdimg">
					<div class="divimg">
						<a href="detail/view.jsp"><img src="include/img/architecture-2804083_1280.jpg" class="divimg" ></a>
						<div class="star">☆</div>
					</div>
				
					<div class="con1" onclick="location.href='detail/view.jsp'">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
							<tr>
								<td class="con conEx">공간설명블라블라블라블라블라블라블라블라</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con conEx">☆☆☆☆☆</td><td class="con ">0</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con">시간(공간)</td><td class="con price">30,000원</td>
							</tr>
						</table>
					</div>
					
				</td>
				<td width="70px"></td>
				<td class="tdimg">
					<div class="divimg">
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg" ></a>
						<div class="star">☆</div>
					</div>
					
					<div class="con1">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
							<tr>
								<td class="con conEx">공간설명블라블라블라블라블라블라블라블라</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con conEx">☆☆☆☆☆</td><td class="con ">0</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con">시간(공간)</td><td class="con price">30,000원</td>
							</tr>
						</table>
					</div>
					
				</td>
			</tr>
		</table>
		</div>
		
		</div>
		<div class="table2">
		<table>
			<tr>
				<td class="td1" colspan="7">#모임</td>
			</tr>
			<tr>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
					
					<div class="con2">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
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
								<td class="con">시간(공간)</td><td class="con price">30,000원</td>
							</tr>
						</table>
					</div>
					
				</td>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
				
					<div class="con2">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
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
								<td class="con">시간(공간)</td><td class="con price">30,000원</td>
							</tr>
						</table>
					</div>
					
				</td>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
					
					<div class="con2">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
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
								<td class="con">시간(공간)</td><td class="con price">30,000원</td>
							</tr>
						</table>
					</div>
					
				</td>
				<td width="30px"></td>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
				
					<div class="con2">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
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
								<td class="con">시간(공간)</td><td class="con price">30,000원</td>
							</tr>
						</table>
					</div>
					
				</td>
			</tr>
		</table>
		</div>
		<div class="table2">
		<table>
			<tr>
				<td class="td1" colspan="7">#무료공간</td>
			</tr>
			<tr>
				<td class="tdimg2">
					<div class="divimg2">
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
					
					<div class="con2">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
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
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
					
					<div class="con2">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
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
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
					
					<div class="con2">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
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
						<a href="#"><img src="include/img/architecture-2804083_1280.jpg" class="divimg2" ></a>
						<div class="star2">☆</div>
					</div>
				
					<div class="con2">
						<table>
							<tr>
								<td class="con"><img src="include/img/location.png"></td><td class="con lo">덕진구</td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="con contitle">공간이름</td>
							</tr>
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
	<%@ include file = "include/topButton.jsp" %>
</section>
</div>


<%@ include file = "include/footer.jsp" %>


</body>
</html>