<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.dev.vo.ClothesVO"
    import="com.dev.dao.ClothesDAO"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <title>NormCore</title>
    <link rel="stylesheet" type="text/css" href="css/tapmenustyle.css">
    <link rel="stylesheet" type="text/css" href="css/style.css"><!--style.css 연결-->
</head>
<body onload="init();">
<%
	
	ClothesDAO dao=ClothesDAO.getInstance();
	ClothesVO clothes=dao.getOneCloth(1);
	
	
%>
  <script language="JavaScript">
  <!-- 
  /* 수량, 토탈 금액 */
  var sell_price;
  var quantity;

  function init () {
    sell_price = document.form.sell_price.value;
    quantity = document.form.quantity.value;
    document.form.sum.value = sell_price;
    change();
  }

  function add () {
    hm = document.form.quantity;
    sum = document.form.sum;
    hm.value ++ ;

    sum.value = parseInt(hm.value) * sell_price;
  }

  function del () {
    hm = document.form.quantity;
    sum = document.form.sum;
      if (hm.value > 1) {
        hm.value -- ;
        sum.value = parseInt(hm.value) * sell_price;
      }
  }

  function change () {
    hm = document.form.quantity;
    sum = document.form.sum;

      if (hm.value < 0) {
        hm.value = 0;
      }
    sum.value = parseInt(hm.value) * sell_price;
  }  
  //-->
</script>

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
              <li><a href="https://www.instagram.com/" target="blank"><img src="image/instagram.png"  width="25" height="25" alt="instagram" >
                <a href="https://www.kakotalk.com/" target="blank">&nbsp <img src="image/talk.png"  width="25" height="25" alt="kakotalk"></a></a></li>
              <li>NOTICE</li>
              
            </ul>
        </div>
        <div class="main">
<form name="form" action = "cartprocess.jsp">
 <table>
  <tr>
    <td width=100></td>
    <td rowspan=7><img src = "image/<%=clothes.getImage() %>" width=400px height=400px></td>
    <td width=50></td>
    <td colspan=2 class="line"><input type="hidden" name="p_name" value="ddd"> &nbsp;&nbsp;<%=clothes.getName() %></td>
  </tr>

  <tr>
    <td></td>
    <td width=50></td>
    <td>&nbsp;&nbsp;Price</td>
    <td><%=clothes.getPrice() %></td>
  </tr>


  
    <td></td>
    <td width=50></td>
    <td>&nbsp;&nbsp;Qty</td>
    <td>
      
        <input type="button" style="border:none; border: none; background: transparent;" value=" - " onclick="del();"> 

        <input type=hidden name="sell_price" value="<%=clothes.getPrice() %>">
        <input type="text" name="quantity" value="1" size="3" style="text-align: center; background-color:transparent;border:0" onchange="change();">

        <input type="button" style="border:none; border: none; background: transparent;" value=" + " onclick="add();">
  
    </td>
  </tr>

  <tr>
    <td></td>
    <td width=50></td>
    <td>&nbsp;&nbsp;Total Price</td>
    <td>
        <input type="text" name="sum" size="8" style="text-align: right; font-size:20px; background-color:transparent;border:0;" readonly>원
      
    </td>
  </tr>

  <tr>
    <td></td>
      <td></td>
    <td colspan="2"><input type="submit" style="width:200pt;height:60pt;background: transparent;" value="장바구니"></td>
     <input type="hidden" name="product_no" value="<%=clothes.getNo() %>">

  	
  </tr>
</table>   
</form>
           
  <div class="tabmenu">
    <input type="radio" name="tab" id="tab1" checked>
    <label for="tab1">Details</label>
    <input type="radio" name="tab" id="tab2">
    <label for="tab2">Product Info</label>
    <input type="radio" name="tab" id="tab3" >
    <label for="tab3">Delivery Info</label>
<!-- size, color 맞춰서 적어놓기 -->
    <div class="cont" id="cont1">
        <img src="image/top1_img1.jpg"  width="600px" height="800px" style="margin:30px">
        <img src="image/top1_img2.jpg"  width="600px" height="800px" style="margin:30px">
        <img src="image/top1_img3.jpg"   width="600px" height="800px" style="margin:30px">
        <img src="image/top1_img4.jpg"   width="600px" height="800px" style="margin:30px">
        <p style="margin-top:150px; margin-bottom:150px; font-size:17px; line-height: 30px;">
            size(cm)<br>
            총장43 어꺠50 가슴53 암홀21 팔길이15 소매20 밑단(조절가능)53<br><br>

            model size<br>
            170cm / top 55 / bottom 27(S) / shoes 245mm
        </p>
        
    </div>
    <div class="cont" id="cont2">
        <p style="font-size: 30px; line-height: 70px;">Product</p>
        <p style="font-size: 15px; line-height: 30px;">
            -모든 사움은 결제가 완료된 후 주문이 들어갑니다.<br>
            -품절 또는 지연 상품의 경우 주문 완료 후 익일부터 문자로 안내해드립니다.<br>
            -거래처 상품 품절시 100% 환불 처리 해드립니다.<br>
            -상세 사이즈는 재는 방법에 따라 1-2cm 오차가 발생할 수 있습니다.<br>
            -PC화면마다 해상도가 달라 색상 차이가 있을 수 있습니다.<br><br>
        </p>

        <p style="font-size: 30px; line-height: 70px;">EXCHANGE / REFUND</p>
        <p style="font-size:15px; line-height: 30px; margin-bottom: 100px;">
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
        </p>
            
    </div>
    <div class="cont" id="cont3">
        <p style="font-size: 30px; line-height: 70px;">Delivery</p>
        <p style="font-size:15px; line-height: 30px;">
            -배송 지역 : 국내<br>
            -배송 업체 : 우체국택배<br>
            -배송 비용 : 50,000원 이상 구매시 무료 배송<br>
            -배송 기간 : 결제 후 3-7일 소요 (주말 및 공휴일 제외)<br>
            &nbsp;&nbsp;+ 거래처의 상황에 따라 변동 가능성 있습니다.<br>
            &nbsp;&nbsp;+ 자체제작 상품 - 제작기간 7~10일 소요<br>
            /복수 구매의 경우 합배송을 원칙으로 합니다.

        </p>
    </div>
</div>


            
             
      </div>
     <div class="aside2">
        <div class="aside2-title"></div>
            <div class="aside2-contentbox"><img src="image/event.jpg" style="width:200px;height:500px;"></div>
      </div>
    
             



            
             
     
    </div> 
      <div class="footer">
        <p>대표이사. 놈코어 │ 사업자등록번호. 123-45-67890 │ 통신판매업신고. 2020-경기용인-0835 │ 개인정보보호책임자. 놈코어 [사업자정보확인]<br>
          회사명. ㈜NormCore │ 전화. 031-265-8138 │ 팩스. 02-123-4567 │ 이메일. NormCore@yongin.ac.kr │ 주소. 경기도 용인시 <br>
          ⓒ 2020 NormCore All rights reserved. │ 개인정보처리방침 │ 영상정보처리기기운영･관리방침 │ 이용약관 │ Hosting by cafe24 
          </p>
      </div>
   

</body>
</html>