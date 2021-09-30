<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<style>
.section_sub1 span{
	font-size : 30px;
}
.section_sub1{
	padding-top : 90px;
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
#qnabtn{
	width:200px; 
	height:50px;
	background : #FF385C;
	color : white;
	font-size : 20px;
	font-weight : bold;
	border: none;
	margin : 10px 0px 10px 235px;
	border-radius:10px; 
	cursor: pointer;
	}
	
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2ead7bcc88cec1a57d679073b842c064"></script>
<script>
    $(document).ready(function(){
      $('.slider').bxSlider();
      
      $("#modal, .close").on('click',function(){
  	  $("#modal").fadeOut(300);
  	  $(".modal-con").fadeOut(300);
  		});
      
    });
    
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
<%@ include file = "../include/header.jsp" %>
<%@ include file = "../include/detailview.jsp" %>
	<div class="mainbac">
	<section>
	<div class="main">
		<table class="table">
			<tr>
				<td class="td1">
					<div class="inter1">업템포 사당연습실[당일예약]</div>
						<div class="hr">꼭 행사를 해야 한다면 독채공간에서 안전하게!</div>
						<div class="main-photo">
						  <div class="slider">
    							<div> 
     						 		<img src="/teamA_2/include/img/architecture.png" alt="슬라이드 이미지1" class="divimg" width="800" height="450">
   								</div>
    							<div> 
     							 	<img src="/teamA_2/include/img/chairs.png" alt="슬라이드 이미지2" class="divimg" width="800" height="450">
    							</div>
  							</div>
						</div>
						<div class="inter">꼭 행사를 해야 한다면 독채공간에서 안전하게!</div>
							<div class="ul-item">
								<div class="item" onclick="move('intro1')">공간소개</div>
								<div class="item1_1">|</div>
								<div class="item" onclick="move('intro2')">시설안내</a></div>
								<div class="item1_1">|</div>
								<div class="item" onclick="move('intro3')">유의사항</a></div>
								<div class="item1_1">|</div>
								<div class="item" onclick="move('intro4')">환불정책</a></div>
								<div class="item1_1">|</div>
								<div class="item" onclick="move('intro5')">Q&A </a></div>
								<div class="item1_1">|</div>
								<div class="item" onclick="move('intro6')">이용후기</a></div>
							</div>
					<div class="tlist">
						<h2 ><a name="intro1">공간소개</a></h2>
						<div class="under"></div>
						<div class="section_cont">
							<p>소개글 블라블라
							<br />
							소개글 블라블라
							소개글 블라블라
							소개글 블라블라
							</p>
						</div>
					
						<div class="daytime">영업시간<span class="time">0~24시</span></div>
						<div class="dayoff">휴무일&nbsp;&nbsp;&nbsp;<span class="day">없음</span></div>
					</div>
						
					<div class="tlist">
						<h2><a name="intro2">시설 안내</a></h2>
						<div class="under"></div>
							<ol>
								<li class="li">
									<strong>1</strong>
									<span class="listno">본 건물안에선 흡연은 절대금지 입니다.</span>
								</li>
								<li  class="li">
									<strong>2</strong>
									<span class="listno">상담시간 : 오전 10시 ~ 오후 8시 (문자문의) </span>
								</li>
								<li  class="li">
									<strong>3</strong>
									<span class="listno">문의 방법 : 문자로 "지점/날짜/룸/시간" 작성하여 발송 (010-7571-1755)</span>
								</li>
								<li  class="li">
									<strong>4</strong>
									<span class="listno">출입 비밀번호 : 스페이스클라우드 결제시 MMS문자 자동발송 (못받았을 경우 연락 요망) </span>
								<li>
									<strong>5</strong>
									<span class="listno">환불/변경 : 7일 이내 일정은 절대 불가</span>
								</li >
							</ol>
					</div>
					<div class="tlist">
						<h2><a name="intro3">예약시 주의사항</a></h2>
					<div class="under"></div>
							<ol>
								<li class="li">
									<strong>1</strong>
									<span class="listno">본 건물안에선 흡연은 절대금지 입니다.</span>
								</li>
								<li  class="li">
									<strong>2</strong>
									<span class="listno">상담시간 : 오전 10시 ~ 오후 8시 (문자문의) </span>
								</li>
								<li  class="li">
									<strong>3</strong>
									<span class="listno">문의 방법 : 문자로 "지점/날짜/룸/시간" 작성하여 발송 (010-7571-1755)</span>
								</li>
								<li  class="li">
									<strong>4</strong>
									<span class="listno">출입 비밀번호 : 스페이스클라우드 결제시 MMS문자 자동발송 (못받았을 경우 연락 요망) </span>
								<li>
									<strong>5</strong>
									<span class="listno">환불/변경 : 7일 이내 일정은 절대 불가</span>
								</li >
							</ol>
					</div>
					<div class="tlist">
						<h2><a name="intro4">환불규정 안내</a></h2>
						<div class="under"></div>
						<div class="info">
							<span class="redco">이용당일(첫 날) 이후에 환불 관련 사항은 호스트에게 직접 문의하셔야 합니다.</span> <br>
							<span>결제 후 2시간 이내에는 100% 환불이 가능합니다.(단, 이용시간 전까지만 가능)</span>
						</div>
							<ol>
								<li class="li"> 
									<strong>이용 7일 전  </strong>
									<span class="nono">환불 불가</span>
								</li>
								
								<li class="li">
									<strong>이용 3일 전  </strong>
									<span class="nono">환불 불가</span>
								</li>
								<li class="li">
									<strong>이용 2일 전  </strong>
									<span class="nono">환불 불가</span>
								</li>
								<li class="li">
									<strong>이용 전날  </strong>
									<span class="nono">&nbsp 환불 불가</span>
								</li>
								<li>
									<strong>이용 당일  </strong>
									<span class="nono">&nbsp 환불 불가</span>
								</li>
								</ol>
								
								
								
							<div class="maparea">
								<div class="maptext">
									<h3>오데온 스튜디오</h3>
										<p>인천 남동구 문화서로28번길 16 지하1층</p>
								</div>			
											<div class="APImap_text">
											<div class="icon">
												<div class="btnbox1">
													<div class="btn_qna num1" onclick="">
														<img src="../include/img/phon.png" height="20px" width="20px">
														<span class="">전화걸기</span>
														</div>
													</div>
												<div class="btnbox2">
													<div class="btn_qna num2" onclick="">
														<img src="../include/img/location.png" height="20px" width="20px">
														<span class="">길찾기</span>
													</div>
												</div>
												</div>
							
							
								</div>
						<div  class="realmap" id="map" style="width:100%;height:350px;"></div>   지도api



								
							</div>
								
								
								
					</div>
					<div class="tlist">
						<div class="btnline">
						<h2><a name="intro5"> Q&A </a> <span class="redco">10개</span></h2>
							<div class="btn_qna num3" onclick="openModal('modal1')">
								<img src="../include/img/pen20_white.png"  height="20px;" width="20px;">
								<span class="sp_icon">질문작성하기</span>
							</div>
							
							<div id="modal"></div>
 								 <div class="modal-con modal1">
   									<a href="javascript:;" class="close">X</a>
    								<p class="title">질문작성하기</p>
   									<div class="con">
   										<textarea placeholder="질문을 입력하세요"></textarea><br>
   										<input type="submit" value="등록" id="qnabtn">
   									</div>
  								</div>
						</div>
						<div class="under"></div>
							<div class="qnaarea">
								<div class="qnabox">
									<div class="qnaimg"><img src="../include/img/onlylogo.png"  width="80px"  class="reviewimg"></div>						
									<div class="qnawirter">
										<p class="qna wir">작성자 <span class="star">☆☆☆☆☆</span></p>
										<p class="qna comment_wir">연기 영상을 촬영하려는데 울림이 심한편인가요??</p>
										<p class="qna date">2021.09.10.21:20:42</p>
									</div>	
								</div>
								<div class="qnabox2">
									<div class="qnaimg2"><img src="../include/img/onlylogo.png" height="80px" width="80px"  class="reviewimg"></div>						
									<div class="qnahost">
										<p class="qna host">호스트의 답글</p>
										<p class="qna comment_host">울림은 심하지 않지만 저희는 방음이 많이 약해서 촬영목적으
										<p class="qna date">2021.09.10.21:20:42</p>
									</div>
								</div>
								<div class="noqna">등록된 글이 없습니다.</div>
							</div>
					</div>
					<div class="page"></div>
					<div class="tlist">
						<div class="introarea">	
							<h2><a name="intro6"> 이용후기</a><span class="redco">10개</span>
							·&nbsp;평균평점<span class="redco num">5.0</span></h2>
						</div>
						<div class="under"></div>
							<div class="review">
								<div class="qnaimg"><img src="../include/img/onlylogo.png" height="80px" width="80px"  class="reviewimg"></div>						
								<div class="qnawirter">
									<p class="qna wir">작성자 <span class="star">☆☆☆☆☆</span></p>
									<p class="qna comment_wir">연기 영상을 촬영하려는데 울림이 심한편인가요??</p>
									<p class="qna date">2021.09.10.21:20:42</p>
								</div>	
							</div>
								<div class="qnabox2">
									<div class="qnaimg2"><img src="../include/img/onlylogo.png" height="80px" width="80px"  class="reviewimg"></div>						
									<div class="qnahost">
										<p class="qna host">호스트의 답글</p>
										<p class="qna comment_host">울림은 심하지 않지만 저희는 방음이 많이 약해서 촬영목적으
										<p class="qna date">2021.09.10.21:20:42</p>
									</div>	
								</div>
					</div>
					<div class="page"></div>
				</td >
				<td class="td2"></td>
				
				<td class="td3">
					
					<div class="td3box">
						<form>					
						<div class="section_sub1">
						세부공간선택 &ensp; &ensp; &ensp; &ensp; &ensp; &ensp; &ensp; &ensp; &ensp; &ensp; &ensp; <img src="../include/img/share20.png" class="noun_Star"><span class="noun_Star"> ☆</span>
						</div>
						<div class="divbox">
							<div class="section_reservation">
								<p>호스트의 승인을 기다릴 필요 없이
								<br />
								지금 바로 예약하세요! 
								</p>
							</div>						
								<div class="section_prcie">
									<div class="in"><input type="radio" name="btnprice" value="price"></div>
									<div class="radio_name">
										3번방(업라이트피아노)</label>	
										<br />
									</div>
									<div class="radio_price"> 
										&#8361; 3,000&nbsp; <span>/시간</span><br/>
									</div>
								</div>
								<div class="section_prcie">
									<div class="in"><input type="radio" name="btnprice" value="price"></div>
									<div class="radio_name">
										<label>3번방(업라이트피아노)</label>	
										<br />
									</div>
									<div class="radio_price"> 
										&#8361; 3,000&nbsp;<span>/시간</span><br/>
									</div>
								</div>
								<div class="section_prcie">
								<div class="in"><input type="radio" name="btnprice" value="price"></div>
									<div class="radio_name">
											<label>3번방(업라이트피아노)</label>	
										<br />
									</div>
									<div class="radio_price"> 
										&#8361; 3,000&nbsp;<span>/시간</span><br/>
									</div>
								</div>
							<div class="section_select">
								<div class="section_date">예약 날짜선택
								</div>
								<input type="date" class="input_date">
								
							</div>
						<div class="section_sub3">
							<div class="section_total">총인원</div>
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
							</div>
						
						</div>
						<div class="nowcall">바로예약하기</div>
					</form>
					</div>
		
				</td>
			</tr>
				
		</table>
	</section>
	</div>
	
	


















<%@ include file = "../include/topButton.jsp" %>

<%@ include file = "../include/footer.jsp" %>


</body>
</html>