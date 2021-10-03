<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간등록</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/layout.css"/>
<style>
h2{
		margin : 0px;
		text-align:center;
		font-size : 42px;
		margin-bottom : 40px;
	}
	.heading{
		width : 100%;
		border-bottom:5px solid #FF385C;
		text-align : left;
		font-weight : bold;
		font-size : 25px;
		padding : 10px 0px;
	}
	.content{
		padding : 10px 0px;
		text-align : left;
	}
	.red{
		text-align : left;
		font-weight : bold;
		font-size : 20px;
		color : red;
	}
	.subtitle{
		text-align : left;
		font-weight : bold;
		font-size : 20px;
		margin : 30px 0px 10px 0px;
	}
	.subcon{
		text-align : left;
		font-size : 20px;
	}
	#space_name{
		height:40px;
		width:1162px;
		font-size : 20px;
	}
	
	#space_text{
		width:1162px;
		font-size : 20px;
	}
	
	#space_rsv{
		height:40px;
		width:1020px;
		font-size : 20px;
	}
	
	#more2{
		padding: 6px 25px;
		background-color:#FF385C;
		border-radius: 4px;
		border:1px solid #FF385C;
		font-size:18px;
		font-weight : bold;
		color: white;
		cursor: pointer;
		
		width:120px;
		height:45px;
	}
	
	.nlist{
		height : 20px;
		vertical-align : middle;
		padding : 10px;
	}
	
	input[type=file]{
		display:none;
	}

	.input-file-button{
		padding: 8px 20px;
		background-color:#FF385C;
		border-radius: 6px;
		color: white;
		cursor: pointer;
		
	}
	
	#space_img{
		height:40px;
		width:1020px;
		font-size : 20px;
	}
	
	#att_zone {
	  width: 1168px;
	  min-height: 150px;
	  border: 1px solid lightgray;
	  margin-top : 10px;
	  background-color : white;
	}
	
	#space_addr{
		width:1020px;
		font-size : 20px;
		height:40px;
	}
	
	#space_addr2{
		width:1162px;
		font-size : 20px;
		height:40px;
		margin-top : 5px;
	}
	.start_hour,.end_hour,.holiday{
		height:40px;
		width:150px;
	}
	
	.flex{
		display:flex;
	}
	
	.f1{
		width : 550px;
	}
	
	input[type="number"] {
	  -webkit-appearance: textfield;
	  -moz-appearance: textfield;
	  	appearance: textfield;
	}

	input[type=number]::-webkit-inner-spin-button,
	input[type=number]::-webkit-outer-spin-button {
  		-webkit-appearance: none;
	}

	.number-input {
	  border: 2px solid #ddd;
	  display: inline-flex;
	}

	.number-input,
	.number-input * {
	  box-sizing: border-box;
	}
	
	.number-input button {
	  outline:none;
	  -webkit-appearance: none;
	  background-color: transparent;
	  border: none;
	  align-items: center;
	  justify-content: center;
	  width: 3rem;
	  height: 3rem;
	  cursor: pointer;
	  margin: 0;
	  position: relative;
	}

	.number-input button:before,
	.number-input button:after {
	  display: inline-block;
	  position: absolute;
	  content: '';
	  width: 1rem;
	  height: 2px;
	  background-color: #212121;
	  transform: translate(-50%, -50%);
	}
	.number-input button.plus:after {
	  transform: translate(-50%, -50%) rotate(90deg);
	}
	
	.number-input input[type=number] {
	  font-family: sans-serif;
	  max-width: 4rem;
	  padding: .5rem;
	  border: solid #ddd;
	  border-width: 0 2px;
	  font-size: 18px;
	  height: 3rem;
	  font-weight: bold;
	  text-align: center;
	}
	
	.subflex{
		display:flex;
	}
	.sec{
		padding-top:25px;
		margin-left:10px;
	}
	
	.f2_1{
		width:390px;
	}
	.pricein{
		height:30px;
		width:80px;
		padding-left:10px;
		margin-left:10px;
	}
	.refund{
		text-align : left;
	}
	
	.tit3{
		padding : 5px;
	}
	
	.money_select{
		height:45px;
		width:150px;
	}
	
	
	.save{
		margin-top : 50px;
		cursor:pointer;
		height:50px;
		width:750px;
		border : none;
		background-color : #FF385C;
		color : white;
		font-weight : bold;
		font-size: 20px;
	}
	
	.red2{
		text-align : left;
		font-size: 16px;
	}
	
	.red2_2{
		position: relative;
		top : -5px;
	}
	
	h4{
		margin : 0px;
		padding-top : 10px;
	}
