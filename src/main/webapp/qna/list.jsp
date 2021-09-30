<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의리스트</title>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/layout.css"/>
<style>
	.qnaWrap{
		margin-left:auto;
		margin-right:auto;
		padding-top:30px;
		padding-bottom:30px;
		height:auto;
		width:1170px;
	}
	
.modifytitle{
		height:80px;
		margin-bottom:20px;
		color :#333333;
		font-size : 25px;
		font-weight : bold;
		border-bottom:2px solid gray;
	}
	
	.frmmodify{
				width:600px;;
				height:100%;
				margin-left:190px;
			}
	
	table{
		border-collapse:collapse;
		width : 1170px;
	}	
	
	.table td,th{
		height:35px;
		border-bottom:1px solid #333333;
		text-align :center;
		font-size : 15px;
		}
		
    thead tr{
		background-color:#f8f8f8;
		color : #333333;
			}
			
	 table a{
        text-decoration:none;
        color : #333333;
      }
     table a:hover{
		 text-decoration:underline;
			}

	.btn{
		width : 260px;
		height : 45px;
		cursor:pointer;
		font-size : 15px;
		font-weight : bold;
	}
	
	.qnabtdiv{
		text-align : right;
	}
	
	.qnabt{
		margin-top : 10px;
		background-color:#FF385C;
		color : #f8f8f8;
		border:1px solid white;
		height : 60px;
		width : 150px;
	}
	
	.ck{
		margin-bottom : 10px;
		text-align : right;
	}
	#mypageqnalist{
		color : #5f0080;
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
	
	

</style>
</head>
<body>
<%@ include file = "../include/header.jsp" %>

<div class="qnaWrap">

	<div class="modifytitle">
				1:1문의
			</div>
			<div class="table">
			<table width="100%">
				<thead>
				<tr>
					<th width="50%">제목</th><th width="20%">작성자</th><th width="20%">날짜</th><th width="10%">답변</th>
				</tr>
				</thead>
				<tr>
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>
				<tr>
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>                         
				<tr>                          
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>                         
				<tr>                          
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>                         
				<tr>                          
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>                         
				<tr>                          
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>                         
				<tr>                          
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>                         
				<tr>                          
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>                         
				<tr>                          
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>                         
				<tr>                          
					<td><a href="#">내가쓴글</a></td><td>작성자</td><td>2021-08-16</td><td>완료</td>
				</tr>
			</table>
			</div>
			
			<div class="qnabtdiv">
				<input type="button" value = "문의글작성" class="btn qnabt" onclick="location.href='/teamA_2/qna/write.jsp'">
			</div>
			
			
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