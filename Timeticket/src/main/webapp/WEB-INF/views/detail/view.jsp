<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">

<link href= '/resources/css/layout.css' rel='stylesheet' type='text/css'>
<link href= '/resources/css/detail.css' rel='stylesheet' type='text/css'>
<link href= '/resources/css/calendar_theme.css' rel='stylesheet' type='text/css'>
<link href= '/resources/css/layout_swiper.css' rel='stylesheet' type='text/css'>
<link href= '/resources/css/user_review.css' rel='stylesheet' type='text/css'> 
<link href= '/resources/css/common.css' rel='stylesheet' type='text/css'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type='text/javascript' src='https://timeticket.co.kr/m/js/jquery-ui.js'></script>
<script src='https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js'></script>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css' />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<style>
@charset "utf-8";
/* css 추가 */
a {
	text-decoration: none;
}

#calendar_popup .ui-widget.ui-widget-content {
	width: 100%;
	padding: 5px;
	box-sizing: border-box;
	border-radius: 10px;
	background: #fff;
}

#calendar_popup .ui-datepicker .ui-datepicker-header {
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 0;
}

#calendar_popup .ui-widget-header {
	background: #fff;
	border: 0;
	margin-top: 10px;
}

#calendar_popup .ui-datepicker .ui-datepicker-prev {
	position: static;
	display: block;
	width: 15px;
	height: 18px;
	background: url(/resources/images/ico_pre.png) no-repeat center
		center;
	background-size: 100% 100%;
	margin-right: 20px;
	cursor: pointer;
	order: 0
}

#calendar_popup .ui-datepicker .ui-datepicker-next {
	position: static;
	display: block;
	width: 15px;
	height: 18px;
	background: url(/resources/images/ico_next.png) no-repeat center
		center;
	background-size: 100% 100%;
	margin-left: 20px;
	cursor: pointer;
	order: 2
}

#calendar_popup .ui-datepicker .ui-datepicker-prev span, #calendar_popup .ui-datepicker .ui-datepicker-next span
	{
	position: static;
	display: none;
}

#calendar_popup .ui-datepicker .ui-datepicker-title {
	margin: 0;
	padding-bottom: 4px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 0;
}

#calendar_popup .ui-datepicker .ui-datepicker-title span {
	color: #414141;
	font-weight: bold;
	font-size: 18px;
}

#calendar_popup .ui-datepicker .ui-datepicker-title span.ui-datepicker-year
	{
	order: 0
}

#calendar_popup .ui-datepicker .ui-datepicker-title span.ui-datepicker-year::after
	{
	content: ".";
	display: inline-block;
	color: #414141;
	font-weight: bold;
	font-size: 18px;
}

#calendar_popup .ui-datepicker .ui-datepicker-calendar {
	width: 100%;
	margin-top: 10px;
}

#calendar_popup .ui-datepicker th {
	padding: 0;
	color: #919191;
	font-size: 15px;
	font-weight: 400;
	padding-bottom: 10px;
}

#calendar_popup .ui-datepicker td {
	padding: 0;
	padding-bottom: 12px;
	position: relative;
}

#calendar_popup .ui-datepicker td a {
	display: block;
	width: 25px;
	height: 25px;
	line-height: 25px;
	border-radius: 90px;
	color: #414141;
	font-size: 15px;
	margin: 0 auto;
	border: 0;
	background: none;
	text-align: center;
	padding: 0;
}

#calendar_popup .ui-datepicker td.ui-datepicker-today a:after {
	content: '오늘';
	position: absolute;
	font-size: 10px;
	bottom: -6px;
	left: 50%;
	transform: translateX(-50%);
	border: 0;
	width: auto;
	height: auto;
	color: #ff4b4b;
}

#calendar_popup .ui-state-disabled {
	opacity: 0.4;
}

#calendar_popup .ui-state-disabled span {
	display: block;
	width: 25px;
	height: 25px;
	line-height: 25px;
	border-radius: 90px;
	color: #414141;
	font-size: 15px;
	margin: 0 auto;
	border: 0;
	background: none;
	text-align: center;
	padding: 0;
}

#calendar_popup .ui-datepicker tr td:first-child a, #calendar_popup .ui-datepicker tr td:first-child span
	{
	color: #ff4b4b;
}

#calendar_popup .ui-datepicker tr td:last-child a, #calendar_popup .ui-datepicker tr td:last-child span
	{
	color: #4b75ff;
}

#calendar_popup .ui-datepicker tr td a.ui-state-active {
	background: #ff4b4b;
	color: #fff;
}

#calendar_popup.calendar_popup_02 .ui-widget.ui-widget-content {
	padding-bottom: 5px;
}

.calendar_popup_02 .submit_btn {
	padding-top: 10px;
	width: 100%;
	background: #f4f4f4;
	cursor: pointer;
}

.calendar_popup_02 .submit_btn button {
	display: block;
	width: 100%;
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: #ff4b4b;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	border-radius: 10px;
	border: 0;
	cursor: pointer;
}

.calendar_popup_02 .submit_btn button.disabled {
	background: #c6c6c6;
	cursor: pointer;
}
</style>

<style>
.shadetabs ul, li {list-style:none; margin:0; padding:0;  }

.shadetabs{ width:818px; cursor:pointer; padding:0; background:#fff; height:61px; border:1px solid #eee; border-bottom:1px solid #eee;}

.shadetabs li{  }


.shadetabs li a{
text-decoration: none; 
float:left; 
width:25%; 
padding-top:20px;
text-align:center;
font-size: 18px;
font-weight: 600;
color:#777;
}

.shadetabs li a:visited{ }
.shadetabs li a:hover{  }
.shadetabs li.selected{ }


.shadetabs li.selected a{
color:#ff4b4b;
font-weight: 800;
}

.shadetabs li.selected span{ border-bottom:4px solid #ff4b4b; padding-bottom:16px; }


.shadetabs li.selected a:hover{
text-decoration: none;
}

.contentstyle{
width: 100%;
height:auto;
}
</style>

<style>
.main_tab_wrap {
	border: 1px solid #eee;
	border-top: none;
	padding: 30px 59px;
	border-radius: 0 0 10px 10px;
}

.main_tab_title {
	font-size: 20px;
	margin-top: 15px;
	font-weight: 700;
	color: #000;
}

.back_img {
	background: -moz-linear-gradient(top, rgba(0, 0, 0, 0.6) 0%,
		rgba(0, 0, 0, 0.95) 100%);
	background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.6) 0%,
		rgba(0, 0, 0, 0.95) 100%);
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0.6) 0%,
		rgba(0, 0, 0, 0.95) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000',
		endColorstr='#e6000000', GradientType=0);
}