</style>
<script src="/teamA_2/jquery/jquery-3.6.0.min.js"></script>
<script>
var num = 1;
function printData(){
	
	var data = document.getElementById("space_rsv").value;
	
	$("#result").append("<div class='nlist' id='"+num+"'>"+"- "+data+" <input type='button' value='삭제'></div>")

	num++;
}

var value= "";
var span ="";

function sumbmitsave(){
	var result = true;
	value = document.newspacefrm.space_name.value;
	//console.log(value);
	span = document.getElementById("red2_1");
	if(value == ""){
		span.textContent = "공간이름은 필수 입력란 입니다.";
		span.style.color = "red";
		span.style.display = "inline";
		 result = false;
	}else{
		span.textContent = "";
		span.style.display = "none";
	}
	
	
	value = document.newspacefrm.space_text.value;
	//console.log(value);
	span = document.getElementById("red2_3");
	if(value == ""){
		span.textContent = "공간소개 입력은 필수 입력란 입니다.";
		span.style.color = "red";
		span.style.display = "inline";
		 result = false;
	}else{
		span.textContent = "";
		span.style.display = "none";
	}
	
	
	value = document.newspacefrm.pricein1.value;
	span = document.getElementById("red2_4_1");
	if(value == ""){
		span.textContent = "기준인원은 필수 입력란 입니다.";
		span.style.color = "red";
		span.style.display = "inline";
		 result = false;
	}else{
		span.textContent = "";
		span.style.display = "none";
	}
	
	value = document.newspacefrm.pricein2.value;	
	span = document.getElementById("red2_4_2");
	if(value == ""){
		span.textContent = "가격등록은 필수 입력란 입니다.";
		span.style.color = "red";
		span.style.display = "inline";
		 result = false;
	}else{
		span.textContent = "";
		span.style.display = "none";
	}

	
	var pricein3 = /^[0-9]{4}$/g;
	value = document.newspacefrm.pricein3.value;
	span = document.getElementById("red2_4_3");
	if(value == ""){
		span.textContent = "초과가격등록은 필수 입력란 입니다.";
		span.style.color = "red";
		span.style.display = "inline";
		 result = false;
	}else{
		span.textContent = "";
		span.style.display = "none";
	}
	
	
	value = document.newspacefrm.radio1.value;
	span = document.getElementById("red2_2");
	if(value == ""){
		span.textContent = "공간의 유형을 선택해주세요.";
		span.style.color = "red";
		span.style.display = "inline";
		 result = false;
	}else{
		span.textContent = "";
		span.style.display = "none";
	}
	
	
	

	if(result==true){
		document.newspacefrm.submit();
	}
}


</script>

