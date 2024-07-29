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
    <script src="component\project3_footer_components.js" defer></script>
</head>

<body>
    <project3-header></project3-header>
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
                        <a class="prev"><img src="/resources/img/prev-icon-black.png"></a>
                        <a class="next"><img src="/resources/img/next-icon-black.png"></a>
                    </div>
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
                                    <img src="/resources/img/주사기.jpg" alt="item1_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="/resources/img/주사기2.jpg" alt="item2_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="/resources/img/주사기3.jpg" alt="item3_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="/resources/img/주사기4.jpg" alt="item4_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item1_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item2_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item3_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item4_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item1_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item2_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item3_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item4_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item1_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item2_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item3_img"
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
                            <a href="">
                                <div class="item_image">
                                    <img src="#" alt="item4_img"
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
</body>
<script rel="javascript" type="text/javascript" src="/resources/js/index.js"></script>

</html>