.promo_box {
	position: relative;
	height: 70px;
	padding: 15px 25px;
	margin-top: 15px;
	border-radius: 10px;
	font-size: 16px;
	line-height: 150%;
}

.promo_datetime {
	float: left;
	margin-top: 10px;
	font-size: 16px;
	font-weight: 700;
	color: #fff;
	border-radius: 10px;
}

.promo_btn_circle {
	position: absolute;
	bottom: 25px;
	right: 15px;
}

.promo_btn_circle img {
	width: 40px;
}

/* 클래스 상세페이지 글자 스타일 */
.cls_detail {
	width: 100%;
	margin: 0 auto;
	font-size: 14px;
	color: #313131;
	line-height: 1.8em;
	text-align: left;
}

.cls_detail img {
	margin: 20px 0;
	width: 100%;
	border-radius: 10px;
}

.cls_para {
	padding: 10px 10px;
	text-align: justify;
}

.cls_title {
	margin: 30px 0 5px 0;
	padding: 13px 20px;
	font-size: 20px;
	font-weight: bold;
	background: #F7DFDB;
	color: #ff4b4b;
	border-radius: 10px;
}

.cls_title:nth-child(1) {
	margin-top: 40px;
}

.info_subtitle {
	font-weight: bold;
}

.radius_box {
	background: #f8f8f8;
	padding: 12px 15px;
	border-radius: 10px;
	margin-top: 5px;
}

/* 상세 이미지 펼쳐보기 */
.info_detail_btn {
	position: absolute;
	bottom: 15px;
	width: 94%;
	height: 55px;
	line-height: 55px;
	margin-left: 3%;
	border: 1px solid #ccc;
	border-radius: 10px;
	background: #fff;
	color: #000;
	font-size: 20px;
	font-weight: 600;
	text-align: center;
	box-shadow: 1px 1px 3px 2px #ddd;
}

.info_detail_poster {
	position: relative;
	margin-top: 35px;
	width: 100%;
	height: 700px;
	color: #fff;
	font-size: 20px;
	background-size: 100%;
	background-repeat: no-repeat;
	background-position-y: 0%;
	background-image:
		url('/resources/images/${ vdto.tic_back }');
}

.info_detail_gradient {
	width: 100%;
	height: 700px;
	background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0) 40%,
		rgba(255, 255, 255, 0.4) 60%, rgba(255, 255, 255, 0.8) 80%,
		rgb(255, 255, 255) 100%);
}

.viewpage_flex {
	display: flex;
	justify-content: flex-start;
}

.viewpage_flex div:nth-child(1) {
	padding-left: 10px;
	width: 120px;
	color: #888;
}

.viewpage_flex div:nth-child(2) {
	color: #000;
}

.viewpage_flex a {
	text-decoration: underline;
}

.border_box {
	border: 1px solid #eee;
	padding: 10px 20px;
	border-radius: 10px;
	margin-top: 5px;
}

.border_box .viewpage_flex {
	border-bottom: 1px solid #eee;
	padding-bottom: 8px;
	margin-bottom: 8px;
}

.border_box .viewpage_flex:last-child {
	border: none;
	padding-bottom: 0;
	margin-bottom: 0;
}

.now_engine {
	padding-bottom: 15px;
	font-size: 15px;
	font-weight: 400;
}

.now_engine a {
	color: #555;
}
</style>

<style>
.bottom_menu {
	font-size: 16px;
	font-weight: 500;
	color: #444;
	margin-bottom: 20px;
}

.bottom_menu a {
	color: #444;
}

.bottom_btns {
	display: flex;
	font-size: 14px;
	color: #444;
}

.bottom_btns div {
	border: 1px solid #d5d5d5;
	border-radius: 10px;
	width: 140px;
	padding: 10px 0;
	margin-right: 25px;
	text-align: center;
}
</style>

<style>
.shadetabs ul, li {
	list-style: none;
	margin: 0;
	padding: 0;
}

.shadetabs {
	width: 818px;
	cursor: pointer;
	padding: 0;
	background: #fff;
	height: 61px;
	border: 1px solid #eee;
	border-bottom: 1px solid #eee;
}

.shadetabs li {
	
}

.shadetabs li a {
	text-decoration: none;
	float: left;
	width: 25%;
	padding-top: 20px;
	text-align: center;
	font-size: 18px;
	font-weight: 600;
	color: #777;
}

.shadetabs li a:visited {
	
}

.shadetabs li a:hover {
	
}

.shadetabs li.selected {
	
}

.shadetabs li.selected a {
	color: #ff4b4b;
	font-weight: 800;
}

.shadetabs li.selected span {
	border-bottom: 4px solid #ff4b4b;
	padding-bottom: 16px;
}

.shadetabs li.selected a:hover {
	text-decoration: none;
}

.contentstyle {
	width: 100%;
	height: auto;
}

/* 상세 이미지 스타일   */
.main_img { margin-top:35px; width:700px; text-align: center; }
.main_img img { display:block; width:100%; }

</style>

