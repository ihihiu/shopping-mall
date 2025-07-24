<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>NormCore</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css"><!--style.css 연결-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 

</head>
<style>

</style>
<body>


<!-- (바꾼부분) div를 삭제하고 nav, ul 태그 삽입  -->
<div class="container">
  <div class="top">
<nav>
  <ul>
    
      
      <li id="parent"><a href="join.jsp"><img src="image/join.png" width="15px" height="15px"> JOIN<div class="balloon">2000</div></a></li>
      <li><a href="#"><img src="image/login.png" width="15px" height="15px"> LOGIN</a></li>

  </ul>
</nav>
  </div>     
   <div class="title"><a href="main.jsp">NormCore</a></div>
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
              <li>Q&A</li>
            </ul>
        </div>
        
       <div class="main">
     
		<table style="margin:0px auto; border: 1px solid #036; width:400px; height:150px;">
		<tr>
			<td colspan=2 align=center >
			<h3> ${id }님 회원가입이 완료되었습니다.</h3><br>
			</td>
		</tr>
		<tr>
		
			<td align = center>
				<input type="button" style="width:60pt; height:20pt; border-color:#036; background: transparent;" onclick="location.href='main.jsp'" value="HOME">
			</td>
			<td align = center>
				<input type="button" style="width:60pt; height:20pt; border-color:#036; background: transparent;" onclick="location.href='login.jsp'" value="LOGIN">
			<br>
			</td>
		 
		</tr>
		</table>
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