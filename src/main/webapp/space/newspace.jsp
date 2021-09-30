<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>newspace</title>


<link type="text/css" rel="stylesheet" href="/teamA_2/include/newspace.css">
<script src="/teamA_2/jquery/jquery-3.6.0.min.js"></script>
<script>
	var num = 1;
	function printData(){
		
		var data = document.getElementById("space_rsv").value;
		
		$("#result").append("<div class='nlist' id='"+num+"'>"+"- "+data+" <input type='button' value='삭제'></div>")
	
		num++;
	}
</script>

</head>
<body>
<%@ include file = "../include/header.jsp" %>
<h2>공간 등록</h2>
	<div class="mainbac">
		
	<section>
		<div class="table2">
		<table>
			<tr>
				<td class="tdimg2">
					<div class="heading">
						<h3>공간정보를 입력해주세요.</h3>
					</div>
						<div class="box_form">
								<div class="tit">
									<label for="space_name">공간명</label><span class="red">*</span>
								</div>					
									<input type="text"name="space_name" id="space_name" placeholder="공간명을 입력하세요.">
						</div>
								
								<div class="tit">
									<label for="ellip">공간유형</label><span class="red">*</span><br>
								</div>
								
										<input type="radio" name="space">오피스
										<input type="radio" name="space">촬영
										<input type="radio" name="space">연습실
										<input type="radio" name="space">모임
								<div class="tit">
									<label for="password">공간소개</label><span class="red">*</span><br>
								</div>
									<textarea  style="resize: none;" rows="10" cols="500" name="space text" placeholder="공간을 상세하게 소개해보세요.공간의특징이나 주변환경 등의 세부정보를 작성하시면 효과적입니다."></textarea>	
								<div class="tit">
									<label for="space_guide">시설안내</label><span class="red">*</span><br>
								</div>
										<input type="checkbox" name="tv">TV/프로젝터
										<input type="checkbox" name="wifi">인터넷/와이파이
										<input type="checkbox" name="eat">취사시설
										<input type="checkbox" name="eatok">음식물반입가능
										<input type="checkbox" name="beer">주류반입가능
										<input type="checkbox" name="shower">샤워시설
										<input type="checkbox" name="parking">주차
										<input type="checkbox" name="dogok">반려동물 동반가능
										<input type="checkbox" name="pc">PC/노트북
										<input type="checkbox" name="chtable">의자/테이블
										<input type="checkbox" name="totile">내부화장실
										<input type="checkbox" name="emty">탈의실
										
								<div class="tit">
									<label for="password">예약 시주의사항</label><span class="red">*</span><br>
								</div>
									<input type="text"name="space_rsv" id="space_rsv" placeholder="공간에 대한 주의사항을 작성해주세요."  >
									<input type=button value="추가" id="more2" onclick="printData()"><br>
									<div class="rsv_more">
										<div id="result"></div>	
									</div>
									
						
								<div class="tit">
									<label class="space_img" for="space_img">이미지</label><span class="red">*</span><br>
								</div>
									<input type="text"name="space_img" id="space_img" placeholder="이미지 파일을 추가해 주세요.(JPG,JPEG,PNG)" >
									<input type="file" id="input-file" name="input-file" >
									<label class="input-file-button" for="input-file">파일추가</label>

					
					
					
								<div class="tit">
									<label for="password">주소(위치)</label><span class="red">*</span><br>
								</div>	
									<input type="text"name="space_addr" id="space_addr" placeholder="주소를 입력해주세요."  >
									<input type=button value="주소등록" id="more2"><br>
									<input type="text"name="space_addr2" id="space_addr2" placeholder="상세 주소"  >
					<div class="heading">
						<h3>연락처 정보를 입력해주세요.</h3>
					</div>
								<div class="tit">
									<label for="space_email">이메일</label><span class="red">*</span>
								</div>					
									<input type="text"name="space_email1" id="email1"  >
									<span class="txt_email">	@</span>
									<input type="text"name="space_email2" id="email2"  >
										<select id="email3">
											<option value="email none" selected>직접입력</option>
											<option value="email naver">naver.com</option>
											<option value="email chol">chol.com</option>
											<option value="email dreamwiz">dreamwiz.com</option>
											<option value="email gmail">gmail.com</option>
											<option value="email hamail">hamail.com</option>
											<option value="email korea">korea.com</option>
											<option value="email lycos">lycos.co.kr</option>
										</select>
		
								<div class="tit">
									<label for="space_phone">휴대폰</label><span class="red">*</span>
								</div>								
								<select name="phone1" id="phone1">
											<option value="010" selected>010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
										<span class="txt_phone">-</span>
										&nbsp;
					<input type="tel" class="impor" name="phone2" id="phone2" placeholder="연락처2" maxlength="4" >&nbsp;
										<span class="txt_phone">-</span>	
					<input type="tel" class="impor" name="phone3" id="phone3" placeholder="연락처3" maxlength="4" >
					<br>
					<span class="red"></span>
				
									
						
					<div class="heading">
						<h3>이용 정보를 입력해주세요.</h3>
					</div>
						<div class="select_box">
							<div class="select">
								<div class="tit">
									<label for="hour">이용시간</label><span class="red">*</span>
									
								</div>
										<div class="hourbox">	
										<select name="start_hour" class="start_hour">
											<option value="0" selected>00시</option>
											<option value="1">01시</option>
											<option value="2">02시</option>
											<option value="3">03시</option>
											<option value="4">04시</option>
											<option value="5">05시</option>
											<option value="6">06시</option>
											<option value="7">07시</option>
											<option value="8">08시</option>
											<option value="9">09시</option>
											<option value="10">10시</option>
											<option value="11">11시</option>
											<option value="12">12시</option>
											<option value="13">13시</option>
											<option value="14">14시</option>
											<option value="15">15시</option>
											<option value="16">16시</option>
											<option value="17">17시</option>
											<option value="18">18시</option>
											<option value="19">19시</option>
											<option value="20">20시</option>
											<option value="21">21시</option>
											<option value="22">22시</option>
											<option value="23">23시</option>
											<option value="24">24시</option>
										</select>
										부터
										<select name="end_hour" class="end_hour">
											<option value="0">00시</option>
											<option value="1">01시</option>
											<option value="2">02시</option>
											<option value="3">03시</option>
											<option value="4">04시</option>
											<option value="5">05시</option>
											<option value="6">06시</option>
											<option value="7">07시</option>
											<option value="8">08시</option>
											<option value="9">09시</option>
											<option value="10">10시</option>
											<option value="11">11시</option>
											<option value="12">12시</option>
											<option value="13">13시</option>
											<option value="14">14시</option>
											<option value="15">15시</option>
											<option value="16">16시</option>
											<option value="17">17시</option>
											<option value="18">18시</option>
											<option value="19">19시</option>
											<option value="20">20시</option>
											<option value="21">21시</option>
											<option value="22">22시</option>
											<option value="23">23시</option>
											<option value="24" selected>24시</option>
										</select>
											<span class="txt_hour">까지</span>
								</div> 
								</div>
							<div class="select1">
								<div class="tit">
									<label for="holiday">정기휴무</label><span class="red">*</span>
									<input type ="checkbox">공휴일 휴무 여부
								</div>	
									<div class="daybox">
										<select name="holiday" class="holiday">
											<option value="none">휴무없음</option>
											<option value="WEKLY">매주</option>									
										</select>
									</div>	
										<div class="today">		
										  <input type='checkbox' name='holi1' value='Mon' />월
										  <input type='checkbox' name='holi2' value='Tue' />화
										  <input type='checkbox' name='holi3' value='Wed' />수
										  <input type='checkbox' name='holi4' value='Thu' />목
										  <input type='checkbox' name='holi5' value='Fri' />금
										  <input type='checkbox' name='holi6' value='Sat' />토
										  <input type='checkbox' name='holi7' value='Sun' />일
										</div>
									
										
							</div>	
						</div>							
							
								
				
				<div class="heading">
					<h3>가격 및 이용인원</h3>
				</div>
				<div class="section_total">	
					<div class="section1">	
					<div class="tit">
							<label for="space_time">최소 예약시간</label>
					</div>	
						<div class="secbox">						
							<div class="number-input">
								<button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
								<input class="quantity" min="1" name="quantity" value="1" type="number">
								<button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
							</div>
							<div class="sec">시간</div>	
						</div>
					</div>	
					<div class="section2">	
					<div class="tit">
							<label for="space_minpe">최소 수용인원	</label>
					</div>				
						<div class="secbox">	
							<div class="number-input">
								<button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
								<input class="quantity" min="1" name="quantity" value="1" type="number">
								<button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
							</div>
							<div class="sec">명</div>
						</div>	
					</div>
					<div class="section2">	
					<div class="tit">
							<label for="space_maxpe">최대 수용인원	</label>
					</div>
						<div class="secbox">
							<div class="number-input">
							  <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
							  <input class="quantity" min="1" name="quantity" value="1" type="number">
							  <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
							</div>
								<div class="sec">명</div>
						</div>
					</div>
				</div>
				
					<div class="tit">
							<label for="space_price">가격등록</label>
					</div>
					<h4>공간가격에 대한 기준인원은<input type="text" class="pricein" placeholder="인원입력"> 명입니다.</h4>
					<h4>시간 당 공간의 가격은<input type="text" class="pricein" placeholder="인원입력"> 원 입니다.</h4>
					<h4>기준인원 초과 시 1인당<input type="text" class="pricein" placeholder="가격입력"> 원씩 추가요금을 받습니다.</h4>
					<span></span>

				<div class="heading">
					<h3>환불기준</h3>
				</div>
			
						<div class="flex_option">
					<div class="tit3">
						<label for="useday" class="useday">이용전 7일 전</label>
						<span class="money1">총 금액의 </span>
							<select class="money_select">
								<option value="100">100%</option>
								<option value="90">90%</option>
								<option value="80">80%</option>
								<option value="70">70%</option>
								<option value="60">60%</option>
								<option value="50">50%</option>
								<option value="40">40%</option>
								<option value="30">30%</option>
								<option value="20">20%</option>
								<option value="10">10%</option>
								<option value="0" selected>환불불가</option>
							</select>
						<span class="money3">환불 </span >
					</div>	
				<div class="tit3">
					<label for="useday" class="useday">이용전 3일 전</label>
					<span class="money1">총 금액의 </span>
						<select class="money_select">
							<option value="100">100%</option>
							<option value="90">90%</option>
							<option value="80">80%</option>
							<option value="70">70%</option>
							<option value="60">60%</option>
							<option value="50">50%</option>
							<option value="40">40%</option>
							<option value="30">30%</option>
							<option value="20">20%</option>
							<option value="10">10%</option>
							<option value="0" selected>환불불가</option>
						</select>
					<span class="money3">환불 </span >
				</div>	
				<div class="tit3">
					<label for="useday" class="useday">이용 전날</label>
					<span class="money2">총 금액의 </span>
						<select class="money_select">
							<option value="100">100%</option>
							<option value="90">90%</option>
							<option value="80">80%</option>
							<option value="70">70%</option>
							<option value="60">60%</option>
							<option value="50">50%</option>
							<option value="40">40%</option>
							<option value="30">30%</option>
							<option value="20">20%</option>
							<option value="10">10%</option>
							<option value="0" selected>환불불가</option>
						</select>
					<span class="money3">환불 </span >
				</div>	
				<div class="tit3">
					<label for="useday" class="useday">이용 당일</label>
					<span class="money2">총 금액의 </span>
						<select class="money_select">
							<option value="100">100%</option>
							<option value="90">90%</option>
							<option value="80">80%</option>
							<option value="70">70%</option>
							<option value="60">60%</option>
							<option value="50">50%</option>
							<option value="40">40%</option>
							<option value="30">30%</option>
							<option value="20">20%</option>
							<option value="10">10%</option>
							<option value="0" selected>환불불가</option>
						</select>
					<span class="money3">환불 </span >
				</div>	
				</div>			
			
				</td>
				
			</tr>
		</table>
		</div>
			<div class="morewrap">
		<input type="submit" value="저장하기" id="more" class="save"  onclick="sumbitFn(); return false;">
	</div>
		
</section>
</div>
	


<%@ include file = "../include/topButton.jsp" %>

<%@ include file = "../include/footer.jsp" %>
</body>
</html>