<style>
.viewpage_text { line-height:160%; font-size:15px;	}
.viewpage_text .viewpage_noti { padding:15px 0 0 0; font-weight:700; font-size:16px; }
</style>




			
	<!-- 에이작스 처리후, 다른 에이작스 메뉴영역에 안내 버튼 클릭시 다시 에이작스 처리되는 지도 -->			
	<script>
	var map3;
	
	function initMapAjax() {
	  	mapAjax = new google.maps.Map(document.getElementById("map")
	  			, {
					center: new google.maps.LatLng(${pdto.place_lat}, ${pdto.place_lon}),
					zoom: 15
				  });
	  	
	  	var myIconAjax = {
	  	        url: '/resources/images/default-marker.png',
	  	        size: new google.maps.Size(50, 50),
	  	        origin: new google.maps.Point(0, 0),
	  	        anchor: new google.maps.Point(25, 25)
	  	      };
	  	
	  	var markerAjax = new google.maps.Marker({
	  	    position: new google.maps.LatLng(${pdto.place_lat}, ${pdto.place_lon}), 
	  	    map: mapAjax,
	  	    icon: myIconAjax
	  	});
			} 
	</script>
	
	
	<!-- 에이작스 처리 후, 안내 에이작스 메뉴영역에 펼쳐보기 버튼 클릭시 다시 처리되는 에이작스임 -->
	<script>
    	function viewimg(){


				   	  document.querySelector('.info_detail_gradient').remove();   
				   	  document.querySelector('.info_detail_btn').remove();     	   
		              document.querySelector('.info_detail_poster').setAttribute("style", "display:none;");
		              document.querySelector('.main_img').scrollIntoView({ behavior: 'smooth', block: 'start'});
		              
		              var tic_code = "${param.tic_code}";
		              
		              $.ajax({
		                  url:"/ajaxview/imgview",
		                  dataType:"json",
		                  type:"GET", 
		                  data:{tic_code:tic_code}, 
		                  cache:false,
		                  success:function (data, textStatus, jqXHR){
		                	  console.log(data);
				                
		                  	  $(".main_img").html(data.tic_pic_sp);         	
                	
		                  } // function
		              }) // ajax
		   }; // click (펼쳐보기)
	</script>


	<!-- 에이작스 처리 후, 안내 에이작스 메뉴영역에 환불규정 바로가기 버튼 클릭시 다시 처리되는 에이작스임 -->
	<script>
		function refund_ajax() {
					// alert("여러번 클릭");
				   
					var tic_code = "${param.tic_code}";	
				   			    
							$.ajax({
								url:"/ajaxview/4",
								dataType:"json",
								data:{tic_code : tic_code},
								cache:false,
								success:function (data, textStatus, jqXHR){
								
									console.log(data);	
									
												// 안내, 장소, 환불규정 기존의 내용 없애기
												$('.main_tab_wrap').remove();
												// 후기 기존의 내용 없애기 (후기 있을 때)
												$('.score_wrap').remove();	
												// 후기 기존의 내용 없애기 (후기 없을 때)
												$('#noreviews').remove();
												
												
												// 여기까지 하면 환불규정 에이작스 메뉴 밑 내용 모두 사라짐
												
												
												 // 환불규정 에이작스 메뉴 밑 내용 새로 뿌리기 위한 main_tab_wrap 클래스를 가지는 div 태그 만들기
								        	 	$("#ajaxcontentarea").append(`<div class='main_tab_wrap' style=';'><p class='main_tab_title'>환불규정 및 안내사항</p></div>`);
								        	 	// console.log(data);
					        	 	
								        	 	$( data ).each( function (i, elem){
										                	 		   // 데이터 뿌리기 위한 정보 가져오기 시작 (정보는 ref 라는 변수에 담김)
											                		   var ref = `<div class='viewpage_text radius_box' style='margin-top:10px; border-radius: 10px 10px 0 0;'>
														                			   \${elem.ref_rule}
														                			   \${elem.ref_cau == null?"":elem.ref_cau}
														                			   \${elem.ref_way}
													                			   </div>`;
								            	
												// ref 라는 변수를 main_tab_wrap 클래스를 가진 div 안에 넣어 안내 내용이 뿌려지게 한다.
								            	$(ref).appendTo($(".main_tab_wrap")); 
								            
		            		   
		            	 	}); // each
						} // success function
					}) // ajax	
					
					// 안내 에이작스 메뉴영역에 환불규정 바로가기 링크 다시 클릭시 적용되는 css(환불규정 메뉴 문구 빨간색 글자로 변환)
					$('#maintab li').removeClass('selected');
					$("#refund_link").addClass('selected');
			}; // function
	</script>

</head>






