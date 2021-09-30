<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	margin : 0px;
}
.main{
	margin-left:auto;
	margin-right:auto;
	padding-top:80px;
	height:auto;
	width:1170px;
	display:flex;
	}
	.td1{
	width:800px;
	}
	.td2{
	width:50px;
	}
	.td3{
	width:320px;
	vertical-align:top;
	}
	.hr{
	font-size:22px;
	color: #656565;
	}
	.mainbac{
	padding-bottom:150px;
	}
	.table{
	border-collapse:collapse;
	}
	.side-slide{
	height:450px;
	width:50px;
	border:1px solid black;
	}
	a { 
	text-decoration:none;
	 color:black; 
	}
	.nav-item_a:hover { color:ff385c; }
	.sub-item{
	display:flex;
	}
	.inter{
	font-size:48px;
	width:530px;
	}
	.inter1{
	font-size:48px;
	width:800px;
	}
	.ul-item{
	margin-top:50px;
	color:#484848;
	font-size:16px;
	}
	.ul-item div{
		display:inline-block;
		float : left;
	}
	.item{
	font-size:16px;
	background-color : #FF385C;
	height:35px;
	text-align:center;
	width:128px;
	padding-top:10px;
	vertical-align:middle;
	cursor:pointer;
	color :  white;
	font-weight : bold;
	}
	.item1_1{
		background-color : #FF385C;
		color :  white;
		height:43px;
		vertical-align:bottom;
		font-size : 25px;
		font-weight : bold;
		width :6px;
		padding-top : 2px;
	}
	.item:hover{
		background-color:#ebebeb;
		color : #FF385C;
	}
	div>h2{
	font-size:16px;
	}
	.tlist{
	width:outo;
	padding:100px 0px 25px;
	}
	.under{
	border:2px solid  #FF385C;
	width:15px;
	}
	.section_cont{
	color:#484848;
	}
	.daytime{
	border-bottom:1px solid  #ebebeb;
	padding-bottom:15px;
	margin:50px 0 15px;
	}
	.li{
	font-size:16px;
	border-bottom:1px solid  #ebebeb;
	width:800px;
	}
	ol{
	padding:0px;
	}
	ol>li{
	padding: 15px 0px 15px;
	list-style:none;
	}
	.listno,.nono,.time,.day{
	color:#656565;
	padding-left:10px;
	}
	.redco{
	color:#FF385C;
	}
	.dot{
	}
	.introarea{
	display:flex;
	}
	.star,.wir{
	display:flex;
	}
	.star{
		cursor:pointer;
		text-align:center;
		margin-left:auto;
	}
	.info{
	padding-top:20px;
	}
	.btnline{
	display:flex;	
	}
	.btn_qna{
	margin-left:auto;
	border:1px solid #FF385C;
	color:white;
	width:120px;
	height:30px;
	padding:5px 17px 3px;
	border-radius: 100px;
	font-size:14px;
	}
	.maparea{
	background-color:#f6f6f6;
	width:800px;
	height:930px;
	}
	.maptext{
	padding-left:20px;
	}
	.maptext h3{
	font-size:24px;
	margin-bottom:10px;
	padding-top:30px;
	}
	.maptext p{
	font-size:16px;
	margin:0px;
	}
	.APImap_text{

	width:800px;
	height:100px;
	display:flex;
	margin-top:35px;
	}
	.icon{
	display:flex;
	height:0px;
	}
	.qnabox,.review {
	margin-top:50px;
	display:flex;
	border-bottom:1px solid #ebebeb;
	}
	.qnabox2 {
	display:flex;
	}	
	.qnaimg,.qnaimg2 {
	padding-top:25px; 
	margin-left:10px;
	height:94px;
	width:100px;
	}					
	.qnawirter,.qnahost{
	height:120px;
	width:684px;
	}
	.comment_wir,.comment_host{
	color:#484848;
	}
	.host{
	color:#FF385C;
	}
	.date{
		font-size:12px;
		color:#484848;
	}	
	.reviewimg{
	border-radius: 55px;
	width:75px; height:75px;
	border:3px solid #FF385C;
	}
	.headfont{
	font-size:16px;
	}
	.divbox{
	border-top:4px solid  #FF385C;
	height:auto;
	width:320px;
	margin-top:20px;
	padding:0 12px 0;
	}

	.boxarea{
	padding:0 10px 0;
	}
	.section_reservation{
	border-bottom:1px solid #ebebeb;
	height:60px;
	text-align:center;
	}
	.in{
	padding-top:5px;
	}
	.section_prcie{
	padding:10px;
	border-bottom:1px solid #ebebeb;
	height:auto;
	display:flex;
	}
	.section_select{
	height:auto;
	margin-top:10px;
	}	
	.section_sub3{
	border-top:2.5px solid #FF385C;
	height:100px;
	margin-top:100px;
	}
	.noun_Star{
		height:20px;	
		width:20px;
		padding-left:14px;
		cursor:pointer;
	}
	.radio_name{
		padding-left:10px;
		width:160px;
		font-size:14px;
	}	
	.radio_price{
		font-size:20px;
		color:#949494;
		width:150px;
		padding-top:5px;
		text-align : right;
	}				
	.radio_price span{
	font-size:12px;
	color: #656565;
	}
	.section_date{
	border-top:2.5px solid #FF385C;
		border-bottom:1px solid #ebebeb;
		padding:15px 0 15px;
		margin-top:100px;	
	}
	.input_date{
	margin-top:10px;
	width:320px;
	height:45px;
	border:1px solid #FF385C;
	font-size:16px;
	
	}
	.section_total{
		border-bottom:1px solid #ebebeb;
		padding:15px 0 15px;
	}
	.sButton{
	border:1px solid #FF385C;
	margin-top:10px;
	width:320px;
	height:45px;
	font-size:16px;
	}
	.nowcall{
	margin-top:120px;
	margin-left:20px;
	font-weight:bold;
	margin-left:20px;
	border:1px solid #949494;
	color:black;
	background-color:#949494;;	
	width:270px;
	height:33px;
	padding:15px 17px 3px;
	border-radius: 100px;
	font-size:18px;
	text-align:center;
	cursor:pointer;
	}

	
	.num1{
	font-weight:bold;
	margin-left:20px;
	border:1px solid #FF385C;
	color:black;
	background-color:white;	
	width:335px;
	height:33px;
	padding:15px 17px 3px;
	border-radius: 100px;
	font-size:18px;
	text-align:center;
	cursor:pointer;
	}
	.num2{
	font-weight:bold;
	margin-left:156px;
	border:1px solid #FF385C;
	color:black;
	background-color:white;	
	width:335px;
	height:33px;
	padding:15px 17px 3px;
	border-radius: 100px;
	font-size:18px;
	text-align:center;
	cursor:pointer;
	}
	.num3{
	background-color: #FF385C;
	cursor:pointer;
	}
	.sp_icon{
	color:white;
	text-align:center;
	}
	.realmap{
	border:1px solid #FF385C;
	width:800px;
	height:700px;
	}
	
	.btnbox1,.btnbox2{
	width:250px;
	height:50px;
	}
	
		
</style>
<script>

function move(type){
	if(type == 'intro1'){
			location.href = "#intro1";
		}else if(type == 'intro2'){
			location.href = "#intro2";
		}else if(type == 'intro3'){
			location.href = "#intro3";
		}else if(type == 'intro4'){
			location.href = "#intro4";
		}else if(type == 'intro5'){
			location.href = "#intro5";
		}else if(type == 'intro6'){
			location.href = "#intro6";
		}
}
</script>
</head>
<body>

</body>
</html>