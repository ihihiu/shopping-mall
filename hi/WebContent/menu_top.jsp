<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  <script>
    $(document).ready(function(){
      $('.slider').bxSlider();
    });
  </script>  
  <title>NormCore</title>
    <link rel="stylesheet" type="text/css" href="css/menustyle.css"><!--style.css 연결-->
 



 
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
              <li><a href="notice.jsp">NOTICE</a></li>
              
            </ul>
        </div>
        <div class="main">
          <div class="main-subtitle">B E S T</div>

          <div class="slider">
            <div class="items1"> 
            <div class="item1"><a href="top1.jsp"><img src="image/top_best_1.jpg" alt="top_best_1"></a></div>
            <div class="item1"><a href="top1.jsp"><img src="image/top_best_2.jpg" alt="top_best_2"></a></div>
            </div>
            <div class="items1">
                <div class="item1"><a href="top1.jsp"><img src="image/top_best_3.jpg" alt="top_best_3"></a></div>
            <div class="item1"><img src="image/top_best_4.jpg" alt="top_best_4"></div>
            </div>
            <div class="items1">
                <div class="item1"><img src="image/top_best_5.jpg" alt="top_best_5"></div>
            <div class="item1"><img src="image/top_best_6.jpg" alt="top_best_6"></div>
            </div>

          </div>
         
             <div class="main-subtitle2">TOP</div>
             <div class="items2">
             <div class="item" data-text="어썸블라우스
            32,000원"><a href="top1.jsp"><img src="image/top_1.jpg" alt="top_1"></a></div>
             <div class="item" data-text="도브컷팅나시
            20,000원"><a href="top2.jsp"><img src="image/top_2.jpg" alt="top_2"></a></div>
             <div class="item" data-text="프리랩남방
            42,000원"><a href="top3.jsp"><img src="image/top_3.jpg" alt="top_3"></a></div>
             </div>
             <div class="items3">
             <div class="item" data-text="꼬임캡나시
            19,000원"><img src="image/top_4.jpg" alt="top_4"></div>
             <div class="item" data-text="메이골지끈나시
            15,000원"><img src="image/top_5.jpg" alt="top_5"></div>
             <div class="item" data-text="에스티셔츠
            24,000원"><img src="image/top_6.jpg" alt="top_6"></div>
            </div>    
           <!-- 바꾼부분 -->
            <div class="items4">
              <div class="item" data-text="페리나시
            24,000원"><img src="image/top_7.jpg" alt="top_7"></div>
              <div class="item" data-text="위트크롭남방
            46,000원"><img src="image/top_8.jpg" alt="top_8"></div>
              <div class="item" data-text="에이미나시탑
            30,000원"><img src="image/top_9.jpg" alt="top_9"></div>
             </div>       
             <div class="items5">
              <div class="item" data-text="포티블라우스
            41,000원"><img src="image/top_10.jpg" alt="top_10"></div>
              <div class="item" data-text="오프닝V니트
            39,000원"><img src="image/top_11.jpg" alt="top_11"></div>
              <div class="item" data-text="터치티셔츠
            22,000원"><img src="image/top_12.jpg" alt="top_12"></div>
             </div>
             <!--  -->
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
   
    
    </div>
  </div>
</body>
</html>