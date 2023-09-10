<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<link href= '/resources/css/layout.css' rel='stylesheet' type='text/css'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<div>
    <div style="width:830px; border:1px solid #d8d8d8; margin:20px auto; background:#f2f2f2;">
      <style>
  .page_title {
    font-size: 24px;
    font-weight: 500;
    padding: 35px 0px 21px 0px;
  }

  .page_title div {
    position: relative;
    width: 660px;
    top: 10px;
    right: 0px;
    border-bottom: 1px dotted #777;
  }

  .basket_title {
    padding-top: 20px;
    color: #000;
    font-size: 18px;
    font-weight: 700;
  }

  .policy_slide {
    margin-left: 15px;
    color: #555;
    font-weight: 400;
    font-size: 14px;
    border: 1px solid #d2d2d2;
    background: #fff;
    border-radius: 5px;
    padding: 1px 15px;
    cursor: pointer;
  }

  .policy_contents {
    display: none;
    overflow: hidden;
    transition: all 600ms ease;
  }

  .basket_text {
    margin-top: 5px;
    font-size: 14px;
    line-height: 22px;
    color: #555;
  }

  .basket_box {
    margin-top: 8px;
    border: 1px solid #d2d2d2;
    border-radius: 10px;
    background: #fff;
    padding: 10px 25px;
    font-size: 15px;
    color: #000;
    line-height: 160%;
  }

  .basket_input {
    display: inline-block;
    width: 280px;
    height: 20px;
    font-size: 15px;
    padding: 2px 0 2px 8px;
    margin: 3px 0;
    border: none;
    border-radius: 5px;
    background: #eee;
  }

  .basket_subtitle {
    display: inline-block;
    width: 85px;
    color: #888;
    font-size: 15px;
  }

  .input_detail {
    width: 100px;
    height: 20px;
    font-size: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 2px 0 2px 5px;
    vertical-align: middle;
  }

  .point_span {
    margin-left: 100px;
    font-size:15px;
  }

  .point_use {
    font-size:14px;
    border-radius: 5px;
    background: #292793; color:#fff;
    margin-left: 5px;
    padding: 4px 10px; vertical-align: middle; cursor:pointer;
  }

  .pay_total {
    color:#ff0000; font-size:18px; font-weight:700; margin-left:18px;
  }

  .pay_total_point {
    color:#555; font-size:14px; font-weight:normal; margin-left:5px; letter-spacing: 0px;
  }

  .refund_txt {
    margin-top: 10px;
    color: #555;
    font-weight: normal;
    padding-top: 10px;
    font-size: 14px;
    background: #fff;
    line-height: 150%;
    padding: 0 20px 20px 20px;
    border: 1px solid #d2d2d2;
    border-radius: 10px;
  }

  .refund_txt .viewpage_noti {
    padding-top: 10px;
    font-weight: 700;
    font-size: 14px;
  }

  .check_box {
    margin-top: 30px;
  }
  .check_box_squre {
    width:17px; height:17px; vertical-align:-4px;
  }

  .check_box div {
    padding-bottom: 5px;
  }

  .check_box label {
    cursor: pointer;
    margin-left: 0px;
    font-size: 15px;
    color: #313131;
  }

  .perform_today {
    margin-top: 20px;
    height: 60px;
    text-align: center;
    font-size: 15px;
    color: #000;
    border-radius: 10px;
    background: #f9d1d1;
    line-height: 180%;
    padding-top: 15px;
  }

  .pay_btn {
    text-align: center;
    padding-top: 25px;
    margin-bottom:30px;
  }

  #pay_confirm {
    padding: 12px;
    width: 250px;
    border: 1px solid #f91818;
    border-radius: 10px;
    color: #fff;
    background: #ff4b4b;
    font-size: 22px;
    cursor: pointer;
  }


  .section_flex {
    display: flex; justify-content: space-between; background-color: #fff;
  }
  .payment_box input[type="radio"]{
    display:none;
  }
  .payment_box {
    text-align: center; width: 25%; cursor: pointer;
  }
  .payment_box div {
    padding:10px 0 15px 0;
  }
  .payment_box img {
    width: 60px; text-align: center;
  }
  .payment_box p {
    text-align: center; font-size: 15px;
  }

  /* 토스 이벤트 */
  .pay_toss_event { display:inline-block; margin-top:3px; font-weight:600; color:#fff; background-color:#0064FF; border-radius:20px; padding:3px 12px 1px 12px; }

  .payment_box input[type="radio"]:checked#pay_naver + div{
    background:#01c73c; color:#fff; outline:none;
  }
  .payment_box input[type="radio"]:checked#pay_kakao + div{
    background:#ffeb00; outline:none;
  }
  .payment_box input[type="radio"]:checked#pay_applepay + div{
    background:#000000; color:#fff; outline:none;
  }
  .payment_box input[type="radio"]:checked#pay_samsung + div{
    background:#0b50ad; color:#fff; outline:none;
  }
  .payment_box input[type="radio"]:checked#pay_toss + div{
    background:#0064FF; color:#fff; outline:none;
  }
  .payment_box input[type="radio"]:checked#pay_payco + div{
    background:#FA2827; color:#fff; outline:none;
  }
  .payment_box input[type="radio"]:checked + div{
    outline:1px solid #ff4b4b; background-color:rgba(255, 75, 75, 0.1);
  }
  .payment_noti {
    font-size: 14px; color: #555; background: #ffebeb; border-radius: 10px; margin: 10px; padding: 15px; line-height: 150%;
  }
  .payment_noti p {
    font-weight: 600; color: #000; padding-bottom: 5px;
  }

