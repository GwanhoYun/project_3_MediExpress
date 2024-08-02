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
    <header>
        <div class="header_top">
            <div class="header_top_width">
                <div class="logo">
                    <a href="/"><img src="/resources/img/logo.png" alt="logo"></a>
                </div>
                <div class="search">
                    <input type="text" placeholder="찾으시는 상품이 있으신가요?">
                    <div class="search_icon">
                        <img src="/resources/img/search_icon.png">
                    </div>
                </div>
                <div class="side_menu_top">
        <c:choose>
            <c:when test="${not empty sessionScope.loginUser}">
                <p>${sessionScope.loginUser.name}님 환영합니다!</p> <!-- 로그인된 사용자 이름 출력 -->
                <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
                <a href="${pageContext.request.contextPath}/boards/all">마이페이지</a>
            </c:when>
            <c:otherwise>
                <a href="${pageContext.request.contextPath}/login">로그인</a>
                <a href="${pageContext.request.contextPath}/register">회원가입</a>
            </c:otherwise>
        </c:choose>
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
        <section class="user_info">
            <h3 class="title">마이페이지</h3>
            <div class="user_container">
                <div class="profile_area">
                    <div class="profile">
                        <div class="user_name_container">
                            <h4>안녕하세요</h4>
                            <div class="user_name">
                                <h3>
                                    <p>${sessionScope.loginUser.name}님</p>
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
            <c:choose>
        <c:when test="${not empty boards}">
            <c:forEach items="${boards}" var="board">
                <div class="order_list">
                    <h3 class="order_date">${board.o_date.year+1900}-${board.o_date.month+1}-${board.o_date.date}</h3>
                    <!-- 주문한 날짜 입력 -->
                    <div class="order_item_info_container">
                        <div class="order_item_photo_container">
                            <div class="item_photo">
                                <img src="/resources/img/${board.p_no}.jpg" alt="주문 제품 이미지" onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
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
        </c:when>
        <c:otherwise>
            <p>주문 내역이 없습니다.</p>
        </c:otherwise>
    </c:choose>
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