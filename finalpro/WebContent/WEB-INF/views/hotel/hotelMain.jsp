<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@ include file="../header.jsp"%>
<style>
ul {
   list-style: none;
   text-align: center;
}

th {
   padding: 20px;
}

.line {
   border-top: none;
}

td p {
   text-align: center;
}

.icon {
   margin-bottom: 5px;
}

td th {
   padding: 4px;
}
</style>
<body class="stretched">

   <!-- Document Wrapper
============================================= -->
   <div id="wrapper" class="clearfix">


      <!-- #header end -->

      <!-- Page Title
    ============================================= -->
      <section id="page-title" class="page-title-dark">

         <div class="container clearfix">
            <h1>HOTEL</h1>
            <span>원하시는 숙박 장소를 예약하세요.</span>
            <ol class="breadcrumb">
               <li><a href="main">Home</a></li>
               <li class="active">호텔 예약</li>
            </ol>
         </div>

      </section>
      <!-- #page-title end -->

      <!-- Content
    ============================================= -->

      <section id="content">

         <div class="content-wrap bgcolor-grey-light">

            <div class="container clearfix" style="width: 1800px;">

               <!-- Portfolio Filter
                ============================================= -->
               <ul id="portfolio-filter" class="clearfix"
                  style="margin-left: 391px;">
                 
                  <li class="activeFilter"><a href="#" data-filter="*"
                     id="0">모두 보기</a></li>
                  <li><a href="#" data-filter=".pf-seoul" id="1">서울</a></li>
                  <li><a href="#" data-filter=".pf-incheon" id="2">인천</a></li>
                  <li><a href="#" data-filter=".pf-daejeon" id="3">대전</a></li>
                  <li><a href="#" data-filter=".pf-daegu" id="4">대구</a></li>
                  <li><a href="#" data-filter=".pf-gwangju" id="5">광주</a></li>
                  <li><a href="#" data-filter=".pf-busan" id="6">부산</a></li>
                  <li><a href="#" data-filter=".pf-ulsan" id="7">울산</a></li>
                  <li><a href="#" data-filter=".pf-kyonggi" id="9">경기도</a></li>
                  <li><a href="#" data-filter=".pf-gangwon" id="10">강원도</a></li>
               </ul>
               <!-- #portfolio-filter end -->


               <div class="clear"></div>
               <!-- 전국 날씨 왼쪽 사이드 바 시작 -->
               <div class="sidebar nobottommargin clearfix">
                  <div class="sidebar-widgets-wrap">
                     <div class="widget clearfix">
                        <div class="vis-weather">
                           <h3 style="margin-left: 64px;">전국 날씨</h3>
                           <ul class="list-group list-group-flush weather"
                              style="font-weight: 600;">

                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 전국 날씨 왼쪽 사이드 바 끝 -->


               <!-- review 순 호텔 순위 오른쪽 사이드 바  끝 -->



               <!-- Portfolio Items
                ============================================= -->
               <div id="portfolio" class="portfolio-1 clearfix">
                  <c:forEach var="e" items="${list}" varStatus="status">
                     <c:choose>
                        
                        <c:when test="${e.locnum eq '1'}">
                           <article class="portfolio-item pf-seoul alt clearfix"
                              style="width: 73%;">
                        </c:when>
                        <c:when test="${e.locnum eq '2'}">
                           <article class="portfolio-item pf-incheon alt clearfix"
                              style="width: 73%;">
                        </c:when>
                        <c:when test="${e.locnum eq '3'}">
                           <article class="portfolio-item pf-daejeon alt clearfix"
                              style="width: 73%;">
                        </c:when>
                        <c:when test="${e.locnum eq '4'}">
                           <article class="portfolio-item pf-daegu alt clearfix"
                              style="width: 73%;">
                        </c:when>
                        <c:when test="${e.locnum eq '5'}">
                           <article class="portfolio-item pf-gwangju alt clearfix"
                              style="width: 73%;">
                        </c:when>
                        <c:when test="${e.locnum eq '6'}">
                           <article class="portfolio-item pf-busan alt clearfix"
                              style="width: 73%;">
                        </c:when>
                        <c:when test="${e.locnum eq '7'}">
                           <article class="portfolio-item pf-ulsan alt clearfix"
                              style="width: 73%;">
                        </c:when>
                        <c:when test="${e.locnum eq '9'}">
                           <article class="portfolio-item pf-kyonggi alt clearfix"
                              style="width: 73%;">
                        </c:when>
                        <c:when test="${e.locnum eq '10'}">
                           <article class="portfolio-item pf-gangwon alt clearfix"
                              style="width: 73%;">
                        </c:when>
                     </c:choose>

                     <form method="post" name="myform" id="myform">

                        <input type="hidden" value="${e.title}" name="title"> <input
                           type="hidden" value="${e.num}" name="num">
                        <div class="portfolio-image"
                           style="width: 240px; height: 100px;">
                           <p style="font-weight: bold; font-size: 14px; color: red;">최저가
                              ${e.pay } ~</p>
                           <input type="button"
                              class="btn button button-light noleftmargin" value="객실 선택"
                              onclick="location.href ='goHotelReserve?title=${e.title}&num=${e.num }'">
                           <!-- <a href="goHotelDetail?num=${e.num}" class="btn button button-light noleftmargin">상세 보기</a> -->
                           <input type="button"
                              class="btn button button-light noleftmargin" value="상세 보기"
                              onclick="location.href='goHotelDetail?num=${e.num }'">
                           <input type="submit">
                        </div>
                        <div class="portfolio-desc" style="height: 100px;">
                           <h3>${e.title }</h3>
                           <p>${e.address }</p>
                           <p>${e.tel }</p>
                        </div>
                        <div class="portfolio-image"
                           style="width: 250px; height: 153px; right: 40px;">
                           <img src="${e.img}" alt="" style="width: 250px; height: 153px;">
                        </div>
                     </form>
                     </article>

                  </c:forEach>
               </div>
               <div style="text-align: center;">
                  <ul class="pagination">

                     <li class="previous"><c:if test="${paging.startPage != 1 }">
                           <a
                              href="goHotelMain?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}&numOfloc=">&larr;
                              Older</a>
                        </c:if> <c:if test="${paging.startPage==1}">
                           <a href="#">&larr; Older</a>
                        </c:if></li>
                     <c:forEach begin="${paging.startPage }" end="${paging.endPage }"
                        var="p">
                        <c:choose>
                           <c:when test="${p == paging.nowPage }">
                              <li><a>${p }</a></li>
                              <!-- 현재 페이지 일 경우 링크 해제 -->
                           </c:when>
                           <c:when test="${p != paging.nowPage }">
                              <!-- 다른 페이지 링크 -->
                              <li><a
                                 href="goHotelMain?nowPage=${p}&cntPerPage=${paging.cntPerPage}&numOfloc=">${p }</a></li>
                           </c:when>
                        </c:choose>
                     </c:forEach>

                     <li class="next"><c:if
                           test="${paging.endPage != paging.lastPage}">
                           <a
                              href="goHotelMain?nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}&numOfloc=">Newer
                              &rarr;</a>
                        </c:if> <c:if test="${paging.endPage == paging.lastPage}">
                           <a href="#">Newer &rarr;</a>
                        </c:if></li>

                  </ul>
                  <ul style="text-align: center; list-style: none;">
                     <li><form action="goHotelMain" method="post">
                           <%-- <input type="hidden" name="page" value="${param.page }"> --%>
                           <select name="searchType">
                              <option value="1">상호명</option>
                           </select>&nbsp;<input type="text" name="searchValue"> <input
                              type="submit" value="Search">
                        </form></li>
                  </ul>
               </div>
               <div class="sidebar nobottommargin col_last clearfix"
                  style="width: 330px; margin-top: -1135px;">
                  <div class="sidebar-widgets-wrap">
                     <div class="widget clearfix">
                        <h4 style="width: 147px; margin-left: 29px;">REVIEW TOP 5</h4>
                        <div id="post-list-footer">

                           <div class="spost clearfix">
                              <div class="portfolio-image"
                                 style="width: 200px; height: 155px; right: 40px;">
                                 <c:forEach var="i" items="${reviewlist}">
                                    <a href="goHotelDetail?num=${i.num }"><img
                                       src="${i.img }" style="width: 200px; height: 180px;" /></a>
                                    <p style="height: 0px;">${i.title }</p>
                                    <a href="goReviewMain" style="color: black;"><p>REVIEW
                                          : ${i.cnt }개</p></a>
                                 </c:forEach>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>


               <!-- #portfolio end -->

               <!-- Portfolio Script
                ============================================= -->
               <script type="text/javascript">
                  ///////////////////////////////////////////////////////////// 날씨 스크립트 시작               
                  $(document)
                        .ready(
                              function() {
                                 var arr = [];
                                 var today = new Date();
                                 var week = new Array('일', '월', '화',
                                       '수', '목', '금', '토');
                                 var year = today.getFullYear();
                                 var month = today.getMonth() + 1;
                                 var day = today.getDate();
                                 var hours = today.getHours();
                                 var minutes = today.getMinutes();
                                 var hours_al = new Array('02',
                                       '05', '08', '11', '14',
                                       '17', '20', '23');
                                 var korea = [ {
                                    'region' : '서울',
                                    'nx' : 60,
                                    'ny' : 127
                                 }, {
                                    'region' : '인천',
                                    'nx' : 55,
                                    'ny' : 124
                                 }, {
                                    'region' : '경기도',
                                    'nx' : 60,
                                    'ny' : 120
                                 }, {
                                    'region' : '강원도',
                                    'nx' : 73,
                                    'ny' : 134
                                 }, {
                                    'region' : '충청북도',
                                    'nx' : 69,
                                    'ny' : 107
                                 }, {
                                    'region' : '충청남도',
                                    'nx' : 68,
                                    'ny' : 100
                                 }, {
                                    'region' : '전라북도',
                                    'nx' : 63,
                                    'ny' : 89
                                 }, {
                                    'region' : '전라남도',
                                    'nx' : 51,
                                    'ny' : 67
                                 }, {
                                    'region' : '경상남도',
                                    'nx' : 91,
                                    'ny' : 77
                                 }, {
                                    'region' : '경상북도',
                                    'nx' : 89,
                                    'ny' : 91
                                 }, {
                                    'region' : '제주도',
                                    'nx' : 52,
                                    'ny' : 38
                                 } ];
                                 for (var i = 0; i < hours_al.length; i++) {
                                    var h = hours_al[i] - hours;
                                    if (h == -1 || h == 0
                                          || h == -2) {
                                       var now = hours_al[i];
                                    }
                                    if (hours == 00) {
                                       var now = hours_al[7];
                                    }
                                 }

                                 if (hours < 10) {
                                    hours = '0' + hours;
                                 }
                                 if (month < 10) {
                                    month = '0' + month;
                                 }
                                 if (day < 10) {
                                    day = '0' + day;
                                 }

                                 today = year + "" + month + ""
                                       + day;

                                 $
                                       .each(
                                             korea,
                                             function(j, k) {
                                                var _nx = korea[j].nx, _ny = korea[j].ny, region = korea[j].region, apikey = "kPpVENQRVk%2B66vQN4HjAC%2BjCuzuE60yhH5Ibbmo4lHYj2cXz7cDBg7L5wdqW1CLGwO4kHusRR2wweNob77xVKg%3D%3D", ForecastGribURL = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst";
                                                ForecastGribURL += "?ServiceKey="
                                                      + apikey;
                                                ForecastGribURL += "&base_date="
                                                      + today;
                                                ForecastGribURL += "&base_time="
                                                      + now
                                                      + "00";
                                                ForecastGribURL += "&nx="
                                                      + _nx
                                                      + "&ny="
                                                      + _ny;
                                                arr
                                                      .push({
                                                         'url' : ForecastGribURL,
                                                         'region' : region
                                                      });

                                                $
                                                      .ajax({
                                                         crossOrigin : true,
                                                         url : arr[j].url,
                                                         type : 'GET',
                                                         success : function(
                                                               data) {
                                                            var $data = $(
                                                                  data)
                                                                  .find(
                                                                        "response>body>items>item");
                                                            var cate = '';
                                                            var temp = '';
                                                            var sky = '';
                                                            var rain = '';

                                                            $
                                                                  .each(
                                                                        $data,
                                                                        function(
                                                                              i,
                                                                              o) {
                                                                           cate = $(
                                                                                 o)
                                                                                 .find(
                                                                                       "category")
                                                                                 .text(); // 카테고리 목록

                                                                           if (cate == 'T3H') {
                                                                              temp = $(
                                                                                    this)
                                                                                    .find(
                                                                                          "fcstValue")
                                                                                    .text(); // 3시간 온도                  
                                                                           }
                                                                           if (cate == 'SKY') {
                                                                              sky = $(
                                                                                    this)
                                                                                    .find(
                                                                                          "fcstValue")
                                                                                    .text(); // 하늘 상태
                                                                           }
                                                                           if (cate == 'PTY') {
                                                                              rain = $(
                                                                                    this)
                                                                                    .find(
                                                                                          "fcstValue")
                                                                                    .text(); // 강수 형태
                                                                           }
                                                                        });

                                                            $(
                                                                  '.weather')
                                                                  .append(
                                                                        '<li class="list-group-item weather_li'+j+'"></li>');
                                                            $(
                                                                  '.weather_li'
                                                                        + j)
                                                                  .addClass(
                                                                        'in'
                                                                              + j);
                                                            $(
                                                                  '.in'
                                                                        + j)
                                                                  .html(
                                                                        temp
                                                                              + " ℃") // 온도
                                                            $(
                                                                  '.in'
                                                                        + j)
                                                                  .prepend(
                                                                        arr[j].region
                                                                              + '&emsp;'); // 지역 이름

                                                            if (rain != 0) {
                                                               switch (rain) {
                                                               case '1':
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .append(
                                                                              " / 비");
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .prepend(
                                                                              '<i class="wi wi-rain"></i>&emsp;');
                                                                  break;
                                                               case '2':
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .append(
                                                                              " / 비/눈");
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .prepend(
                                                                              '<i class="wi wi-rain-mix"></i>&emsp;');
                                                                  break;
                                                               case '3':
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .append(
                                                                              " / 눈");
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .prepend(
                                                                              '<i class="wi wi-snow"></i>&emsp;');
                                                                  break;
                                                               }
                                                            } else {
                                                               switch (sky) {
                                                               case '1':
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .append(
                                                                              " / 맑음");
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .prepend(
                                                                              '<i class="wi wi-day-sunny"></i>&emsp;');
                                                                  break;
                                                               case '2':
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .append(
                                                                              " / 구름조금");
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .prepend(
                                                                              '<i class="wi wi-day-cloudy"></i>&emsp;');
                                                                  break;
                                                               case '3':
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .append(
                                                                              " / 구름많음");
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .prepend(
                                                                              '<i class="wi wi-cloudy"></i>&emsp;');
                                                                  break;
                                                               case '4':
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .append(
                                                                              " / 흐림");
                                                                  $(
                                                                        '.in'
                                                                              + j)
                                                                        .prepend(
                                                                              '<i class="wi wi-cloud"></i>&emsp;');
                                                                  break;
                                                               }
                                                            } // if 종료
                                                         } // success func 종료
                                                      });

                                             });
                              });
                  ///////////////////////////////////////////////////////////////////////// 날씨 스크립트 끝           

                  /* function click1(){
                    
                    var myform = document.getElementById("myform")
                    myform.action = 'goHotelReserve'
                    myform.submit();
                  } */
                  function click2() {
                     var myform = document.getElementById("myform")
                     myform.action = 'goHotelDetail?num=' + $
                     {
                        e.num
                     }
                     myform.submit()

                  }
                  
                  jQuery(window)
                        .load(
                              function() {
                                 var $container = $('#portfolio');
                                 $container.isotope({
                                    transitionDuration : '0.65s'
                                 });
            
                                 $('#portfolio-filter a')
                                       .click(
                                             function() {
                                                
                                                $('#portfolio-filter li').removeClass(
                                                            'activeFilter');
                                                $(this).parent('li').addClass('activeFilter');
                                                selector = $(this).attr('data-filter');
                                                $container.isotope({filter : selector});
                                                return false;
                                             });
                                 $('#portfolio-shuffle')
                                       .click(
                                             function() {
                                                $container
                                                      .isotope(
                                                            'updateSortData')
                                                      .isotope(
                                                            {
                                                               sortBy : 'random'
                                                            });
                                             });
                                 $(window).resize(function() {
                                    $container.isotope('layout');
                                 });
                              });
               </script>
               <!-- Portfolio Script End -->
            </div>
         </div>
      </section>
      <!-- #content end -->
      <!-- Footer
    ============================================= -->
      <!-- #footer end -->
   </div>
   <!-- #wrapper end -->
   <!-- Go To Top
============================================= -->
   <div id="gotoTop" class="icon-angle-up"></div>
   <!-- Footer Scripts
============================================= -->
   <script type="text/javascript" src="resources/js/functions.js"></script>
</body>
</html>
<%@include file="../footer.jsp"%>