</style>

<div>
<div class="section_box" style="padding:10px 50px; background:#f1f1f1; border-radius:10px;">
  <!-- 페이지 타이틀 -->
  <div class="page_title">티켓 예매하기
    <div></div>
  </div>

  <div class="basket_title">티켓정보</div>
  <div class="basket_box">
    <div>
      <div class="basket_subtitle">티켓명</div>
      <span>${ dto.tic_name }</span>
    </div>
    <div style="padding-top:3px;">
      <div class="basket_subtitle">이용장소</div>
      <span>${ dto.place } (${ dto.place_add })</span>
    </div>
  </div>
  <form action="/timeticket/pay.do" method="post">
  <div class="basket_title">예매정보</div>
  <!-- basket_order.php 에서 변경 -->
 <%-- 
      <c:forEach items="s">
      <div style='margin-top:10px; border:1px solid #d2d2d2; border-radius: 10px; background:#fff; padding:10px 25px; font-size:15px; color:#313131; line-height:160%;'>
        <div class='option_title' style='width:90px; float:left; color:#888'>선택옵션</div>
        <div style='width:100%;'>${ param.날짜 }[${ param.요일 }] ${ param.시간 } ${ param.권종이름 }</div>
        <div class='option_title' style='width:90px; float:left; color:#888'>티켓가격</div>
        <div style='width:100%;'>${ param.금액 } 원</div>
        <div class='option_title' style='width:90px; float:left; color:#888'>수량</div>
        <div style='width:100%; vertical-align:bottom;'>${ param.수량 } 매</div>
        <div style='clear:both;'></div>
        <div class='option_title' style='width:90px; float:left; color:#888'>티켓합계</div>
        <!-- 이 부분 id값이 바뀜 -->
        <div style='width:100%; vertical-align:bottom;'>
          <span id='row_price_view_237850'>${ param.금액 }*${ param.수량 }</span> 원
          <input type='hidden' name='row_price_value_237850' id='row_price_value_237850' value='33600'>
        </div>
      </div>
      </c:forEach>
      
        <div style='width:100%; vertical-align:bottom;'>
          <span id='row_price_view_232273'>17,900</span> 원
          <input type='hidden' name='row_price_value_232273' id='row_price_value_232273' value='17900'>
        </div>
     --%>
     <div style="margin-top:10px; border:1px solid #d2d2d2; border-radius: 10px; background:#fff; padding:10px 25px; font-size:15px; color:#313131; line-height:160%;">
        <div class="option_title" style="width:90px; float:left; color:#888">선택옵션</div>
        <div style="width:100%;">7.21[금] 16:45 ★타임세일★</div>
        <input type="hidden" name="gwon_code" value="gwon_118">
        <div class="option_title" style="width:90px; float:left; color:#888">티켓가격</div>
        <div style="width:100%;">17,000 원</div>
        <div class="option_title" style="width:90px; float:left; color:#888">수량</div>
        <div style="width:100%; vertical-align:bottom;">1 매</div>
        <input type="hidden" name="book_cnt" value="1">
        <div style="clear:both;"></div>
        <div class="option_title" style="width:90px; float:left; color:#888">티켓합계</div>
        <div style="width:100%; vertical-align:bottom;">
          <span id="row_price_view_222529">17,000</span> 원
          <input type="hidden" name="book_price" id="row_price_value_222529" value="17000">
        </div>
      </div>

  <div class="basket_title">이용자정보</div>
  <div class="basket_text">
    <p>· 실제로 관람/이용하실 분의 실명/연락처를 입력해 주세요.</p>
   <p>· 오기재시 정상 이용 및 긴급연락이 불가할 수 있으며 이에 따른 책임을 지지 않습니다.</p>
  </div>

 <div class="basket_box">
    <div>
      <div class="basket_subtitle">이용자이름</div>
      <input class="basket_input" type="text" name="name" value="<sec:authentication property="principal.member.mem_name"/>" id="user_name">
    </div>
    <div>
      <div class="basket_subtitle">휴대폰번호</div>
      <input class="basket_input" type="text" name="hphone" maxlength="13" value="<sec:authentication property="principal.member.mem_num"/>" id="user_hphone" onkeyup="AUTO_HYPHEN_PHONE(value)">
    </div>
    <div>
      <div class="basket_subtitle">이메일주소</div>
      <input class="basket_input" type="text" name="email" value="<sec:authentication property="principal.member.mem_mail"/>" id="user_email">
    </div>
    <input class="basket_input" type="hidden" name="mem_id" value="<sec:authentication property="principal.member.mem_id"/>">
  </div>
 
 <div class="basket_title">포인트 사용</div>
 <div class="basket_text" style="margin-top:10px;">
    <div class="basket_subtitle" style="float:left;">· 보유 포인트</div>
    <p class="point_span point_available" value="<sec:authentication property="principal.member.mem_point"/>" style=" color:#303388;"=""><sec:authentication property="principal.member.mem_point"/>p
      <span style="padding-left: 5px; color:#777;">(최소 500p 이상 사용가능)</span>
    </p>
    <div class="basket_subtitle" style="float:left; margin-top:7px;">· 포인트 사용</div>
    <p class="point_span" style="margin-top:5px;">
      <input type="number" name="book_point" id="use_point" value="0" onkeyup="ENTER_POINT_VALUE()" class="input_detail">
      <span><span class="point_use use_point_btn" onclick="USE_POINT('use')">사용하기</span></span>
      <span><span class="point_use use_point_all_btn" onclick="USE_POINT('useAll')" style="background:#942323;">포인트 모두사용</span></span>
    </p>
   </div>
   
   <%-- 
  <div class="basket_title" style="margin-top:20px;">
    <span>총 결제금액
    <span id="total_price_view" class="pay_total pay_total_price" value="${ param.총금액 }-">${ param.총금액 }원</span>
    <span id='total_point_view' class="pay_total_point"></span>
    </span>
  </div>
 --%>
 <div class="basket_title" style="margin-top:20px;">
    <span>총 결제금액
    <span id="total_price_view" class="pay_total pay_total_price" value="17000">17,000원</span>
    <span id="total_point_view" class="pay_total_point"></span>
    </span>
  </div>
  
  <div id="payment_section">

    <div class="basket_title">
      <span>결제방법</span>
    </div>

    <div class="basket_box" alt="결제수단" style="padding-top:8px;">

      <div class="section_flex" style="border-bottom:1px solid #eee; padding-bottom: 8px;">
        <label class="payment_box">
          <input type="radio" name="pay_code" id="pay_naver" value="네이버페이" >
          <div>
            <img id="pay_naver_img" class="payment_img" src="../resources/images/pay_naverpay_off.png?5">
            <p>네이버페이</p>
          </div>
        </label>

        <label class="payment_box">
          <input type="radio" name="pay_code" id="pay_kakao" value="카카오페이">
          <div>
            <img id="pay_kakao_img" src="../resources/images/pay_kakaopay_off.png?5">
            <p>카카오페이</p>
          </div>
        </label>

        <label class="payment_box">
          <input type="radio" name="pay_code" id="pay_toss" value="토스페이">
          <div style="padding:2px 0 3px 0">
            <img id="pay_toss_img" class="payment_img" src="../resources/images/pay_tosspay_off.png?5">
            <p style="margin-top:-10px;">토스페이</p>
            <p class="pay_toss_event" style="font-size:11px;">2000원 캐시백</p>
          </div>
        </label>

        <label class="payment_box" style="display: block">
          <input type="radio" name="pay_code" id="pay_samsung" value="삼성페이">
          <div>
            <img id="pay_samsung_img" class="payment_img" src="../resources/images/pay_samsungpay_off.png?5">
            <p>삼성페이</p>
          </div>
        </label>
      </div>

      <div class="section_flex" style="margin-top:8px;">
        <label class="payment_box">
          <input type="radio" name="pay_code" id="pay_payco" value="페이코" >
          <div>
            <img id="pay_payco_img" class="payment_img" src="../resources/images/pay_payco_off.png?5">
            <p>페이코</p>
          </div>
        </label>

        <label class="payment_box">
          <input type="radio" name="pay_code" id="pay_card" value="카드결제">
          <div>
            <img id="pay_card_img" class="payment_img" src="../resources/images/pay_card_off.png?1">
            <p>카드결제</p>
          </div>
        </label>

        <label class="payment_box">
          <input type="radio" name="pay_code" id="pay_phone" value="휴대폰결제">
          <div>
            <img id="pay_phone_img" class="payment_img" src="../resources/images/pay_phone_off.png?1">
            <p>휴대폰결제</p>
          </div>
        </label>

        <label class="payment_box">
          <input type="radio" name="pay_code" id="pay_bank" value="무통장입금">
          <div>
            <img id="pay_bank_img" class="payment_img" src="../resources/images/pay_bank_off.png?1">
            <p>무통장입금</p>
          </div>
        </label>

        <input style="display: none;" type="radio" name="pay_code" id="pay_point" value="point" alt="전액포인트결제">
      </div>
      <!-- flex end -->
      <div id="payment_bank_noti" class="payment_noti" style="display:none;">
        <p>※ 무통장입금 유의사항</p>
        1) 신청시 가상계좌가 발급되며 1원 단위 정확한 금액만 입금 가능<br>
        2) 일부 ATM(국민,하나,부산 등) 이체 불가(인터넷/모바일 뱅킹 권장)<br>
        3) 신청 후 3시간이 지나면 자동 취소되며 별도의 취소요청 불필요
      </div>
      <div id="payment_tosspay_noti" class="payment_noti" style="display:none;line-height: 160%; background: #e6e8ff; ">
        <p style="font-size:16px;">🎁 토스페이 결제 EVENT</p>
        · 토스페이 생애 첫 결제시 2천원 즉시 캐시백<br />
        · 이벤트 페이지에서 유의사항을 확인해주세요! (<a href="event.php?no=2023_toss" style="text-decoration: underline; color:blue;">바로가기</a>)
      </div>
    </div>

  </div>
  
  <div class="basket_title">
    ※ 티켓 환불규정
    <span class="policy_slide" style="margin-left:34px;" onclick="toggleSlide(POLICY_CONTENTS[0])">보기</span>
    <div class="policy_contents">
      <div class="refund_txt">
        ${ dto2.ref_rule }
        ${ dto2.ref_cau }
      ${ dto2.ref_way }
      </div>
    </div>
  </div>

  <div class="basket_title" style="padding-top:10px;">
    ※ 주의사항 및 약관
    <span class="policy_slide" onclick="toggleSlide(POLICY_CONTENTS[1])">보기</span>
      <div class="policy_contents">
         <div class="refund_txt">
            <p class='viewpage_noti'>[예매시 주의사항]</p>
  <p>· 공연티켓은 <span style='color:red;'>관람 당일에는 환불/변경이 불가</span>합니다.<br />
  · 지각/지역착오/연령미숙지로 티켓을 사용하지 못한 경우라도 환불/변경이 불가합니다.<br />
  <p>· 각 티켓마다 이용방법 및 환불규정에 차이가 있으니, 반드시 <span style='color:blue;'>상세페이지의 안내사항 및 환불규정을 정확히 확인</span>하신 뒤 예매를 진행하시기 바랍니다.<br />
  · 부분환불, 날짜/시간 변경은 지원하지 않으며, 전체 내역을 환불한 뒤 재예매하셔야 합니다.</p>
  <p class='viewpage_noti'>[개인정보 제 3자 제공 동의]</p>
  <p>· 타임티켓은 고객님의 티켓 예매내역 확인 및 관람, 사용 처리를 위해 최소한의 범위 내에서 제휴 업체에게 아래와 같이 구매정보를 제공하고 있습니다. 고객님께서 제 3자 제공에 동의하지 않으실 경우 티켓 및 상품 구매가 제한됩니다.</p>
  · 제공 업체 : 주식회사 엠컬쳐컴퍼니, 결제대행사(주식회사 네이버, 주식회사 카카오, (주)토스페이먼츠)<br />
  · 제공 목적 : 티켓 본인 사용체크 및 본인확인, 예약 서비스 제공 시 본인확인, 결제서비스 대행<br />
  · 제공 항목 : 구매자 이름, 구매자 전화번호, 구매자 이메일, 관람자 이름, 관람자 전화번호
  
         </div>
      </div>
   </div>

  <div class="check_box">
    <div>
      <input type="checkbox" name="check_1" id="check_1" class="check_box_squre">
      <label for="check_1">&nbsp;상단의 환불규정 / 주의사항 / 약관을 확인하였으며 이에 동의합니다.</label>
    </div>
    <div style="">
      <input type="checkbox" name="check_2" id="check_2" class="check_box_squre">
      <label for="check_2">
        <span style="color:blue;">&nbsp;공연티켓은 관람당일 환불/변경이 절대 불가</span>한 점에 동의합니다.(지각, 지역착오, 연령미준수로 인한 환불불가)
      </label>
    </div>

    <div class="pay_btn">
      <button type="button" id="pay_confirm">결제하기</button>
    </div>
  </div>
  <input type="hidden" name="${ _csrf.parameterName }" value="${ _csrf.token }">
  </form>
