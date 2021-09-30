<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logincheck</title>

</head>
<style>
	body{	
		background-color :#f8f8f8;
		margin:0px;
	}

	 .rows{
		height : 50px;
		width : 250px;
		margin : 5px 21px;
	 }
	 .frmlogin{
	margin:auto;

	 }
	
	.loginbt{
		background-color:#FF385C;
		color : #f8f8f8;
		border:1px solid white;
	}
	.joinbt{
		background-color:white;
		color : #333333;
		border:1px solid #333333; 
	}
	
	.logining{
		font-size : 25px;
		font-weight : bold;
		color : #333333;
		margin-top : 35px;
		text-align : center;
	}
	
	
	.writebt{
		margin-top : 20px;
		background-color:#FF385C;
		color : #f8f8f8;
		border:1px solid white;
		height : 60px;
		width : 300px;
	}
	
	.modifybt{
		margin-top :5px;
		background-color:gray;
		color : white;
		border:1px solid gray;
		height : 60px;
		width : 300px;
	}
	.mypagebt{
		background-color:white;
		color : #5f0080;
		border:1px solid #FF385C;
	}
	.logoutbt{
		background-color:white;
		color : #333333;
		border:1px solid #333333; 
	}
	
	 #id{
		width : 500px;
		height : 40px;
		font-size : 15px;
		font-weight : bold;
		
	 }
	 #password{
		width : 500px;
		height : 40px;
		font-size : 15px;
		font-weight : bold;
		
	 }
	.btn{
		width : 510px;
		height : 45px;
		cursor:pointer;
		font-size : 15px;
		font-weight : bold;
		margin-top : 25px;
	}
	h2{
		margin : 0px;
		text-align:center;
		font-size : 42px;
	}
	.login{
		margin:auto;
		margin-bottom:100px;
		height:200px;
		width : 550px;
	}

	.frmlogin{
	margin-top:50px;
	}

</style>
<body>
<%@ include file = "../include/header.jsp" %>
<h2>개인정보수정</h2>

		<div class="login">
				<!--로그인안했을때-->
				
				<form name="frmlogin" action='#.loginok.jsp' method="post" class="frmlogin">
					<div class="rows">
						
						<input type="text" id="id" name="id" placeholder="">
					</div>
					<div class="rows">
						
						<input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
					</div>
					<div class="rows">
						<input type="submit" value="확인하기" class="btn loginbt">
					</div>
				</form>

				
				<!--로그인했을때-->
			
		</div>
					













<%@ include file = "../include/footer.jsp" %>
</body>
</html>