<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.article2{
				margin-top:10px;
				width:100%;
				height:60%;
				/*border:1px solid black;*/
				overflow:auto;
				box-shadow:0px 0px 2px gray;
			}
			.box{
				width:200px;
				height:230px;
				border:1px solid lightgray;
				font-size:10pt;
				margin:5px 15px;
				/*display:inline-block;*/
				float:left;
			}
			.box img{
				width:180px;
				height:200px;
				margin:10px;
			}
			.boxbody{
				margin:5px;
			}
			.bodyT{
				margin-bottom:3px;
				height:16px;
				border-bottom:1px solid lightgray;
			}
			.bodyB{
				color:gray;
				height:20px;
				margin-top: -15px;
			}
</style>
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



	
	

	
	function sumbitsave(){
		var result = true;

		var checkSpname = /^[A-za-z0-9]{10,50}$/g;
		value = document.newspacefrm.space_name.value;
		//console.log(value);
		span = document.getElementsByClassName("spname")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "공간명 입력은 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!checkSpname.test(value)){
			span.textContent = "";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		var sptext = /^[A-za-z0-9]{10,50}$/g;
		value = document.newspacefrm.space_text.value;
		//console.log(value);
		span = document.getElementsByClassName("areabox")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "공간소개 입력은 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!sptext.test(value)){
			span.textContent = "";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		
		
		var email1 = /^[A-za-z0-9]{1,10}$/g;
		value = document.newspacefrm.email1.value;
		//console.log(value);
		span = document.getElementsByClassName("ckemail")[0].getElementsByTagName("span")[1];
		if(value == ""){
			span.textContent = "이메일은 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!email1 .test(value)){
			span.textContent = "이메일을 확인 바랍니다.";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		var email2 = /^[A-za-z0-9]{1,10}$/g;
		value = document.newspacefrm.  email2  .value;
		span = document.getElementsByClassName("ckemail")[0].getElementsByTagName("span")[1];
		if(value == ""){
			span.textContent = "이메일은 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!email2 .test(value)){
			span.textContent = "";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		var phone2 = /^[0-9]{4}$/g;
		value = document.newspacefrm.  phone2  .value;
		span = document.getElementsByClassName("phonebox")[0].getElementsByTagName("span")[2];
		if(value == ""){
			span.textContent = "휴대폰번호는 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!phone2 .test(value)){
			span.textContent = "";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		var phone3 = /^[0-9]{4}$/g;
		value = document.newspacefrm.phone3.value;
		span = document.getElementsByClassName("phonebox")[0].getElementsByTagName("span")[2];
		if(value == ""){
			span.textContent = "휴대폰번호는 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!phone3.test(value)){
			span.textContent = "";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		
		
		
		var pricein1 = /^[0-9]{4}$/g;
		value = document.newspacefrm.pricein1.value;
		span = document.getElementsByClassName("pricebox")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "가격등록은 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!pricein1.test(value)){
			span.textContent = "";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		var pricein2 = /^[0-9]{4}$/g;
		value = document.newspacefrm.pricein2.value;
		span = document.getElementsByClassName("pricebox")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "가격등록은 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!pricein2.test(value)){
			span.textContent = "";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
	
		
		
		var pricein3 = /^[0-9]{4}$/g;
		value = document.newspacefrm.pricein3.value;
		span = document.getElementsByClassName("pricebox")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "가격등록은 필수 입력란 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!pricein3.test(value)){
			span.textContent = "";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}


		var checked_radio1 = document.querySelector('input[name = "radio1"]:checked');
		span = document.getElementsByClassName("radio1box")[0].getElementsByTagName("span")[0];
		if(checked_radio1 != null){  //Test if something was checked
			span.textContent = "체크 확인해주세요";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;//Alert the value of the checked.
			} else {
				span.textContent = "";
				span.style.display = "none";//Alert, nothing was checked.
			}
		
		

		var checked_radio2 = document.querySelector('input:checkbox[name=fac]:checked');
		span = document.getElementsByClassName("divcheckbox1")[0].getElementsByTagName("span")[0];
		if(checked_radio2 != null){  //Test if something was checked
			span.textContent = "체크 확인해주세요";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;//Alert the value of the checked.
			} else {
				span.textContent = "";
				span.style.display = "none";//Alert, nothing was checked.
			}
		
		
		
		
		
		
	
		if(result==true && result2==true){
			document.newspacefrm.submit();
		}
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
								<div class="spname">
								<form name="newspacefrm" action="/teamA_2/index.jsp" method="post">					
									<input type="text"name="space_name" id="space_name" placeholder="공간명을 입력하세요.">
										<br>
										<span class="red"></span>
								</div>
						</div>
								
								<div class="tit">
									<label for="radio1">공간유형</label><span class="red">*</span><br>
								</div>
								<div class="radio1box">
										<input type="radio" name="radio1" required>오피스
										<input type="radio" name="radio1" required>촬영
										<input type="radio" name="radio1" required>연습실
										<input type="radio" name="radio1" required>모임
										<br>
									<span class="red"></span>
								</div>
								<div class="tit">
									<label for="space_text">공간소개</label><span class="red">*</span><br>
								</div>
								<div class="areabox">
									<textarea  style="resize: none;" rows="10" cols="500" name="space_text" id="space_text" placeholder="공간을 상세하게 소개해보세요.공간의특징이나 주변환경 등의 세부정보를 작성하시면 효과적입니다."></textarea>	
									<br>
									<span class="red"></span>
								</div>	
								<div class="tit">
								<label for="checkbox">시설안내</label><span class="red">*</span><br>
								</div>
								<div class="divcheckbox">
										<input type="checkbox" name="fac" value="tv">TV/프로젝터
										<input type="checkbox" name="fac" value="wifi">인터넷/와이파이
										<input type="checkbox" name="fac" value="eat">취사시설
										<input type="checkbox" name="fac" value="eatok">음식물반입가능
										<input type="checkbox" name="fac" value="beer">주류반입가능
										<input type="checkbox" name="fac" value="shower">샤워시설
										<input type="checkbox" name="fac" value="parking">주차
										<input type="checkbox" name="fac" value="dogok">반려동물 동반가능
										<input type="checkbox" name="fac" value="pc">PC/노트북
										<input type="checkbox" name="fac" value="chtable">의자/테이블
										<input type="checkbox" name="fac" value="totile">내부화장실
										<input type="checkbox" name="fac" value="emty">탈의실
									<div class="divcheckbox1">	
										<br>
									<span class="red"></span>
									</div>
								</div>		
								<div class="tit">
									<label for="space_rsv">예약 시주의사항</label><span class="red">*</span><br>
								</div>
									<input type="text"name="space_rsv" id="space_rsv" placeholder="공간에 대한 주의사항을 작성해주세요."  >
									<input type=button value="추가" id="more2" onClick="printData()"><br>
									<div class="rsv_more">
										<div id="result"></div>	
									</div>
									
						
								<div class="tit">
									<label class="space_img" for="space_img">이미지</label><span class="red">*</span><br>
								</div>
									<input type="text"name="space_img" id="space_img" placeholder="이미지 파일을 추가해 주세요.(JPG,JPEG,PNG)" >
									<input type="file" id="input-file" name="input-file"  onchange="changeValue(this)"/>
								<label for="input-file" class="input-file-button" id="input-file-button">파일추가</label>
<div class="article2">
						<div class="box">
							<img src="architecture.png">
							<div class="boxbody">
								<div class="bodyB">
									제목
								</div>
							</div>
						</div>
</div>						
					
					
					
								<div class="tit">
									<label for="space_addr">주소(위치)</label><span class="red">*</span><br>
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
								<div class="ckemail">					
									<input type="text"name="space_email1" id="email1">
									<span class="txt_email">	@</span>
									<input type="text"name="space_email2" id="email2">
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
											<br>
										<span class="red"></span>
								</div>		
		
								<div class="tit">
									<label for="phone">휴대폰</label><span class="red">*</span>
								</div>
								<div class="phonebox">								
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
								</div>		
								
				
									
						
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
								<button onClick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
								<input class="quantity" min="1" name="quantity" value="1" type="number">
								<button onClick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
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
								<button onClick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
								<input class="quantity" min="1" name="quantity" value="1" type="number">
								<button onClick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
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
							  <button onClick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
							  <input class="quantity" min="1" name="quantity" value="1" type="number">
							  <button onClick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
							</div>
								<div class="sec">명</div>
						</div>
					</div>
				</div>
				
					<div class="tit">
							<label for="space_price">가격등록</label>
					</div>
					<div class="pricebox">
					<h4>공간가격에 대한 기준인원은<input type="text" class="pricein" id="pricein1" placeholder="인원입력"> 명입니다.</h4>
					<h4>시간 당 공간의 가격은<input type="text" class="pricein" id="pricein2" placeholder="인원입력"> 원 입니다.</h4>
					<h4>기준인원 초과 시 1인당<input type="text" class="pricein" id="pricein3" placeholder="가격입력"> 원씩 추가요금을 받습니다.</h4>
					<span class="red"></span>
					</div>

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
		<input type="submit" value="저장하기" id="more" class="save"  onclick="sumbitsave(); return false;">
	</div>
		</form>
</section>
</div>
	


<%@ include file = "../include/topButton.jsp" %>

<%@ include file = "../include/footer.jsp" %>
</body>
</html>