</div>


    </div>
  </div>
 
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script>
//휴대폰번호 하이픈 자동생성
const AUTO_HYPHEN_PHONE = (number) => {
    number = number.replace(/[^0-9]/g, '');
    let temp = '';
    if (number.length < 4) {
      temp = number;
    } else if (number.length < 8) {
      temp += number.substr(0, 3);
      temp += '-';
      temp += number.substr(3, 4);
    } else if (number.length < 12) {
      temp += number.substr(0, 3);
      temp += '-';
      temp += number.substr(3, 4);
      temp += '-';
      temp += number.substr(7);
    }
    const PHONE_NUMBER_WITH_HYPHEN = temp;
    const PHONE_INPUT_BOX = document.querySelector('#user_hphone');
    PHONE_INPUT_BOX.value = PHONE_NUMBER_WITH_HYPHEN;
    PHONE_INPUT_BOX.setAttribute('value', PHONE_NUMBER_WITH_HYPHEN);
  };  
  
  
</script>

<script>

$(":radio").on("click",function(){
   if($(this).val().indexOf("토스페이") == 0) {
      $("#payment_tosspay_noti").css("display","block");
      $("#payment_bank_noti").css("display", "none"); 
   }
   else if($(this).val().indexOf("무통장입금") == 0) {
      $("#payment_bank_noti").css("display","block")
      $("#payment_tosspay_noti").css("display", "none"); 
      }
   else{
      $("#payment_bank_noti").css("display", "none"); 
        $("#payment_tosspay_noti").css("display", "none"); 
      }
   
});

