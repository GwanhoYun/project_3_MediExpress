<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medi Express - 빠른 배송 안전한 의료용품</title>
    <link href="/resources/img/titleIcon.png" rel="shortcut icon" type="image/x-icon">
    <link rel="stylesheet" href="/resources/css/index.css" type="text/css">
    <script src="component\project3_header_components.js" defer></script>
    <script src="/resources/js/project3_footer_components.js" defer></script>
</head>
<body>
    <header>
        <div class="header_top">
            <div class="header_top_width">
                <div class="logo">
                    <a href="#"><img src="/resources/img/logo.png" alt="logo"></a>
                </div>
                <div class="search">
                    <input type="text" placeholder="찾으시는 상품이 있으신가요?">
                    <div class="search_icon">
                        <img src="img/search_icon.png">
                    </div>
                </div>
                <div class="side_menu_top">
                    <a href="#">로그인</a>
                    <a href="#">회원가입</a>
                    <a href="#">마이페이지</a>
                </div>
            </div>
        </div>
        <div class="header_bottom">
            <div class="header_bottom_width">
                <div class="all_menu_container">
                    <div class="menu_icon">
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                    <p>전체 메뉴</p>
                </div>
                <div class="all_menu_list">
                    <div class="all_menu_list_top_width">
                        <div class="all_menu_controler">
                            <div class="menu_icon_2">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                            <h3 class="">메뉴 닫기</h3>
                        </div>
                    </div>
                    <div class="all_menu_detail_list">
                        <div>
                            <h3>의료소모품</h3>
                            <a>주사기/주사침</a>
                            <a>거즈/붕대/솜</a>
                            <a>반창고/테이프</a>
                            <a>수액용품/정맥카테터</a>
                            <a>소독제/소독용품</a>
                            <a>진찰/검사/페이퍼</a>
                            <a>수술/처치</a>
                            <a>엑스레이 용품</a>
                            <a>카테터/튜브/백</a>
                            <a>트레이/철제/운반용품</a>
                            <a>린넨/글러브</a>
                            <a>봉합사/봉합침</a>
                            <a>외과용품</a>
                            <a>실버용품</a>
                            <a>한방/기타</a>
                        </div>
                        <div>
                            <h3>수술용품</h3>
                            <a>크램프</a>
                            <a>후크</a>
                            <a>론저</a>
                            <a>핀셋</a>
                            <a>가위</a>
                            <a>니들홀더</a>
                            <a>겸자</a>
                            <a>리트렉터</a>
                            <a>스펙큘럼</a>
                            <a>컷터</a>
                            <a>엘레베이터</a>
                            <a>석션튜브</a>
                            <a>큐렛</a>
                            <a>오스테도톰/가우치/치젤</a>
                            <a>펀치</a>
                            <a>기타</a>
                        </div>
                        <div>
                            <h3>의료기기</h3>
                            <a>혈압/혈당계</a>
                            <a>측정기</a>
                            <a>네블라이저/석션기</a>
                            <a>살균/멸균/소독기</a>
                            <a>기타</a>
                        </div>
                        <div>
                            <h3>의약품</h3>
                            <a>수액</a>
                            <a>급여주사</a>
                            <a>비급여주사</a>
                            <a>백신</a>
                            <a>경구제</a>
                            <a>외용제</a>
                            <a>기타</a>
                        </div>
                        <div>
                            <h3>전산/사무용품</h3>
                            <a>처방전</a>
                            <a>용지</a>
                        </div>
                    </div>
                </div>
                <div class="header_menu_container">
                    <div class="menu_1">
                        <div>
                            <a class="menu_titel">의료소모품</a>
                        </div>
                        <ul class="menu_list">
                            <li><a>주사기/주사침</a></li>
                            <li><a>거즈/붕대/솜</a></li>
                            <li><a>반창고/테이프</a></li>
                            <li><a>수액용품/정맥카테터</a></li>
                            <li><a>소독제/소독용품</a></li>
                            <li><a>진찰/검사/페이퍼</a></li>
                            <li><a>수술/처치</a></li>
                            <li><a>엑스레이 용품</a></li>
                            <li><a>카테터/튜브/백</a></li>
                            <li><a>트레이/철제/운반용품</a></li>
                            <li><a>린넨/글러브</a></li>
                            <li><a>봉합사/봉합침</a></li>
                            <li><a>외과용품</a></li>
                            <li><a>실버용품</a></li>
                            <li><a>한방/기타</a></li>
                        </ul>
                    </div>
                    <div class="menu_2">
                        <div>
                            <a class="menu_titel">수술용품</a>
                        </div>
                        <ul class="menu_list">
                            <li><a>크램프</a></li>
                            <li><a>후크</a></li>
                            <li><a>론저</a></li>
                            <li><a>핀셋</a></li>
                            <li><a>가위</a></li>
                            <li><a>니들홀더</a></li>
                            <li><a>겸자</a></li>
                            <li><a>리트렉터</a></li>
                            <li><a>스펙큘럼</a></li>
                            <li><a>컷터</a></li>
                            <li><a>엘레베이터</a></li>
                            <li><a>석션튜브</a></li>
                            <li><a>큐렛</a></li>
                            <li><a>오스테도톰/가우치/치젤</a></li>
                            <li><a>펀치</a></li>
                            <li><a>기타</a></li>
                        </ul>
                    </div>
                    <div class="menu_3">
                        <div>
                            <a class="menu_titel">의료기기</a>
                        </div>
                        <ul class="menu_list">
                            <li><a>혈압/혈당계</a></li>
                            <li><a>측정기</a></li>
                            <li><a>네블라이저/석션기</a></li>
                            <li><a>살균/멸균/소독기</a></li>
                            <li><a>기타</a></li>
                        </ul>
                    </div>
                    <div class="menu_4">
                        <div>
                            <a class="menu_titel">의학품</a>
                        </div>
                        <ul class="menu_list">
                            <li><a>수액</a></li>
                            <li><a>급여주사</a></li>
                            <li><a>비급여주사</a></li>
                            <li><a>백신</a></li>
                            <li><a>경구제</a></li>
                            <li><a>외용제</a></li>
                            <li><a>기타</a></li>
                        </ul>
                    </div>
                    <div class="menu_5">
                        <ul>
                            <li>
                                <a class="menu_titel">전산/세무</a>
                                <ul class="menu_list">
                                    <li><a>처방전</a></li>
                                    <li><a>용지</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="side_menu_bottom">
                    <a>특가 상품</a>
                    <a>견적 문의</a>
                </div>
            </div>
        </div>
    </header>
    <main>
       <section class="slider_area">
            <article>
                <ul class="slider-container">
                    <li class="slide1">
                        <img src="/resources/img/banner4.png" alt="">
                    </li>
                    <li class="slide2">
                        <img src="/resources/img/banner2.png" alt="">
                    </li>
                    <li class="slide3">
                        <img src="/resources/img/banner3.png" alt="">
                    </li>
                    <li class="slide4">
                        <img src="/resources/img/banner1.png" alt="">
                    </li>
                </ul>
                <div class="remort">
                    <div class="remort_width">
                        <div class="slide_count">
                            <span class="present_slide_index"></span>
                            <span>&nbsp;/&nbsp;</span>
                            <span class="total_slide_index"></span>
                        </div>
                        <div class="remort_button_container">
                            <a class="prev">
                                <div class="prev_btn">
                                    <div></div>
                                    <div></div>
                                </div>
                            </a>
                            <a class="stop_slide">
                                <div class="stop_slide_btn">
                                    <div></div>
                                    <div></div>
                                    <div class="arrow_head"></div>
                                </div>
                            </a>
                            <a class="next">
                                <div class="next_btn">
                                    <div></div>
                                    <div></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="slide_count_2">
                </div>
            </article>
        </section>
        <section class="benefit_area">
            <div class="benefits">
                <div class="benefit1" style="background-image: url('/resources/img/benefit1.png'); background-size : cover"></div>
                <div class="benefit2" style="background-image: url('/resources/img/benefit2.png'); background-size : cover"></div>
                <div class="benefit3" style="background-image: url('/resources/img/benefit3.png'); background-size : cover"></div>
                <div class="benefit4" style="background-image: url('/resources/img/benefit4.png'); background-size : cover"></div>
            </div>
        </section>
        <section>
            <div class="event_area">
                <div class="section_title">
                    <h3>Event</h3>
                    <p>다양한 혜택을 누리세요!</p>
                </div>
                <div>
                    <div class="event1" style="background-image: url('/resources/img/banner_event3.png'); background-size : cover">
                    </div>
                    <div class="event2" style="background-image: url('/resources/img/banner_event5.png'); background-size : cover">
                    </div>
                    <div class="event3" style="background-image: url('/resources/img/banner_event4.png'); background-size : cover">
                    </div>
                    <div class="event4" style="background-image: url('/resources/img/banner_event1.gif'); background-size : cover">
                    </div>
                    <div class="event5" style="background-image: url('/resources/img/banner_event5.png'); background-size : cover">
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="best_product_area">
                <div class="section_title">
                    <h3>Best Product</h3>
                    <p>많이 찾으시는 용품이에요 :&#41;</p>
                </div>
                <div class="items_container">
                    <div class="item_list">
                        <button class="view_item_btn1" onclick="activateItem(0)">의료소모품</button>
                        <button class="view_item_btn2" onclick="activateItem(1)">의약품</button>
                        <button class="view_item_btn3" onclick="activateItem(2)">의료기기</button>
                        <button class="view_item_btn4" onclick="activateItem(3)">전산/사무용품</button>
                    </div>
                      
                    <div class="view_item_container_1" style="display: flex;">
                   
                        <div class="item">
                            <a href="productdetail/${product0.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product0.id}.jpg" alt="item1_img"
                                        onerror="this.onerror=null; this.src='/resources//resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                  <h3>${product0.company}</h3>
						                      <h3>${product0.name}</h3>
						                      <p>${product0.price}원</p>
                                </div>
                            </a>
                        </div>
                        
                        <div class="item">
                            <a href="productdetail/${product1.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product1.id}.jpg" alt="item2_img"
                                        onerror="this.onerror=null; this.src='/resources//resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                     <h3>${product1.company}</h3>
                                  <h3>${product1.name}</h3>
                                  <p>${product1.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product2.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product2.id}.jpg" alt="item3_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                     <h3>${product2.company}</h3>
                                  <h3>${product2.name}</h3>
                                  <p>${product2.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product3.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product3.id}.jpg" alt="item4_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                     <h3>${product3.company}</h3>
                                  <h3>${product3.name}</h3>
                                  <p>${product3.price}원</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="view_item_container_2" style="display: none;">
                        <div class="item">
                            <a href="productdetail/${product4.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product4.id}.jpg" alt="item1_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                     <h3>${product4.company}</h3>
                                  <h3>${product4.name}</h3>
                                  <p>${product4.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product5.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product5.id}.jpg" alt="item2_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                    <h3>${product5.company}</h3>
                                  <h3>${product5.name}</h3>
                                  <p>${product5.price}원</p>
            
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product6.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product6.id}.jpg" alt="item3_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                    <h3>${product6.company}</h3>
                                  <h3>${product6.name}</h3>
                                  <p>${product6.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product7.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product7.id}.jpg" alt="item4_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                     <h3>${product7.company}</h3>
                                  <h3>${product7.name}</h3>
                                  <p>${product7.price}원</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="view_item_container_3" style="display: none;">
                        <div class="item">
                            <a href="productdetail/${product8.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product8.id}.jpg" alt="item1_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                     <h3>${product8.company}</h3>
                                  <h3>${product8.name}</h3>
                                  <p>${product8.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product9.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product9.id}.jpg" alt="item2_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                    <h3>${product9.company}</h3>
                                  <h3>${product9.name}</h3>
                                  <p>${product9.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product10.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product10.id}.jpg" alt="item3_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                    <h3>${product10.company}</h3>
                                  <h3>${product10.name}</h3>
                                  <p>${product10.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product11.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product11.id}.jpg" alt="item4_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                     <h3>${product11.company}</h3>
                                  <h3>${product11.name}</h3>
                                  <p>${product11.price}원</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="view_item_container_4" style="display: none;">
                        <div class="item">
                            <a href="productdetail/${product12.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product12.id}.jpg" alt="item1_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                    <h3>${product12.company}</h3>
                                  <h3>${product12.name}</h3>
                                  <p>${product12.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product13.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product13.id}.jpg" alt="item2_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                    <h3>${product13.company}</h3>
                                  <h3>${product13.name}</h3>
                                  <p>${product13.price}원</p>
                                </div> 
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product14.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product14.id}.jpg" alt="item3_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                    <h3>${product14.company}</h3>
                                  <h3>${product14.name}</h3>
                                  <p>${product14.price}원</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="productdetail/${product15.id}">
                                <div class="item_image">
                                    <img src="/resources/img/${product15.id}.jpg" alt="item4_img"
                                        onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                                </div>
                                <div class="item_price">
                                     <h3>${product15.company}</h3>
                                  <h3>${product15.name}</h3>
                                  <p>${product15.price}원</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="banner_ad">
                <div>
                    <a>
                        <img src="/resources/img/ad_banner.png" alt="benner_image">
                    </a>
                </div>
            </div>
        </section>
    </main>
    <project3-footer></project3-footer>
    <script rel="javascript" type="text/javascript" src="/resources/js/index.js"></script>
<script src="/resources/js/project3_footer_components.js" defer></script>
</body>

</html>