<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <title>NormCore</title>
    <link rel="stylesheet" type="text/css" href="css/noticestyle.css"><!--style.css 연결-->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="js/gongzi.js" defer></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 

</head>
<body>

<!-- (바꾼부분) div를 삭제하고 nav, ul 태그 삽입  -->
<div class="container">
  <div class="top">
<nav>
  <ul>
  <%
		if(session.getAttribute("id")==null){
		%>
		 <li id="parent"><a href="join.jsp"><img src="image/join.png" width="15px" height="15px"> JOIN<div class="balloon">2000</div></a></li>
      <li><a href="login.jsp"><img src="image/login.png" width="15px" height="15px"> LOGIN</a></li>
		
		<%	
		}else{
			%>
			<li><a href="#"><img src="image/setting.png" width="15px" height="15px"> MYPAGE &nbsp</a>
        <ul>
          <li><a href="#"><img src="image/cart.png" width="15px" height="15px"> 장바구니</li></a>
          <li><a href="#"><img src="image/box.png" width="15px" height="15px"> 배송 현황</li></a>
          <li><a href="#"><img src="image/paper.png" width="15px" height="15px"> 회원 정보</li></a>
        </ul>
      </li>
      

        <li><a href="login.do"><img src="image/login.png" width="15px" height="15px"> LOGOUT</a></li>

			
			<% 
		}
	%>

  </ul>
</nav>
  </div>

       
   <div class="title"><a href="main.jsp">NormCore</a></div>
    </div>
  </div>
       <div class="body">
        <div class="aside">
          <ul>
              <li>BEST</li>
              <li>NEW</li>
              <li>OUTER</li>
              <li><a href="menu_top.jsp">TOP</a></li>
              <li>BOTTOM</li>
              <li>SHOES</li>
              <li>ACC</li><br>
               <li><a href="https://www.instagram.com/normcore__official/" target="blank"><img src="image/instagram.png"  width="25" height="25" alt="instagram" ></a>
                <a href="https://open.kakao.com/o/gmcePkhc" target="blank">&nbsp <img src="image/talk.png"  width="25" height="25" alt="kakotalk"></a></li>
              <li>NOTICE</li>
              
            </ul>
        </div>
        <div class="main">
      <div class="accordion-item">
      <div class="accordion-item-header">
        세탁은 어떻게 해야 되나요?
      </div>
      <div class="accordion-item-body">
        <div class="accordion-item-body-content">
         <img src="image/cleaning.JPG" >
        </div>
      </div>
    </div>

    <div class="accordion-item">
      <div class="accordion-item-header"> 
       교환 및 환불은 어떻게 하나요?
      </div>
      <div class="accordion-item-body">
        <div class="accordion-item-body-content">
           -교환 및 반품시 상품을 수령하신 날로부터 <b>24시간 이내</b>로 연락 부탁드립니다.<br>
            &nbsp;&nbsp;[콜센터 운영시간 : PM 2:00 - PM 5:00]<br>
            -<b>단순 변심</b>에 의한 교환/환불은 <b>왕복 택배비 5000원</b>을 부담해주셔야 합니다.<br>
            -<b>화이트/아이보리/크림 계열/핸드 메이드,니트,가죽,신발,가방 및 악세사리류</b>는 <b>교환/환불이 불가능</b>합니다.<br>
            -타 택배사 이용시 추가 비용이 발생할 수 있으며 반드시 선불로 보내주셔야 합니다.<br>
            -교환/반품 상품과 왕복 배송비 5000원을 동봉하여 받으신 운송장 번호로 예약 후 보내주시면 됩니다.<br>
            &nbsp;&nbsp;/ 선불로 타 택배사 이용시 편도 택배비 2500원을 동봉해주시면 됩니다.<br>
            -타 택배사 이용시 추가 비용이 발생할 수 있으며 반드시 선불로 보내주셔야 합니다.<br>
            -상품 불량시 배송 수령 당일 <b>24시간 내</b>로 연락주시면 같은 상품으로 교환 처리 됩니다.<br>
            &nbsp;&nbsp;/ 기간이 지나서 연락주시면 처리 불가능합니다.<br>
            &nbsp;&nbsp;/ 불량 및 오배송으로 인한 교환 및 반품 비용은 NormCore에서 부담합니다.<br>
            -상품에 따라 교환/환불이 불가능 할 경우도 있으니 충분한 상담 후 구매 바랍니다.<br>
        </div>
      </div>
    </div>

    <div class="accordion-item">
      <div class="accordion-item-header">
        무료배송은 얼마부터인가요?
      </div>
      <div class="accordion-item-body">
        <div class="accordion-item-body-content">
            -7만원 이상 구매시 무료배송이며, 7만원 미만 구매 시, 2500원의 배송비가 부담됩니다.
        </div>
      </div>
    </div>

    <div class="accordion-item">
      <div class="accordion-item-header">
        주문한 상품중에 일부만 왔습니다.
      </div>
      <div class="accordion-item-body">
        <div class="accordion-item-body-content">
        -상품에 따라 빠른 배송을 위해 먼저 배송 가능한 상품부터 개별적으로 배송될 수 있습니다.
기타 자세한 내용은 고객센터(1544-7665) 또는 1:1 문의로 문의주시면 확인 후 처리해 드리도록 하겠습니다.
        </div>
      </div>
    </div>

    <div class="accordion-item">
      <div class="accordion-item-header">
        그 외의 공지사항
      </div>
      <div class="accordion-item-body">
        <div class="accordion-item-body-content">
         -모든 상품은 결제가 완료된 후 주문이 들어갑니다.<br>
            -품절 또는 지연 상품의 경우 주문 완료 후 익일부터 문자로 안내해드립니다.<br>
            -거래처 상품 품절시 100% 환불 처리 해드립니다.<br>
            -상세 사이즈는 재는 방법에 따라 1-2cm 오차가 발생할 수 있습니다.<br>
            -PC화면마다 해상도가 달라 색상 차이가 있을 수 있습니다.<br><br>
        </div>
      </div>
    </div>
      </div>
     <div class="aside2">
  <div class="aside2-content"><img src="image/event.jpg" style="width:200px;height:500px;"></div>
</div>
    </div> 
      <div class="footer">
        <p>대표이사. 놈코어 │ 사업자등록번호. 123-45-67890 │ 통신판매업신고. 2020-경기용인-0835 │ 개인정보보호책임자. 놈코어 [사업자정보확인]<br><br>
          회사명. ㈜NormCore │ 전화. 031-265-8138 │ 팩스. 02-123-4567 │ 이메일. NormCore@yongin.ac.kr │ 주소. 경기도 용인시 <br><br>
          ⓒ 2020 NormCore All rights reserved. │ 개인정보처리방침 │ 영상정보처리기기운영･관리방침 │ 이용약관 │ Hosting by cafe24 
          </p>
      </div>
   
 
  <script type="text/javascript" src="js/slider.js"></script> 
</body>
</html>