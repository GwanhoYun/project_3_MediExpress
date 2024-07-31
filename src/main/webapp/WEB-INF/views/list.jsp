<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Medi Express - 빠른 배송 안전한 의료용품</title>
<link href="img/titleIcon.png" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="/resources/css/mypage.css" type="text/css">
<script src="component/project3_header_components.js" defer></script>
<script src="/resources/js/project3_footer_components.js" defer></script>
</head>
<body>
    <project3-header></project3-header>
    <main>
        <section class="user_info">
            <h3 class="title">마이페이지</h3>
            <div class="user_container">
                <div class="profile_area">
                    <div class="profile">
                        <div class="user_name_container">
                            <h4>안녕하세요</h4>
                            <div class="user_name">
                                <h3>
                                    <c:if test="${not empty loginUser}">
                                        ${loginUser}님
                                    </c:if>
                                    <c:if test="${empty loginUser}">
                                        로그인 정보가 없습니다.
                                    </c:if>
                                </h3>
                              
                            </div>
                        </div>
                        <div class="rank_expiration_date_container">
                            <div class="expiration_date">
                                <p>VIP</p>
                                <p>등급이</p>
                            </div>
                            <div class="expiration_date">
                                <p>2025년 7월 24일</p>
                                <p>까지 유지 됩니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="profile_right">
                        <div class="vip_icon">
                            <h3>VIP</h3>
                        </div>
                        <button>자세히</button>
                    </div>
                </div>
                <div class="user_resources">
                    <div class="point">
                        <h3>포인트</h3>
                        <h3>200,000 p</h3>
                    </div>
                    <div class="coupon">
                        <h3>쿠폰</h3>
                        <h3>1000개</h3>
                    </div>
                    <div class="review">
                        <h3>리뷰</h3>
                        <h3>200건</h3>
                    </div>
                </div>
            </div>
        </section>
        <section class="delivery_info">
            <div class="delivery_item_container_notDeposit">
                <div class="frame_notDeposit">
                    <p>0</p>
                </div>
                <p class="delivery_state_notDeposit">입금 전</p>
            </div>
            <div class="arrow">
                <div class="line"></div>
                <div class="arrow_head"></div>
                <div class="line"></div>
            </div>
            <div class="delivery_item_container">
                <div class="frame">
                    <p>0</p>
                </div>
                <p class="delivery_state">입금 완료</p>
            </div>
            <div class="arrow">
                <div class="line"></div>
                <div class="arrow_head"></div>
                <div class="line"></div>
            </div>
            <div class="delivery_item_container">
                <div class="frame">
                    <p>0</p>
                </div>
                <p class="delivery_state">출고 완료</p>
            </div>
            <div class="arrow">
                <div class="line"></div>
                <div class="arrow_head"></div>
                <div class="line"></div>
            </div>
            <div class="delivery_item_container">
                <div class="frame">
                    <p>0</p>
                </div>
                <p class="delivery_state">배송 중</p>
            </div>
            <div class="arrow">
                <div class="line"></div>
                <div class="arrow_head"></div>
                <div class="line"></div>
            </div>
            <div class="delivery_item_container">
                <div class="frame">
                    <p>1</p>
                </div>
                <p class="delivery_state">배송 완료</p>
            </div>
            <div class="gap"></div>
            <div class="delivery_cancel">
                <div class="frame_cancel">
                    <p>2</p>
                </div>
                <p class="delivery_state_cancel">취소 / 환불</p>
            </div>
        </section>
        <section class="order_list_container">
            <h3 class="title">주문 정보</h3>
            <c:forEach items="${boards}" var="board">
                <div class="order_list">
                    <h3 class="order_date">${board.o_date.year+1900}-${board.o_date.month+1}-${board.o_date.date}</h3>
                    <!-- 주문한 날짜 입력 -->
                    <div class="order_item_info_container">
                        <div class="order_item_photo_container">
                            <div class="item_photo">
                                <img src="#" alt="주문 제품 이미지" onerror="this.onerror=null; this.src='img/이미지준비중.png';">
                                <!-- 주문한 물건 이미지 출력 -->
                            </div>
                        </div>
                        <div class="item_info_container">
                            <div class="item_info">
                                <div class="serial_number">
                                    <p>주문 번호</p>
                                    <p>${board.o_no}</p>
                                    <!-- 제품 번호 입력 -->
                                </div>
                                <div class="item_name_price_container">
                                    <a href="view_item.html" class="item_name"> <!-- 주문제품 링크 입력 -->
                                        <p>일회용주사기(D/Syringe) 유침 , 제품번호 : ${board.p_no}</p> <!-- 주문한 제품 이름 -->
                                    </a>
                                    <div class="selected_option">
                                        <p>옵션 :&nbsp;</p>
                                        <p>10cc 100개 상자</p>
                                        <!-- 주문한 제품 옵션 -->
                                    </div>
                                    <div class="item_numbers">
                                        <p>수량 :&nbsp;</p>
                                        <p>${board.o_num}</p>
                                        <!-- 주문한 제품 개수 -->
                                        <p>개</p>
                                    </div>
                                </div>
                                <div class="price_area" data-total-price="${board.o_Total}">
                                    <p class="price">${board.o_Total}</p>
                                    <!-- 총 가격 -->
                                    <p>&nbsp;원</p>
                                </div>
                            </div>
                            <div class="benefit_and_delivery_process">
                                <div class="saving_point_area">
                                    <p class="benefit_and_delivery_process_title">적립 포인트</p>
                                    <div class="saving_point_text">
                                        <p class="saving_point"></p>
                                        <!-- 적립 포인트 -->
                                        <p>&nbsp;50p</p>
                                    </div>
                                </div>
                                <div class="delivery_porcess">
                                    <p class="benefit_and_delivery_process_title">배송현황</p>
                                    <a href="#" class="delivery_porcess_link"> <!-- 배송 추적 링크 입력 -->
                                        <p>배송추적</p>
                                    </a>
                                </div>
                                <div class="detail">
                                    <p class="benefit_and_delivery_process_title">상세내역</p>
                                    <a href="orderDetails?o_no=${board.o_no}&p_no=${board.p_no}" class="detail_link">자세히 보기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </section>
        <section>
            <div class="move_page">
                <div class="page_priv">
                    <a href="#">이전</a>
                </div>
                <div class="page_list">
                    <ul>
                        <li><a href="#">1</a></li>
                    </ul>
                </div>
                <div class="page_next">
                    <a href="#">다음</a>
                </div>
            </div>
        </section>
    </main>
    <project3-footer></project3-footer>
</body>