<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script src="/teamA_2/jquery/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){

	var nt = $('#nt'); 

    var cbox = $('#cbox');
    

    nt.click(function(){
    	
    	cbox.slideToggle(

         function(){cbox.addClass('show')}, //클릭하면 show클래스 적용되서 보이기

         function(){cbox.addClass('hide')} //한 번 더 클릭하면 hide클래스가 숨기기

       );

     });

   });

</script>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/layout.css"/>
<link type="text/css" rel="stylesheet" href="/teamA_2/include/paging.css"/>
<style>

	.noticeWrap{
		margin-left:auto;
		margin-right:auto;
		padding-top:30px;
		padding-bottom:30px;
		height:auto;
		width:1170px;
	}
	.noticeSearch{
		padding : 20px 30px;
		border :5px solid #FF385C;
	}
	#search{
		width : 980px;
		height : 40px;
		font-size : 15px;
		margrin : 0px;
		padding : 0px;
		border : 1px solid darkgray;
	}
	#srchbtn{
		margrin : 0px;
		padding : 0px;
		width : 100px;
		height : 42px;
		background-color : #FF385C;
		color : white;
		font-weight : bold;
		font-size : 20px;
		border : 1px solid #FF385C;
	}
	
	.nsubject{
   		 text-align: center;
   		 font-size : 15px;
   		 font-weight:bold;
   		 width : 200px;
   		 height : 50px;
	}
	
	.noticetable{
		margin-top : 30px;
		border-top : 3px solid darkgray;
	}
	.ntitle{
		width : 967px;
		 font-size : 15px;
   		 font-weight:bold;
   		  height : 50px;
	}
	.noticetr{
		border-bottom : 1px solid darkgray;
	}
	#cbox{
		padding :20px 0px 20px 202px;
		display:none;
		
	}
	
	.show {display:block} /*보여주기*/

	.hide {display:none} /*숨기기*/
	
	#nt{
		cursor:pointer;
	}
	

	

</style>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
<div class="noticeWrap">
		<div class="noticeSearch">
			<h3>공지사항검색</h3>
			<table>
				<tr>
					<td><input type="text" id="search" placeholder=" 검색어를 입력해주세요"></td>
					<td width="20px"></td>
					<td><input type="submit" id="srchbtn" value="검색"></td>
				</tr>
			</table>
		</div>
		<div class="noticeArticle">
			<table class="noticetable">
				<tr class="noticetr">
					<td class="nsubject">
						공지사항
					</td>
					<td class="ntitle">
						<!--해당bno 넘어가게하기 id-> 클래스로 변경해서 반복문번호로 매치시키기??-->
						<div id="nt">공지사항제목1</div>
					</td>
				</tr>
				<tr class="content">
					<td colspan="2" id="cboxtd"><div id="cbox">공지사항내용1</div></td>
				</tr>
				
				
				
	
			</table>
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