</head>
<body>
<%@ include file = "../include/header.jsp" %>
<h2>공간등록하기</h2>

	<div class="mainbac">
	<form name="newspacefrm" action="/teamA_2/index.jsp" method="post">	
		<div class="heading">공간정보를 입력해주세요.</div>
		<div class="content">
			<div class="subtitle">공간명 <span class="red"> *</span></div>
			<div class="subcon"><input type="text"name="space_name" id="space_name" placeholder="공간이름을 입력하세요."></div>
			<div class="red2" id="red2_1"></div>
		</div>
		
		<div class="content">
			<div class="subtitle">공간유형 <span class="red"> *</span></div>
			<div class="subcon radio1box">
				<input type="radio" name="radio1" required> 오피스
				<input type="radio" name="radio1" required> 촬영
				<input type="radio" name="radio1" required> 연습실
				<input type="radio" name="radio1" required> 모임
			</div>
			<div class="red2" id="red2_2"></div>
		</div>
		
		<div class="content">
			<div class="subtitle">공간소개 <span class="red"> *</span></div>
			<div class="subcon"><textarea  style="resize: none;" rows="10" cols="500" name="space_text" id="space_text" placeholder="공간을 상세하게 소개해보세요.공간의특징이나 주변환경 등의 세부정보를 작성하시면 효과적입니다."></textarea></div>
			<div class="red2" id="red2_3"></div>
		</div>
		
		<div class="content">
			<div class="subtitle">시설안내</div>
			<div class="subcon divcheckbox">		
				<input type="checkbox" name="fac" value="tv">TV/프로젝터
				<input type="checkbox" name="fac" value="wifi">인터넷/와이파이
				<input type="checkbox" name="fac" value="eat">취사시설
				<input type="checkbox" name="fac" value="eatok">음식물반입가능
				<input type="checkbox" name="fac" value="beer">주류반입가능
				<input type="checkbox" name="fac" value="shower">샤워시설
				<input type="checkbox" name="fac" value="parking">주차
				<input type="checkbox" name="fac" value="dogok">반려동물 동반가능
				<br>
				<input type="checkbox" name="fac" value="pc">PC/노트북
				<input type="checkbox" name="fac" value="chtable">의자/테이블
				<input type="checkbox" name="fac" value="totile">내부화장실
				<input type="checkbox" name="fac" value="emty">탈의실						
			</div>
		</div>
		
		<div class="content">
			<div class="subtitle">예약시 주의사항 </div>
			<div class="subcon">
				<input type="text"name="space_rsv" id="space_rsv" placeholder="공간에 대한 주의사항을 작성해주세요."  >
				<input type=button value="추가" id="more2" onClick="printData()">
				<div id="result"></div>	
			</div>
		</div>
		
		<div class="content">
			<div class="subtitle">공간 이미지 </div>
			<div class="subcon">
				<input type="text"name="space_img" id="space_img" placeholder="이미지 파일을 추가해 주세요.(JPG,JPEG,PNG)" >
				<input type='file' id='btnAtt' multiple='multiple' />
				<label for="btnAtt" class="input-file-button">파일추가</label>
			</div>
   			 <div id='att_zone'></div>
			<script>
				( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
				  imageView = function imageView(att_zone, btn){
				
				    var attZone = document.getElementById(att_zone);
				    var btnAtt = document.getElementById(btn)
				    var sel_files = [];
				    
				    // 이미지와 체크 박스를 감싸고 있는 div 속성
				    var div_style = 'display:inline-block;position:relative;'
				                  + 'width:150px;height:120px;margin:5px;border:1px solid lightgray;z-index:1';
				    // 미리보기 이미지 속성
				    var img_style = 'width:100%;height:100%;z-index:none';
				    // 이미지안에 표시되는 체크박스의 속성
				    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
				                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:black';
				  
				    btnAtt.onchange = function(e){
				    	var file2 = document.getElementById("btnAtt");
				    	var valueArr = file2.value.split(".");
						var ext = valueArr[valueArr.length-1];
				
						if(ext == 'png' || ext == 'jpeg' || ext == 'jpg'){
							   var files = e.target.files;
							      var fileArr = Array.prototype.slice.call(files)
							      for(f of fileArr){
							        imageLoader(f);
							      }
						}else{
							alert("이미지 파일만 가능합니다.");
						}
				    	
				   
				    }  
				    
				    
				    /*첨부된 이미리즐을 배열에 넣고 미리보기 */
				    imageLoader = function(file){
				      sel_files.push(file);
				      var reader = new FileReader();
				      reader.onload = function(ee){
				        let img = document.createElement('img')
				        img.setAttribute('style', img_style)
				        img.src = ee.target.result;
				        attZone.appendChild(makeDiv(img, file));
				      }
				      
				      reader.readAsDataURL(file);
				    }
				    
				    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
				    makeDiv = function(img, file){
				      var div = document.createElement('div')
				      div.setAttribute('style', div_style)
				      
				      var btn = document.createElement('input')
				      btn.setAttribute('type', 'button')
				      btn.setAttribute('value', 'x')
				      btn.setAttribute('delFile', file.name);
				      btn.setAttribute('style', chk_style);
				      btn.onclick = function(ev){
				        var ele = ev.srcElement;
				        var delFile = ele.getAttribute('delFile');
				        for(var i=0 ;i<sel_files.length; i++){
				          if(delFile== sel_files[i].name){
				            sel_files.splice(i, 1);      
				          }
				        }
				        
				        dt = new DataTransfer();
				        for(f in sel_files) {
				          var file = sel_files[f];
				          dt.items.add(file);
				        
				        }
				        btnAtt.files = dt.files;
				        var p = ele.parentNode;
				        attZone.removeChild(p)
				      }
				      div.appendChild(img)
				      div.appendChild(btn)
				      return div
				    }
				    
				  }
				
				)('att_zone', 'btnAtt')
				
				</script>
		</div>
		
		<div class="content">
			<div class="subtitle">주소(위치) <span class="red"> *</span></div>
			<div class="subcon">
				<input type="text" name="space_addr" id="space_addr" placeholder="주소를 입력해주세요."  >
				<input type=button value="주소등록" id="more2"><br>
				<input type="text" name="space_addr2" id="space_addr2" placeholder="상세 주소"  >
			</div>
			<div class="red2"></div>
		</div>
		
		<div class="heading ">이용 정보를 입력해주세요.</div>
		<div class="content flex">
			<div class="f1">
				<div class="subtitle">이용시간 </div>
				<div class="subcon">
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
			<div class="f2">
				<div class="subtitle">정기휴무 </div>
				<div class="subcon">
					
										<div class="daybox">
											<select name="holiday" class="holiday">
												<option value="none">휴무없음</option>
												<option value="WEKLY">매주</option>									
											</select>
											<input type ="checkbox">공휴일 휴무 여부	
										</div>	
										<div class="today">		
											  <input type='checkbox' name='holi1' value='Mon' />월요일
											  <input type='checkbox' name='holi2' value='Tue' />화요일
											  <input type='checkbox' name='holi3' value='Wed' />수요일
											  <input type='checkbox' name='holi4' value='Thu' />목요일
											  <input type='checkbox' name='holi5' value='Fri' />금요일
											  <input type='checkbox' name='holi6' value='Sat' />토요일
											  <input type='checkbox' name='holi7' value='Sun' />일요일
										</div>
				</div>
			</div>
		</div>
		
		<div class="heading">가격 및 이용인원를 입력해주세요.</div>
		<div class="content flex">
			<div class="f2_1">
				<div class="subtitle">최소 예약 시간 </div>
				<div class="subcon subflex">
					<div class="number-input">
						<button onClick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
						<input class="quantity" min="1" name="quantity" value="1" type="number">
						<button onClick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
					</div>
					<div class="sec">시간</div>
				</div>
			</div>
			
			<div class="f2_1">
				<div class="subtitle">최소 수용 인원 </div>
				<div class="subcon subflex">
					<div class="number-input">
						<button onClick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
						<input class="quantity" min="1" name="quantity" value="1" type="number">
						<button onClick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
					</div>
					<div class="sec">명</div>
				</div>
			</div>
			
			<div class="f2_1">
				<div class="subtitle">최대 수용 인원 </div>
				<div class="subcon subflex">
					<div class="number-input">
						<button onClick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
						<input class="quantity" min="1" name="quantity" value="1" type="number">
						<button onClick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
					</div>
					<div class="sec">명</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="subtitle">가격등록 <span class="red"> *</span></div>
			<div class="subcon">
				<div class="pricebox">
					<h4>공간가격에 대한 기준인원은<input type="text" class="pricein" name="pricein1" id="pricein1" placeholder="인원입력"> 명입니다.</h4>
					<div class="red2 red2_2" id="red2_4_1"></div>
					<h4>
					<select name="paytype" class="start_hour">
						<option value="0" selected>시간</option>
						<option value="1">인원</option>
					</select> 
					당 공간의 가격은<input type="text" class="pricein" name="pricein2"  id="pricein2" placeholder="가격입력"> 원 입니다.</h4>
					<div class="red2 red2_2" id="red2_4_2"></div>
					<h4>기준인원 초과 시 1인당<input type="text" class="pricein" name="pricein3" id="pricein3" placeholder="가격입력"> 원씩 추가요금을 받습니다.</h4>
					<div class="red2 red2_2" id="red2_4_3"></div>
				</div>
			</div>
		</div>
		
		<div class="heading">환불기준을 입력해주세요.</div>
		<div class="content">
			<div class="refund"> 
				<div class="tit3">
						<label for="useday" class="subtitle">이용전 7일 전</label>
						<span class="money1">총 금액 </span>
							<select class="money_select">
								<option value="100">100% 환불</option>
								<option value="90">90% 환불</option>
								<option value="80">80% 환불</option>
								<option value="70">70% 환불</option>
								<option value="60">60% 환불</option>
								<option value="50">50% 환불</option>
								<option value="40">40% 환불</option>
								<option value="30">30% 환불</option>
								<option value="20">20% 환불</option>
								<option value="10">10% 환불</option>
								<option value="0" selected>환불불가</option>
							</select>
					</div>	
				<div class="tit3">
					<label for="useday" class="subtitle">이용전 3일 전</label>
					<span class="money1">총 금액 </span>
						<select class="money_select">
							<option value="100">100% 환불</option>
							<option value="90">90% 환불</option>
							<option value="80">80% 환불</option>
							<option value="70">70% 환불</option>
							<option value="60">60% 환불</option>
							<option value="50">50% 환불</option>
							<option value="40">40% 환불</option>
							<option value="30">30% 환불</option>
							<option value="20">20% 환불</option>
							<option value="10">10% 환불</option>
							<option value="0" selected>환불불가</option>
						</select>
				</div>	
				<div class="tit3">
					<label for="useday" class="subtitle">이용 전날</label>
					<span class="money2">총 금액 </span>
						<select class="money_select">
							<option value="100">100% 환불</option>
							<option value="90">90% 환불</option>
							<option value="80">80% 환불</option>
							<option value="70">70% 환불</option>
							<option value="60">60% 환불</option>
							<option value="50">50% 환불</option>
							<option value="40">40% 환불</option>
							<option value="30">30% 환불</option>
							<option value="20">20% 환불</option>
							<option value="10">10% 환불</option>
							<option value="0" selected>환불불가</option>
						</select>
				</div>	
				<div class="tit3">
					<label for="useday" class="subtitle">이용 당일</label>
					<span class="money2">총 금액 </span>
						<select class="money_select">
							<option value="100">100% 환불</option>
							<option value="90">90% 환불</option>
							<option value="80">80% 환불</option>
							<option value="70">70% 환불</option>
							<option value="60">60% 환불</option>
							<option value="50">50% 환불</option>
							<option value="40">40% 환불</option>
							<option value="30">30% 환불</option>
							<option value="20">20% 환불</option>
							<option value="10">10% 환불</option>
							<option value="0" selected>환불불가</option>
						</select>
				</div>	
			</div>
		</div>
		
		<div class="morewrap">
			<input type="submit" value="저장하기" id="more" class="save"  onclick="sumbmitsave(); return false;">
		</div>
	</form>	
	</div>


<%@ include file = "../include/topButton.jsp" %>

<%@ include file = "../include/footer.jsp" %>
</body>
</html>