$("#pay_confirm").on("click",function(){
   const NAME_REGX = /[^a-z|A-Z|ㄱ-ㅎ|가-힣]+$/i;
   
   if(!($(":radio").is(":checked"))){
      alert("결제 방법을 선택해주세요")
      return ;
   }else if(NAME_REGX.test($(":text[name=name]").val())){
      alert("이름은 한글 또는 영문으로만 입력해주세요.");
      $(":text[name=name]").focus();
      return;
   }else if($(":text[name=name]").val().length < 2){
      alert("이용자 이름을 입력해 주세요")
      return ;
   }else if($(":text[name=hphone]").val().length < 10){
      alert("휴대폰 번호를 입력해 주세요")     
      return ;
   }else if($(":text[name=email]").val().length < 7){
      alert("E-Mail을 입력해 주세요")       
      return ;
   }else if(!($("#check_1").is(":checked"))){
      alert("환불규정, 주의사항, 약관에 동의하셔야 예매가 가능합니다")
      return ;
   }else if(!($("#check_2").is(":checked"))){
      alert("관람 당일에는 환불/변경이 불가함에 동의하셔야 예매가 가능합니다")
      return ;
   }else{
      alert("결제가 완료되었습니다");
      $("form").submit();
   }
});

$(".policy_slide:first").on("click", function() {
   var policyContents = $(".policy_contents");
    if (policyContents.first().css("display") === "none") {
        policyContents.first().css("display", "block");
    } else {
       policyContents.first().css("display", "none");
    }
});

$(".policy_slide:last").on("click", function() {
   var policyContents = $(".policy_contents");
    if (policyContents.last().css("display") === "none") {
        policyContents.last().css("display", "block");
    } else {
       policyContents.last().css("display", "none");
    }
});

$(".use_point_btn").on("click", function(event) {

   if($(".input_detail").val() < 500){
       alert("포인트는 최소 500P부터 사용 가능해요.");
       $(".input_detail").focus();
       return;
    }
   
});

</script>


</body>
</html>