<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>



<!DOCTYPE html>
<html>
<head>
<title>join</title>
<meta charset="UTF-8">
<script src="teamA_2/jquery/jquery-3.6.0.min.js"></script>
<script>

//중복확인체크 
//인증번호 찾기 ajax


	function checkFn(type){
		if(type == 'id'){
			var checkId =  /^[A-za-z0-9]{5,15}$/g;
			var value = document.joinfrm.id.value;
			//console.log(value);
			var span = document.getElementsByClassName("id")[0].getElementsByTagName("span")[0];
			//console.log(span);
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkId.test(value)){
				span.textContent = "5~10자의 영문 소문자, 숫자만 사용 가능합니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
		}else if(type == 'pass'){
			var checkpass = /(?=.*[a-zA-ZS])(?=.*?[#?!@$%^&*-]).{4,16}/;
			var value = document.joinfrm.password.value;
			var span = document.getElementsByClassName("password")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkpass.test(value)){
				span.textContent = "4~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'passre'){
			var value = document.joinfrm.password.value;
			var value2 = document.joinfrm.passwordre.value;
			var span = document.getElementsByClassName("passwordre")[0].getElementsByTagName("span")[0];
			if(value2 == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(value != value2){
				span.textContent = "비밀번호가 불일치합니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'name'){
			var checkName =  /^.{2,20}$/; 
			var value = document.joinfrm.nname.value;
			var span = document.getElementsByClassName("name")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkName.test(value)){
					span.textContent = "2~20자 영문 대 소문자, 숫자, 한글을 사용하세요.";
					span.style.color = "red";
					span.style.display = "inline";	
			}else{
				span.textContent = "";
				span.style.display = "none";
			}		
		}else if(type == 'email'){
			
			var checkEmail = /[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]$/i
			var value = document.joinfrm.email.value;
			var span = document.getElementsByClassName("email")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkEmail.test(value)){
				span.textContent = "이메일 주소를 다시 확인해주세요.";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'phone2'){
			var checkPhone2 = /^[0-9]{3,4}/g;
			var value = document.joinfrm.phone2.value;
			var span = document.getElementsByClassName("phone")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkPhone2.test(value)){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'phone3'){
			var checkPhone2 = /^[0-9]{4}/g;
			var value = document.joinfrm.phone3.value;
			var span = document.getElementsByClassName("phone")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkPhone2.test(value)){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
		}else if(type == 'numm11'){	
			var checknum11 = /^[0-9]{3}/g;
			var value = document.joinfrm.numm11.value;
			var span = document.getElementsByClassName("numm11")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent =  "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checknum11.test(value)){
				span.textContent =  "사업자 등록번호를 확인해주세요";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
		}else if(type == 'numm12'){
			var checknum12 = /^[0-9]{2}/g;
			var value = document.joinfrm.numm12.value;
			var span = document.getElementsByClassName("numm11")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent =  "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checknum12.test(value)){
				span.textContent =  "사업자 등록번호를 확인해주세요";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
		}else if(type == 'numm13'){
			var checknum13 = /^[0-9]{5}/g;
			var value = document.joinfrm.numm13.value;
			var span = document.getElementsByClassName("numm11")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checknum13.test(value)){
				span.textContent =  "사업자 등록번호를 확인해주세요";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'bank13'){
			var checkbank13 = /^[가-힣a-zA-Z]+$/;
			var value = document.joinfrm.bank13.value;
			var span = document.getElementsByClassName("bank13")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkbank13.test(value)){
				span.textContent =  "예금주를 확인해주세요";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		}else if(type == 'bank12'){
			var checkbank12 = /^[0-9]{11,13}/g;
			var value = document.joinfrm.bank12.value;
			var span = document.getElementsByClassName("bank12")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent =  "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
			}else if(!checkbank12.test(value)){
				span.textContent =  "계좌번호를 확인해주세요";
				span.style.color = "red";
				span.style.display = "inline";
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
			
			
		}//if문 대가로
	}//function 가로	

	function sumbitFn(){
		var result = true;
		
		var checkId = /^[A-za-z0-9]{5,15}$/g;
		value = document.joinfrm.id.value;
		span = document.getElementsByClassName("id")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "필수정보 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!checkId.test(value)){
			span.textContent = "5~10자의 영문 소문자, 숫자만 사용 가능합니다.";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		var checkPass = /(?=.*[a-zA-ZS])(?=.*?[#?!@$%^&*-]).{4,16}/;
		value = document.joinfrm.password.value;
		span = document.getElementsByClassName("password")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "필수정보 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else if(!checkPass.test(value)){
			span.textContent = "4~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		

		value = document.joinfrm.password.value;
		var value2 = document.joinfrm.passwordre.value;
		span = document.getElementsByClassName("passwordre")[0].getElementsByTagName("span")[0];
		if(value2 == ""){
			span.textContent = "필수정보 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else if(value != value2){
			span.textContent = "비밀번호가 불일치합니다.";
			span.style.color = "red";
			span.style.display = "inline";
			result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		var checkName =  /^.{2,20}$/; 
		value = document.joinfrm.nname.value;
		span = document.getElementsByClassName("name")[0].getElementsByTagName("span")[0];
		if(value == ""){
			span.textContent = "필수정보 입니다.";
			span.style.color = "red";
			span.style.display = "inline";
			 result = false;
		}else if(!checkName.test(value)){
				span.textContent = "2~20자 영문 대 소문자, 숫자, 한글을 사용하세요.";
				span.style.color = "red";
				span.style.display = "inline";
				 result = false;
		}else{
			span.textContent = "";
			span.style.display = "none";
		}
		
		
		
		var checkEmail = /[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]$/i;
			value = document.joinfrm.email.value;
			span = document.getElementsByClassName("email")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else if(!checkEmail.test(value)){
				span.textContent = "이메일 주소를 다시 확인해주세요.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
		

			var checkPhone2 = /^[0-9]{3,4}/g;
			value = document.joinfrm.phone2.value;
			span = document.getElementsByClassName("phone")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else if(!checkPhone2.test(value)){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else{
				span.textContent = "";
				span.style.display = "none";
			}
			
			
			var checkPhone3 = /^[0-9]{4}/g;
			value = document.joinfrm.phone3.value;
			span = document.getElementsByClassName("phone")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else if(!checkPhone3.test(value)){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
			
			
			
			var checknum11 = /^[0-9]{3}/g;
			value = document.joinfrm.phone3.value;
			span = document.getElementsByClassName("phone")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else if(!checknum11.test(value)){
				span.textContent = "사업자 등록번호를 확인해주세요";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
		
			var checkbank13 = /^[가-힣a-zA-Z]+$/;
			value = document.joinfrm.bank13.value;
			span = document.getElementsByClassName("bank13")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else if(!checkbank13.test(value)){
				span.textContent = "예금주를 확인해주세요";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
			

			
			
			var checkbank12 = /^[0-9]{11,13}/g;
			value = document.joinfrm.bank12.value;
			span = document.getElementsByClassName("bank12")[0].getElementsByTagName("span")[0];
			if(value == ""){
				span.textContent = "필수정보 입니다.";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else if(!checkbank12.test(value)){
				span.textContent = "계좌번호를 확인해주세요";
				span.style.color = "red";
				span.style.display = "inline";
				result = false;
			}else{
				span.textContent = "";
				span.style.display = "none";
			}	
		
		
		
		
		
		
		
		
	}//function 대가로
	
	
	
	
	
</script>
<style>
 body{
        margin:0px;
        background:#FAFAFA;
		font-size : 16px;
		font-weight : bold;
		color : #333333;
       }
	   
	   section{
				width:1000px;
				height:100%;
				background:#FAFAFA
				text-align:center;
				margin:50px auto;
			}
			form:not(#idch_frm){
				width:55%;
				height:100%;
				margin:100px auto;
			}
			.header{
				padding:10px 180px;
			}
			input{
				height:40px;
				width:400px;
			}
		
			
			input[type=submit]{
				width:75%;
				height:50px;
				padding:0px;
				background-color : #FF385C;
				color : #f8f8f8;
				border:1px solid white;
				font-size : 16px;
				font-weight : bold;
				cursor: pointer;
			}
			.rows{
				width:100%;
				padding : 0px 70px;
			}	
			.rows h{
			margin-bottom:-5px; 	
			}
			.rows:not(.h){
				padding-bottom:10px;
			}
			div.id{
				text-align:left;
			}
			.numcheak, #sp_adrs{
			width:400px;
			margin-top:10px;
			}
			input[type=text].id, #bank12, #sp_adrs2{
				width:300px;
			}
			input[type=email].email{
				width:285px;
			}
			input[type=button].id{
				width:100px;
				height:45px;
				maign-top:2px;
				margin-bottom:0px;
				background-color : #FF385C;
				color : #f8f8f8;
				border:1px solid white;
				font-size : 16px;
				font-weight : bold;
				cursor: pointer;
			}
				input[type=button].searchSP, .cheak12{
				width:97px;
				height:45px;
				maign-top:2px;
				margin-bottom:0px;
				background-color : #FF385C;
				color : #f8f8f8;
				border:1px solid white;
				font-size : 16px;
				font-weight : bold;
				cursor: pointer;
			}
			
			input[type=button].email{
				width:110px;
				height:45px;
				maign-top:2px;
				margin-bottom:0px;
				background-color : #FF385C;
				color : #f8f8f8;
				border:1px solid white;
				font-size : 16px;
				font-weight : bold;
				cursor: pointer;
			}
	
	
			#phone1{
				width:130px;
				height:45px;
			}
			#phone2, #phone3,#numm11,#numm12,#numm13{
				width:120px;
				height:40px;
			}
	footer{
        background-color:#333333;
        height:80px;
        color : #A1A1A1;
        font-size : 12px;
      }

     .copy{
        text-align:right;
        padding:0px 20px;
      }
      .red {
      font-size : 12px;
      }
      	#bank11{
				width:408px;
				height:45px;
			}
	#modal{
  display:none;
  position:fixed; 
  width:100%; height:100%;
  top:0; left:0; 
  background:rgba(0,0,0,0.3);
}
.modal-con{
  display:none;
  position:fixed;
  top:50%; left:50%;
  transform: translate(-50%,-50%);
  width: 500px;
  height: 420px;
  background:#fff;
   border-radius:20px; 
}
.modal-con .title{
  font-size:20px; 
  padding: 20px; 
  background : #FF385C;
  margin : 0px;
  border-radius:20px 20px 0px 0px; 
  color : white;
  font-weight : bold;
}
.modal-con .con{
  font-size:15px; 
  line-height:1.3;
  padding: 30px;
}
.modal-con .close{
  display:block;
  position:absolute;
  width:30px; height:30px;
  border-radius:50%; 
  border: 3px solid white;
  text-align:center; line-height: 30px;
  text-decoration:none;
  color:#000; font-size:20px; font-weight: bold;
  right:20px; top:15px;
  color : white;
}

textarea{
	width:430px; height:200px;
	resize: none;
	font-size : 20px;
}		
#moclose,{
width: 75%;
    height: 50px;
    padding: 0px;
    background-color: #FF385C;
    color: #f8f8f8;
    border: 1px solid white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    	text-decoration:none;

}

#moserch{
 height: 100px;
    padding: 0px;
    background-color: #FF385C;
    color: #f8f8f8;
    border: 1px solid white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    	text-decoration:none;


}
			
			
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
    $(document).ready(function(){
      
      $("#modal, .close").on('click',function(){
  	  $("#modal").fadeOut(300);
  	  $(".modal-con").fadeOut(300);
  		});
      
    });
    
    function openModal(modalname){
    	  document.get
    	  $("#modal").fadeIn(300);
    	  $("."+modalname).fadeIn(300);
    	}

</script>


</head>
<body>
<section>
			<form name="joinfrm" action="#" method="post">
				<div class="header"><img src="/teamA_2/include/img/logo.png" width="200"  ></div>
				<div class="rows h">
					<label for="id">아이디</label>
				</div>
				<div class="rows id">
						<input type="text" class="id impor" name="id" id="id" placeholder="아이디를 입력하세요." onblur="checkFn('id')" >
						<input type="button" class="id" value="ID 중복확인" name="searchID" onclick="idch()">	
					<br>
					<span class="red"></span>
				</div>
				<div class="rows h">
					<label for="password">비밀번호</label>
				</div>
				
				<div class="rows password">
					<input type="password" class="impor" name="password" id="password" placeholder="비밀번호를 입력하세요." onblur="checkFn('pass')" >
					<br>
					<span class="red"></span>				
				</div>
				<div class="rows h">
					<label for="passwordre">비밀번호 확인</label>
				</div>
				<div class="rows passwordre">
					<input type="password" class="impor" name="passwordre" id="passwordre" placeholder="비밀번호를 다시 입력하세요." onblur="checkFn('passre')" >
					<br>
					<span class="red"></span>					
				</div>
				<div class="rows h">
					<label for="name">닉네임</label>
				</div>
				<div class="rows name">
					<input type="text" class="impor" name="nname" id="name" placeholder="이름을 입력하세요." onblur="checkFn('name')">
					<br>
					<span class="red"></span>
				</div>
				
				
				
				<div class="rows h">
					<label for="email">본인 확인 이메일</label>
				</div>
				<div class="rows email">
					<input type="email" class="email impor" name="email" id="email" placeholder="이메일을 입력하세요" onblur="checkFn('email')" >
					<input type="button" class="email" value="인증번호 받기" name="cheakEM" onclick="emch()">
					<input  class="numcheak" name="numcheak" id="numcheak" placeholder="인증번호를 입력하세요" onblur="checkFn('numcheak1')" >
					<br>
					<span class="red"></span>
				</div>
				
			
	
				
				<div class="rows h">
					<label for="phone1">연락처</label>
				</div>
				<div class="rows phone">
					<select name="phone1" id="phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
					</select>&nbsp;
					<input type="text" class="impor" name="phone2" id="phone2" placeholder="연락처2" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onblur="checkFn('phone2')">&nbsp;
					<input type="text" class="impor" name="phone3" id="phone3" placeholder="연락처3" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onblur="checkFn('phone3')">
					<br>
					<span class="red"></span>
				</div>
				<div class="rows h">
					<label for="numm11">사업자 등록번호</label>
				</div>
				<div class="rows numm11">
					<input type="text" class="impor" name="numm11" id="numm11" maxlength="3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onblur="checkFn('numm11')">&nbsp;
					<input type="text" class="impor" name="numm12" id="numm12" maxlength="2" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onblur="checkFn('numm12')">&nbsp;
					<input type="text" class="impor" name="numm13" id="numm13" maxlength="5" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onblur="checkFn('numm13')">
					<br>
					<span class="red"></span>
				</div>
				<div class="rows h">
					<label for="bank11">은행명</label>
				</div>
				<div class="rows bank11">
								<select name="bank11" id="bank11">
						<option value="BOK">한국은행</option>
						<option value="JBB">전북은행</option>
						<option value="KAKAO">카카오뱅크</option>
						<option value="SINH">신한은행</option>
					</select>
					<br>
					<span class="red"></span>
				</div>
				<div class="rows h">
					<label for="bank13">예금주</label>
				</div>
				<div class="rows bank13">
					<input type="text" class="impor" name="bank13" id="bank13" onblur="checkFn('bank13')">
					<br>
					<span class="red"></span>
				</div>
				<div class="rows h">
					<label for="bank12">계좌번호</label>
				</div>
				
				<div class="rows bank12">
					<input type="text" class="impor" name="bank12" id="bank12" maxlength="13" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onblur="checkFn('bank12')">
						<input type="button" class="cheak12" value="계좌인증" name="cheak12" onclick="emch()">
					<br>
					<span class="red"></span>
				</div>
				<div class="rows">
					<label>
						<input type="submit" value="가입하기" onclick="sumbitFn(); return false;">
					</label>
				</div>
			</form>
	</section>

</body>
</html>