<body style="background-color: #fff; height: auto;">
 	<div style="background-color: #f6f6f6; padding-top:10px; padding-bottom:50px;">	
	<div style="padding-top: 20px; width: 815px; margin: 0 auto;">
	
	<c:choose>
		<c:when test="${vdto.lcate_name eq '공연'}">
			<div class="now_engine">
				🗂️ <a href='/timeticket/list.do?lcate_code=lcate_1'>${ vdto.lcate_name } > </a><a href='/timeticket/list.do?lcate_code=lcate_1&scate_code=scate_1'>${ vdto.scate_name }
					> </a><a href='/timeticket/list.do?lcate_code=lcate_1&scate_code=scate_1&gen_code=gen_1'>${ vdto.gen_name } > </a>
			</div>
		</c:when>
		
		<c:when test="${vdto.lcate_name eq '클래스'}">
			<div class="now_engine">
				🗂️ <a href='/timeticket/list.do?lcate_code=lcate_5'>${ vdto.lcate_name } > </a><a href='/timeticket/list.do?lcate_code=lcate_5&scate_code=scate_3'>${ vdto.scate_name }
					> </a>
			</div>
		</c:when>
		
		<c:otherwise>
			<div class="now_engine">
				🗂️ <a href='/timeticket/list.do?lcate_code=lcate_2'>${ vdto.lcate_name } > </a>
			</div>
		</c:otherwise>
	</c:choose>
		
		
		<div style="float: left; position: relative; width: 482px; margin-right: 20px; border-radius: 10px;">
			<img src='/resources/images/${ vdto.tic_back }' style="width:482px; height: 482px; border-radius:10px;" onError="this.style.visibility='hidden'"> 
			<div class="info_bg_gradient"></div>

	

			<!-- 타임세일/오늘티켓 아이콘 노출-->
			<div style="position: absolute; top: 15px; left: 15px; display: flex;">
				<c:if test="${  0 <= vdto.new_bar && vdto.new_bar <= 7 }">
					<span class='promo_new'>NEW</span>
				</c:if> 
				
				<c:if test="${tdvdto.gwon_name eq '오늘할인'}">
					<span class='promo_today'>${ tdvdto.gwon_name }</span>
				</c:if>
				
				<c:if test="${tvdto.gwon_name eq '타임세일'}">
					<span class='promo_timesale'>${ tvdto.gwon_name }</span>
				</c:if>
			</div>



			<!-- 타임세일/오늘할인 배너 -->
			<div style="">

				<!-- 타임세일 안내 영역 -->
				<c:if test="${tvdto.gwon_name eq '타임세일' }">
					<div class="promo_box" style="background: #FFE9E9; border: 1px solid #fde3e3;">
						<div style="font-weight: 700; color: #FF4B4B;">
						${ tvdto.gwon_name	} 진행중 ⏰ 							
							<span style="font-size: 14px; color: #555; font-weight: 400;">
							회차당 2~3매 선착순 최저가
							</span>						
						</div>
						
						<div class="promo_datetime" style="padding: 5px 15px; background: #ff4b4b;">
						~${ tvdto.ts_etime }
						</div>
						
						<div class="promo_btn_circle">
							<a href="/timeticket/sale.do?type=timesale"> 
							<img src="/resources/images/btn_circle_right.png" />
							</a>
						</div>
						
					</div>
				</c:if>

				<!-- 오늘할인 안내 영역 --> 
				<c:if test="${tdvdto.gwon_name eq '오늘할인' }">
					<div class="promo_box"
						style="background: #EDFFE5; border: 1px solid #d8f5cc;">
						<div style="font-weight: 700; color: #459E26;">
						${ tdvdto.gwon_name } 적용중 🎉 
						<span style="font-size:14px; color:#555; font-weight:400;">오늘 추가로 할인되는 티켓이 있어요!</span>
						</div>
						<div class="promo_datetime" style="padding: 5px 0 5px 15px; width: 105px; background: #459E26;" id="today_timer">						
						</div>
						
						<div class="promo_btn_circle">
							<a href="section.php?&page=promo&type=today"> 
							<img src="/resources/images/btn_circle_right.png" />
							</a>
						</div>
						
					</div>  					
				</c:if>
			</div>


			<script>
		      // 오늘할인 타이머
		      var date1;
		      date1 = new Date();
		      date1.setHours(0);
		      date1.setMinutes(0);
		      date1.setSeconds(0);
		      var time1 = date1.getTime();
		      date1.setDate(date1.getDate() + 1);
		      var time2 = date1.getTime();

		      var now = new Date();
		      var gap = Math.round((time2 - now.getTime()) / 1000);
		      var time = gap; // 기준시간
		      var hour = ""; // 시간
		      var min = ""; // 분
		      var sec = ""; // 초

		      var x = setInterval(function () {
		        hour = parseInt(time / 3600);
		        min = parseInt(time / 60 % 60);
		        sec = time % 60; // 나머지를 계산
		        if (hour < 10) hour = "0" + hour;
		        if (min < 10) min = "0" + min;
		        if (sec < 10) sec = "0" + sec;
				
		        document.getElementById("today_timer").innerHTML = hour+' : '+min+' : '+sec;
		        time--;

		        if (time < 0) {
		          clearInterval(x);
		          document.getElementById("today_timer").innerHTML = "00 : 00 : 00";
		        }
		        
		      }, 1000);
			</script>
			
			

			<!-- 좌측 포스터 이미지 -->
			<div style="position: absolute; top: 180px; left: 25px;">
				<img src="/resources/images/${ vdto.tic_prof }"
					style="border-radius: 8px; width: 140px;" alt="${ vdto.tic_name }">
			</div>



			<!-- 포스터 옆 정보영역 -->
			<div style="position: absolute; top: 181px; left: 183px;">
				<div class="info-warp">
				
				<c:choose>
				
					<c:when test="${vdto.lcate_name eq '공연'}">
					<div class="icon">
						<span>${ vdto.tic_loc }</span>
						<span>${ vdto.scate_name }</span>
					</div>
					</c:when>
					
					<c:otherwise>
					<div class="icon">
						<span>${ vdto.tic_loc }</span>
						<span>${ vdto.lcate_name }</span>
						</div>
					</c:otherwise>
					
				</c:choose>
				
					<p style="padding-top: 10px; font-size: 14px; font-weight: 300; color: #fff;">
					${ vdto.tic_class }
					</p>

					<p class="title" style="padding-top: 5px;">${ vdto.tic_name }</p>
					
					<div class="openrun">
						<p class="run_tit">
							<img src="/resources/images/ico_calendar.png">
							${ vdto.tic_run_ti }
						</p>
						
						<p class="run_info">
							<span>
							<img src="/resources/images/ico_clock.png">
							${ vdto.tic_time }
							</span>
							<span>
							<img src="/resources/images/ico_people.png">
							${ vdto.tic_age }
							</span>
						</p>
						
						<p class="run_tit">
							<img src="/resources/images/ico_location_w.png">
								${pdto.place}
						</p>
					</div>
					
				</div>
			</div>



			<div style="position: absolute; top: 400px; left: 20px;">
				<div class="price_warp">
					
					<c:choose>
					
					<c:when test="${ '공연' eq vdto.lcate_name }">		
					<div class="sale_info">
						<p class="sale_p">최대 ${ vdto.gwon_sale }% 할인</p>	
						<p class="sale_txt">1인 세일가 기준</p>	
					</div>
					
					<div class="price_info">
						<span class="origin_price">
						<fmt:formatNumber value="${ vdto.tic_price }" pattern="#,###원" />
						</span> 
						<span class="sale_price">
						<fmt:formatNumber value="${ vdto.sale_pay }" pattern="#,###원" />
						</span>						
					</div>
					</c:when>
					
					
					
					<c:when test="${ '전시' eq vdto.lcate_name }">
					<div class="sale_info">
						<p class="sale_p">타임티켓가</p>	
						<p class="sale_txt">일반 입장권 기준</p>
					</div>	
	
					<div class="price_info">
						<span class="sale_price">
						<fmt:formatNumber value="${ vdto.sale_pay }" pattern="#,###원" />
						</span>			
					</div> 
					</c:when>
										
					
					<c:when test="${ '체험' eq vdto.lcate_name }">		
					<div class="sale_info">
						<p class="sale_p">최대 할인가</p>	
						<p class="sale_txt">1인 체험권 기준</p>	
					</div>
					
					<div class="price_info">
						<span class="origin_price">
						<fmt:formatNumber value="${ vdto.tic_price }" pattern="#,###원" />
						</span> 
						<span class="sale_price">
						<fmt:formatNumber value="${ vdto.sale_pay }" pattern="#,###원" />
						</span>						
					</div>
					</c:when>
														
					
					<c:when test="${vdto.lcate_name eq '클래스' &&  0 eq vdto.gwon_sale}">
					<div class="sale_info">	
						<p class="sale_p">타임티켓가</p>	
						<p class="sale_txt">1인 이용권 기준</p>	
					</div>
					
					<div class="price_info">
						<span class="sale_price">
						<fmt:formatNumber value="${ vdto.sale_pay }" pattern="#,###원" />
						</span>						
					</div>
					</c:when>
					
					
					<c:otherwise>
					<div class="sale_info">
						<p class="sale_p">최대 할인가</p>
						<p class="sale_txt">1인 이용권 기준</p>	
					</div>
					
					<div class="price_info">
						<span class="origin_price">
						<fmt:formatNumber value="${ vdto.tic_price }" pattern="#,###원" />
						</span> 
						<span class="sale_price">
						<fmt:formatNumber value="${ vdto.sale_pay }" pattern="#,###원" />
						</span>						
					</div>
					</c:otherwise>
					
					</c:choose>
					
				</div>
			</div>
		</div>



		<!-------- 우측 옵션선택영역 시작  -------->	
	
		<!-- (달력) -->
		
		
		
		<div style="clear: both;"></div>
		

		<section style="width: 820px; margin: 0 auto; padding-top: 20px;">
			<div class="review_preview" style="">
						
			
			<c:if test="${ p1dto.avg_rev ne 0.0}">
				<div class="review_preview_container">
					<div class="review_preview_title_section">
						<div class="review_preview_left">
							<span class="review_preview_title">이용후기</span> 
							<span class="review_preview_number">${ p1dto.total_rev }</span> 
							<span class="review_preview_title">평점</span> 
							<span class="review_preview_number" style="color: #ff4b4b;">${ p1dto.avg_rev }/5</span>
						</div>
						
						<!-- 
						<div class="review_preview_right">
							후기 더보기 
							<span class="review_preview_right_btn"></span>
						</div> 
						 -->
						 
					</div>
					
					<div class="review_preview_samples">
					
						<c:forEach items="${plist}" var="p2dto" varStatus="i">
							<div class="review_wrap" id="${p2dto.mem_name}">
								<div class="review_title">
									<div class="review_title_left">
										<div class="review_title_left_stars">
											<div class="review_title_left_star">
												<div class="review_title_left_star_filled" style="width: calc(${p2dto.rev_point} * 19px);"></div> 
											</div> 
										</div>
										<div class="review_title_left_name" style="padding-left: 10px;">
											<c:out value="${p2dto.mem_name}"/> 
										</div> 
									</div>
									<div class="review_title_right" style="padding-right: 8px;">
										<c:out value="${p2dto.rev_date}"/>
									</div>
								</div>
								
								<div class="review_text">
									<div class="review_text_area" id="${p2dto.mem_name}">
										<c:out value="${p2dto.rev_cont}"/>
									</div>
									<!-- 
									<div class="review_text_seemore" id="sample_seemore_0" onclick="showFullReviewForSample(0)">
									... 더보기
									</div>		
									 -->		
								</div>
								
								
								<!-- 후기 길때, 더보기 스크립트 처리-->
						
								
								<div style="1; margin-top: 10px;">
									<div viewmode="off" style="background-image: url(/resources/images/${p2dto.rev_img})" 
										name="/resources/images/${p2dto.rev_img}" onclick="showOriginalRatio(0)" class="sample_img_label 0">
									</div>
								</div>
								 
							</div>
							
						</c:forEach>		
						
						</div>
					</div>
				</c:if>
			</div>
		</section>
		
		
		

		 <section style="width: 820px; margin: 0 auto; padding-top: 20px;">

			<!-- 에이작스 메뉴영역 -->
			<ul id="maintab" class="shadetabs FixedTopMenu" style="border-radius: 10px 10px 0 0;">
				<li id="tab_01_notice" class="selected" >
					<a class="tabLink" href="#default" rel="ajaxcontentarea" data-no="0">
						<span>안내</span>
					</a>
				</li>
				
				<li>
				<a data-no="1">
					<span>후기
						<span style="letter-spacing: -1px;">(${ p1dto.total_rev })</span>
					</span>
				</a>						
				</li>
				
				<!-- <li>
					<a data-no="2">
						<span>Q&amp;A
							<span style="letter-spacing: -1px;">
								()
							</span>
						</span>
					</a>
				</li> -->
				
				<li>
				<a data-no="3">
				<span>장소</span>
				</a>
				</li>
				
				<li id="refund_link">
				<a data-no="4">
				<span>환불규정</span>
				</a>
				</li>
			</ul>


		<!-- 에이작스 메뉴 영역 각각 클릭 메뉴 글자에 빨간색 css 효과  -->
		<script>
		$(document).ready(function() {
			  $('#maintab li').click(function() {
			    $('#maintab li').removeClass('selected');
			    $(this).addClass('selected');
			  });
			});
		</script>
		
		
		
		<!-- 에이작스 데이터 처리 -->
		<script>
		
			 $(function (){
				 // 에이작스 메뉴 영역 각각 클릭시 이벤트 발생 
				 $("#maintab a").on("click", function (event){
					 // console.log( $(this).data("no") );
				            
							    var tic_code = "${param.tic_code}";
					 			var type =  $(this).data("no"); 
							    var that = this;
							    
							    
							    $.ajax({
							           url:"/ajaxview/"+type,
							           dataType:"json",
							           type:"GET", 
							           data:{tic_code:tic_code}, 
							           cache:false,
							           success:function (data, textStatus, jqXHR){
							        	//console.log(data);	
							         
							        	   
							        	// type 0 (안내 버튼 클릭시)
					                	 	if ($(that).data("no")=="0") {
					                	 		// 안내, 장소, 환불규정 기존의 내용 없애기 
					                	 		$('.main_tab_wrap').remove();	
					                	 		// 후기 기존의 내용 없애기 (후기 있을 때)
					                	 		$('.score_wrap').remove();
					                	 		// 후기 기존의 내용 없애기 (후기 없을 때)
					                	 		$('#noreviews').remove();
					                	 		
					                	 		// 여기까지 하면 안내 에이작스 메뉴 밑 내용 모두 사라짐
					                	 		
					                	 		
					                	 		// 안내 에이작스 메뉴 밑 내용 새로 뿌리기 위한 main_tab_wrap 클래스를 가지는 div 태그 만들기
					                	 		$("#ajaxcontentarea").append(`<div class='main_tab_wrap' style=';'></div>`); 
					                	 		
					                	 		
					                	 		
					                	 		$(  data ).each( function (i, elem){
					                	 					// 데이터 뿌리기 위한 정보 가져오기 시작 (정보는 info 라는 변수에 담김)
								                		   var info = `<div style='display: none;; width: 700px; height: 95px; margin-bottom: 20px;'>
												       						<img src='img/bnr_class_noti.png'
												   							style='width: 700px; border-radius: 10px;' alt='예매전 주의사항 - 클래스' />
												   							</div>
							
														   					<div style='margin-top: 10px;'>
														   						<div class='viewpage_noti'>예매정보</div>
														   						<div class='viewpage_text radius_box'>\${elem.info}</div>
														   					</div>`;
														   					
															if(elem.info_agenc){
														   						info+=`<div style="margin-top: 25px;">
														   							<div class="viewpage_noti">기획사 공지사항</div>
														   							<div class="viewpage_text radius_box"> \${elem.info_agenc}</div>
														   						</div>`;
										   												} 
															
										   					
										   					info+= `<div style='margin-top: 25px;'>
													   						<div class='viewpage_noti'>이용정보</div>
													   						<div class='viewpage_text radius_box'>\${elem.info_use}</div>
													   					</div>
					
									   					
										   								<div class='info_detail_poster' alt='상세'>
											   								<div class='info_detail_gradient'></div>
											   							
													   						<div class='info_detail_btn' id='mdetail_unfold' onclick="viewimg()">
													   							펼쳐보기 
													   						<img src='/resources/images/icon_down.png' style='width: 13px; vertical-align: 2px; padding-left: 10px;'>
													   						</div>		
												   						</div>
												   						
												   						<div class='main_img'></div>
										   						
			
			
													   					<div style='margin-top: 25px;'>
													   						<div class='viewpage_noti'>유의사항</div>
													   						<div class='viewpage_text radius_box'>\${elem.info_note}</div>
													   					</div>										   					
											   	
													   					<div style='margin-top: 25px;'>
													   						<div class='viewpage_noti'>장소안내</div>
													   						<div class='viewpage_text radius_box'
													   							style='border-radius: 10px 10px 0 0;'>
													   							<p>· 장소: \${elem.place}</p>
													   							<p>· 주소: \${elem.place_add}</p>
													   							<p>· 주차: \${elem.place_park}</p>
													   						</div>
											   						
											   								<div align='center' style='margin-top: 10px;''>
											   						
														   						<div id='map' style='width:100%;height:400px'></div>
														   						
														   						</div>
													   						</div>
											   						
												   						<div style='margin-top: 25px; margin-bottom: 25px;'>
												   						
											   							<div class='viewpage_noti'>판매정보</div>
			
											   							<div class='viewpage_text border_box'>
											   								<div class='viewpage_flex'>
											   									<div>주최/주관</div>
											   									<div>\${elem.info_host}</div>
											   								</div>
											   								<div class='viewpage_flex'>
											   									<div>문의전화</div>
											   									<div>📞\${elem.info_num}</div>
											   							</div>`;
										   							
										   							
										   					if(elem.info_link){
													   						info+= `<div class="viewpage_flex" >
																						<div>문의링크</div>
																						<div>
																							🔗 <a href="${elem.info_link}" target="_blank"
																								style="text-decoration: underline;">\${elem.info_link}</a>
																						</div>
																						</div>`;
																					}
										   					
										   					
										   					
															info+= `<div class='viewpage_flex'>
									   									<div>환불규정</div>									   									
									   									<div>
									   									<ul id="refund">
									   									<li>
									   										<a href='#default' data-no='4'  onclick="refund_ajax()" id="data-no-check"><span>환불규정
									   												바로가기</span>
									   										</a>
									   									<li>
									   									<ul>
									   									</div>
										   								</div>
											   								<div class='viewpage_flex'>
											   									<div>환불방법</div>
											   									<div>마이티켓 &gt; 예매내역에서 직접 취소</div>
											   								</div>
											   							</div>
														   				</div>
																	</div>`;													
														    // 데이터 뿌리기 위한 정보 가져오기 끝
		
								                		   
								           				   // info라는 변수를 main_tab_wrap 클래스를 가진 div 안에 넣어 안내 내용이 뿌려지게 한다.
								                		   $(info).appendTo($(".main_tab_wrap"));
														   // map이라는 아이디를 가지는 div 바로 다음에 지도가 뿌려지도록 하는 스크립트가 추가된다.  
								                		   $("#map").append($("<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyASJkVY1x-BDuG1ySeXbNePbgZ25se-P6w&callback=initMapAjax' async defer><\/script>")); 
									                		  
								                		   
								                	  }); // each
											} // type 0 (안내 버튼 클릭시) 
											
											
											
							                	 	// type 1 (후기 버튼 클릭시)
							                	 	if ($(that).data("no")=="1") {
							                	 		// 안내, 장소, 환불규정 기존의 내용 없애기						                	 		
							                	 		$('.main_tab_wrap').remove();
							                	 		// 후기 기존의 내용 없애기 (후기 있을 때)
							                	 		$('.score_wrap').remove();		
							                	 		// 후기 기존의 내용 없애기 (후기 없을 때)
							                	 		$('#noreviews').remove();
							                	 		
							                	 		
							                	 		// 여기까지 하면 후기 에이작스 메뉴 밑 내용 모두 사라짐
							                	 		
							                	 		
							                	 		
										                	 			// data의 길이가 0이라면? = 데이터가 없다면
										                	 			if(data.length==0){
										                	 			// console.log(data.length);		
										                	 					
										                	 					// 데이터 뿌리기 위한 정보 가져오기 시작 (정보는 noreviews 라는 변수에 담김)
																   				var noreviews = `<div id="noreviews" style="color:#666; border:1px solid #eee; border-top:none; border-radius:0 0 10px 10px; text-align:center; padding:100px 0 110px 0; font-size:18px; ">
																   											</div>`;
																   				
																   				// noreviews 라는 변수 즉, div 태그 안에 아래의 문구가 나오도록 함
																   				$(noreviews).html("등록된 후기/별점이 없습니다.")
																   				// noreviews 라는 변수를 ajaxcontentarea 아이디를 가진 div 안에 넣어 후기가 없을 떄의 내용이 뿌려지게 한다.
																   									.appendTo($("#ajaxcontentarea"));
																   											
																   		// 데이터가 있다면									
										                	 			} else{
										                	 			// 후기 에이작스 메뉴 밑 내용 새로 뿌리기 위한 score_wrap 클래스를 가지는 div 태그 만들기
										                	 			$("#ajaxcontentarea").append(`<div class='score_wrap' style=';'><div class='review_start' style=';'></div></div>`);
												              
										                	 			
										                	 			$( data ).each( function (i, elem){			
										                	 							   // 데이터 뿌리기 위한 정보 가져오기 시작 (정보는 reviews 라는 변수에 담김)
																                		   var reviews = `<div class='review_wrap' id='user_review'>
																														<div class='review_title'>
																															<div class='review_title_left'>
																																<div class='review_title_left_stars'>
																																	<div class='review_title_left_star'>
																																		<div class='review_title_left_star_filled' style='width: calc(\${elem.rev_point} * 19px);'></div> 
																																	</div> 
																																</div>
																																<div class='review_title_left_name' style='padding-left: 10px;'>
																																	\${elem.mem_name}
																																</div> 
																															</div>
																															<div class='review_title_right' style='padding-right: 8px;'>
																																\${elem.rev_date}
																															</div>
																														</div>
																														
																														<div class='review_text'>
																															<div class='review_text_area' id='\${elem.mem_name}'>
																																\${elem.rev_cont}
																															</div>
																															<div class="review_text_seemore" id="seemore" onclick="showFullReview()">... 더보기</div> 
																														</div>
																												
																														<div style='1; margin-top: 10px;'>
																															<div class='img_label' viewmode='off' style='background-image: url(/resources/images/\${elem.rev_img})' name='/images/\${elem.rev_img}' onclick='showOriginalRatio()''>
																															</div>
																														</div>
																													</div>` ;
													           
																		 // reviews 라는 변수를 review_start 클래스를 가진 div 안에 넣어 안내 내용이 뿌려지게 한다.
													                	$(reviews).appendTo($(".review_start"));
													                		   														
													                	   }); // each
										                	 		} // if..else            	 		
															} // if 1 (후기 버튼 클릭시)
							                	   
															
															
															
							                		// type 2 (Q&A 버튼 클릭시)
							                	   else if ($(that).data("no")=="2") {
							                		   
							                			 
							                	   } // if 2 (Q&A 버튼 클릭시)
							                	   
							                	   
							                	   
							                	   
							                	   // type 3 (장소 버튼 클릭시)
							                	   else if ($(that).data("no")=="3") {
							                		   // 안내, 장소, 환불규정 기존의 내용 없애기 
							                		   $('.main_tab_wrap').remove();
							                		   // 후기 기존의 내용 없애기 (후기 있을 때)
							                		   $('.score_wrap').remove();				                		 
							                		   // 후기 기존의 내용 없애기 (후기 없을 때)
							                		   $('#noreviews').remove();
							                		   
							                		   
							                		   // 여기까지 하면 장소 에이작스 메뉴 밑 내용 모두 사라짐
							                		   
							                		   
							                		   
							                		   // 장소 에이작스 메뉴 밑 내용 새로 뿌리기 위한 main_tab_wrap 클래스를 가지는 div 태그 만들기
							                	 	   $("#ajaxcontentarea").append(`<div class='main_tab_wrap' style=';'></div>`);
									                    
							                		   $( data).each( function (i, elem){
							                						   // 데이터 뿌리기 위한 정보 가져오기 시작 (정보는 place 라는 변수에 담김)
											                		   var place = `<div class='main_tab_title'>장소안내</div>
															                			   <div class='viewpage_text radius_box' style='margin-top:10px; border-radius: 10px 10px 0 0;'>
															                			     <p>· 장소: \${elem.place}</p>
															                			     <p>· 주소: \${elem.place_add}</p>
															                			     <p>· 주차: \${elem.place_park}</p>
															                			   </div>
															                			   <div align='center' style='margin-top:10px;'>
															                			   <div id='map' style='width:100%;height:400px'></div>
															                			     `;
							                			 
														// place 라는 변수를 main_tab_wrap 클래스를 가진 div 안에 넣어 안내 내용이 뿌려지게 한다.
							                		   $(place).appendTo($(".main_tab_wrap")); 
							                		   // map이라는 아이디를 가지는 div 바로 다음에 지도가 뿌려지도록 하는 스크립트가 추가된다.  
							                		   $("#map").append($("<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyASJkVY1x-BDuG1ySeXbNePbgZ25se-P6w&callback=initMapAjax' async defer><\/script>")); 
							                		 
							                		   
							                		  	 }); // each 					                		   
							                	   } // if 3 (장소 버튼 클릭시)
							                	   
							                	   
							                	   
							                	   
							                	     // type 4 (환불규정 버튼 클릭시)
													 else if ($(that).data("no")=="4") {
														// 안내, 장소, 환불규정 기존의 내용 없애기
														$('.main_tab_wrap').remove();
														// 후기 기존의 내용 없애기 (후기 있을 때)
														$('.score_wrap').remove();	
														// 후기 기존의 내용 없애기 (후기 없을 때)
														$('#noreviews').remove();
														
														
														// 여기까지 하면 환불규정 에이작스 메뉴 밑 내용 모두 사라짐
														
														
														
														 // 환불규정 에이작스 메뉴 밑 내용 새로 뿌리기 위한 main_tab_wrap 클래스를 가지는 div 태그 만들기
								                	 	$("#ajaxcontentarea").append(`<div class='main_tab_wrap' style=';'><p class='main_tab_title'>환불규정 및 안내사항</p></div>`);
								                	 	// console.log(data);
								                	 	
								                	 	$(  data ).each( function (i, elem){
												                	 		   // 데이터 뿌리기 위한 정보 가져오기 시작 (정보는 ref 라는 변수에 담김)
													                		   var ref = `<div class='viewpage_text radius_box' style='margin-top:10px; border-radius: 10px 10px 0 0;'>
																                			   \${elem.ref_rule}
																                			   \${elem.ref_cau == null?"":elem.ref_cau}
																                			   \${elem.ref_way}
															                			   </div>`;
									                	
														// ref 라는 변수를 main_tab_wrap 클래스를 가진 div 안에 넣어 안내 내용이 뿌려지게 한다.
									                	$(ref).appendTo($(".main_tab_wrap")); 
									                		   
									                	 }); // each	
							                	   }// if 4  (환불규정 버튼 클릭시)
							                  }, error: function ( xhr, errorType){
							       	        	  alert( errorType );
							       	          }
						
						}); // ajax				 			
				 }); // click
			 }) // function 						
			</script>
		



			<!---------------------- 탭 영역 시작 ----------------------->
			<div id="ajaxcontentarea" class="contentstyle1" style="border-radius: 0 0 10px 10px">
				<div class="main_tab_wrap">
			

					<!-- 클래스 안내 배너 -->
					<div 	style="display: none;; width: 700px; height: 95px; margin-bottom: 20px;">
						<img src="img/bnr_class_noti.png"
							style="width: 700px; border-radius: 10px;" alt="예매전 주의사항 - 클래스" />
					</div>

					<div style="margin-top: 10px;">
						<div class="viewpage_noti">예매정보</div>
						<div class="viewpage_text radius_box">${idto.info}</div>
					</div>


					<c:if test="${not empty idto.info_agenc}">
						<div style="margin-top: 25px;">
							<div class="viewpage_noti">기획사 공지사항</div>
							<div class="viewpage_text radius_box">${idto.info_agenc}</div>
						</div>
					</c:if>
				
				
					<div style="margin-top: 25px;">
						<div class="viewpage_noti">이용정보</div>
						<div class="viewpage_text radius_box">${idto.info_use}</div>
					</div>


					<!-- 상세이미지 -->
					<div class="info_detail_poster" alt="상세">
						<div class="info_detail_gradient"></div>
							
          				
						    <div class="info_detail_btn" id="mdetail_unfold">
							펼쳐보기 
							<img src="/resources/images/icon_down.png" style="width: 13px; vertical-align: 2px; padding-left: 10px;">
							
          				  
						</div>
						</div>
						
						
						<div class="main_img"></div>
						
						
						<script>  
						   $(function (){
							   // 펼쳐보기 처음 클릭시 숨겨져있던 이미지들 다 보이게 하는 에이작스 처리
							   $("#mdetail_unfold").on("click", function (event){
	                 				  
								   	  // 펼쳐보기 클릭 전 이미지 없애기
								   	  document.querySelector('.info_detail_gradient').remove();   
								   	  document.querySelector('.info_detail_btn').remove();     	   
						              document.querySelector('.info_detail_poster').setAttribute("style", "display:none;");
						              document.querySelector('.main_img').scrollIntoView({ behavior: 'smooth', block: 'start'});
				
						              
						              var tic_code = "${param.tic_code}";
						              
						              $.ajax({
						                  url:"/ajaxview/imgview",
						                  dataType:"json",
						                  type:"GET", 
						                  data:{tic_code:tic_code}, 
						                  cache:false,
						                  success:function (data, textStatus, jqXHR){
						                  console.log(data);
						                
						                  		$(".main_img").html(data.tic_pic_sp);
						              
						                  } // success function
						              }); // ajax					       
							   }) // click (펼쳐보기)
						   }); // function		             
          				</script>      
          				
          				<script>
          				function scrollIntoView(selector) {
          			      const scrollTo = document.querySelector(selector);
          			      scrollTo.scrollIntoView({ behavior: "smooth" });
          			    }
          				</script>		  
					
					
					<div style="margin-top: 25px;">
						<div class="viewpage_noti">유의사항</div>
						<div class="viewpage_text radius_box">${idto.info_note}</div>
					</div>




					<!--------- 장소안내 --------->
					<div style="margin-top: 25px;">
						<div class="viewpage_noti">장소안내</div>
						<div class="viewpage_text radius_box"
							style="border-radius: 10px 10px 0 0;">
							<p>· 장소: ${pdto.place}</p>
							<p>· 주소: ${pdto.place_add}</p>
							<p>· 주차: ${pdto.place_park}</p>
						</div>
						
						<div align="center" style="margin-top: 10px;">
						
						<div id="map" style="width:100%;height:400px"></div>
			



			<!-- 상세페이지 이동시, 안내에서 처음 보여지는 지도 -->
			<script>
				var map;
			
				function initMap() {
			  	map = new google.maps.Map(document.getElementById("map"), {
				    center: new google.maps.LatLng(${pdto.place_lat}, ${pdto.place_lon}),
				    zoom: 15,
			  });
			  	
			  	var myIcon = {
			  		    url: '/resources/images/default-marker.png',
			  		    size: new google.maps.Size(50, 50),
			  		    origin: new google.maps.Point(0, 0),
			  		    anchor: new google.maps.Point(25, 25)
			  		  };
			  	
			  	var marker = new google.maps.Marker({
	                position: new google.maps.LatLng(${pdto.place_lat}, ${pdto.place_lon}), 
	                map: map,
	                icon: myIcon
	            });
			}
			</script>
			
			<script src="https://maps.googleapis.com/maps/api/js?
			key=AIzaSyASJkVY1x-BDuG1ySeXbNePbgZ25se-P6w&callback=initMap" async defer></script>
									
				    
									
					</div>
			</div>
			
			

					<!--------- 판매정보 --------->
					<div style="margin-top: 25px; margin-bottom: 25px;">
						<div class="viewpage_noti">판매정보</div>

						<div class="viewpage_text border_box">
							<div class="viewpage_flex">
								<div>주최/주관</div>
								<div>${idto.info_host}</div>
							</div>
							<div class="viewpage_flex">
								<div>문의전화</div>
								<div>📞 ${idto.info_num}</div>
							</div>
							
							<c:if test="${not empty idto.info_link}">
							<div class="viewpage_flex" >
								<div>문의링크</div>
								<div>
									🔗 <a href="${idto.info_link}" target="_blank"
										style="text-decoration: underline;">${idto.info_link}</a>
								</div>
								</div>
							</c:if>
							
							<div class="viewpage_flex">
								<div>환불규정</div>
								<div>
								<ul id="refund">
								<li>
									<a href="#default" data-no="4"><span>환불규정
											바로가기</span></a>
								</li>
								</ul>
								</div>						
							</div>
							<div class="viewpage_flex">
								<div>환불방법</div>
								<div>마이티켓 &gt; 예매내역에서 직접 취소</div>
							</div>

						</div>
					</div>

				</div>
			</div>
			
		</section> 
		
		</div>
  </div>
		
			<!-- 안내 에이작스 메뉴영역에 환불규정 바로가기 링크 처음 클릭시 처리되는 에이작스 -->
			<script>
						$( function () {
							$("#refund a").on("click", function (event){
								// alert("처음 클릭")
							
							
								var tic_code = "${param.tic_code}";
								var type =  $(this).data("no"); 
							    var that = this;
							
							    
										$.ajax({
											url:"/ajaxview/"+type,
											dataType:"json",
											data:{tic_code : tic_code},
											cache:false,
											success:function (data, textStatus, jqXHR){
													
												
															// 안내, 장소, 환불규정 기존의 내용 없애기
															$('.main_tab_wrap').remove();
															// 후기 기존의 내용 없애기 (후기 있을 때)
															$('.score_wrap').remove();	
															// 후기 기존의 내용 없애기 (후기 없을 때)
															$('#noreviews').remove();
															
															
															// 여기까지 하면 환불규정 에이작스 메뉴 밑 내용 모두 사라짐
															
															
															 // 환불규정 에이작스 메뉴 밑 내용 새로 뿌리기 위한 main_tab_wrap 클래스를 가지는 div 태그 만들기
											        	 	$("#ajaxcontentarea").append(`<div class='main_tab_wrap' style=';'><p class='main_tab_title'>환불규정 및 안내사항</p></div>`);
											        	 	// console.log(data);
								        	 	
											        	 	$( data ).each( function (i, elem){
													                	 		   // 데이터 뿌리기 위한 정보 가져오기 시작 (정보는 ref 라는 변수에 담김)
														                		   var ref = `<div class='viewpage_text radius_box' style='margin-top:10px; border-radius: 10px 10px 0 0;'>
																	                			   \${elem.ref_rule}
																	                			   \${elem.ref_cau == null?"":elem.ref_cau}
																	                			   \${elem.ref_way}
																                			   </div>`;
											            	
															// ref 라는 변수를 main_tab_wrap 클래스를 가진 div 안에 넣어 안내 내용이 뿌려지게 한다.
											            	$(ref).appendTo($(".main_tab_wrap")); 
											            
					            		   
					            	 	}); // each
									} // success function
								}); // ajax
							}) //click
						}) // function
			</script>		
					
					
			<!-- 안내 에이작스 메뉴영역에 환불규정 바로가기 링크 처음 클릭시 적용되는 css(환불규정 메뉴 문구 빨간색 글자로 변환) -->
			<script>
							$(document).ready(function() {
								  $('#refund a').click(function() {
										$('#maintab li').removeClass('selected');
									    $("#refund_link").addClass('selected');
								  });
								});
			</script>
			

</body>
</html>