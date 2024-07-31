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
    <link rel="stylesheet" href="/resources/css/product_BuyPage.css" type="text/css">
    <script rel="component" src="component/project3_header_components.js" defer></script>
    <script rel="component" src="component/project3_footer_components.js" defer></script>
    <script rel="component" src="component/side_bar_components.js" defer></script>
</head>

<body>
    <project3-header></project3-header>
    <side-bar></side-bar>
    <main>
        <section class="order_list_container">
            <h1 class="main_title">주문 정보</h1>
            <c:forEach var="product" items="${productList}" varStatus="status">
                <div class="order_list">
                    <h3 class="order_date">2024-07-24</h3>
                    <div class="order_item_info_container">
                        <div class="order_item_photo_container">
                            <div class="item_photo">
                                <img src="/resources/img/${product.productId}.jpg" alt="주문 제품 이미지" onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                            </div>
                        </div>
                        <div class="item_info_container" id="product-info" data-id="${product.productId}">
                            <div class="item_info">
                                <div class="serial_number">
                                    <p>NO.</p>
                                    <p>${status.index + 1}</p>
                                </div>
                                <div class="item_name_price_container">
                                    <a href="view_item.html" class="item_name">
                                        <p>${product.productName}</p>
                                    </a>
                                    <div class="selected_option">
                                        <p>옵션 :&nbsp;</p>
                                        <p>${product.productCount}개 상자</p>
                                    </div>
                                    <div class="item_numbers">
                                        <p>수량 :&nbsp;</p>
                                        <p>${product.productCount}</p>
                                        <p>개</p>
                                    </div>
                                </div>
                                <div class="price_area">
                                     <p class="price_${status.index + 1}">${product.productPrice}</p>
                                    <p>&nbsp;원</p>
                                </div>
                            </div>
                            <div class="benefit_and_delivery_process">
                                <div class="saving_point_area">
                                    <p class="benefit_and_delivery_process_title">적립 포인트</p>
                                    <div class="saving_point_text">
                                        <p class="saving_point_${status.index + 1}">${product.productPrice * 0.01}</p>
                                        <p>&nbsp;p</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </section>
        <section class="check_container">
            <div class="user_info">
                <div class="order_info_container">
                    <h3 class="title">주문</h3>
                    <div class="order_info">
                        <p>주문자 성함</p>
                        <input type="text" placeholder="이름" class="order_name">
                        <p>주문자 전화번호</p>
                        <input type="text" placeholder="전화번호(-제외)" class="order_callNum">
                    </div>
                    <div class="receiver_info_area">
                        <div class="same">
                            <h3 class="title">수취인 정보</h3>
                            <div><input type="checkbox" class="copy_info"><span>주문자와 동일</span></div>
                        </div>
                        <div class="receiver_info">
                            <p>받는 분 성함</p>
                            <input type="text" placeholder="이름" class="receiver">
                            <p>받는 분 전화번호</p>
                            <input type="text" placeholder="전화번호" class="receiver_callNum">
                            <p>배송지</p>
                            <div class="address_container">
                                <input type="text" placeholder="우편번호" class="zip_cord">
                                <input type="text" placeholder="주소" class="address">
                            </div>
                            <p>배송요청사항</p>
                            <input type="text" placeholder="직접입력" class="request">
                        </div>
                    </div>
                </div>
                <div class="discount_area">
                    <h3 class="title">쿠폰/포인트</h3>
                    <div class="coupon_point">
                        <div class="coupon">
                            <h3 class="title">쿠폰선택</h3>
                            <select class="select_coupon">
                                <option selected class="not_select" value="0">사용하지 않음</option>
                                <option class="discount_coupon" value="0.15">회원가입 축하 쿠폰 (전 품목 15% 할인)</option>
                            </select>
                        </div>
                        <div class="point">
                            <h3 class="title">포인트 사용</h3>
                            <div class="point_option">
                                <input class="point_input" type="number" min="0" step="1">
                                <p class="error_message" style="color: red; display: none;">포인트는 총 금액을 초과할 수 없습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="check">
                    <h3 class="title">예상 결제 금액</h3>
                    <div>
                        <div class="delivery_period">
                           <span id=month></span>
                            <span id=today></span>
                            <span>&nbsp;도착 예정</span>
                        </div>
                        <div class="reference">
                            <h3>* 배송 안내</h3>
                            <ol>
                                <li>직접 배송은 주문 후 평균 당일 ~ 1일 이내로 도착합니다.</li>
                                <li>택배사 배송일 경우 주문 후 평균 1~3일 이내로 도착합니다.</li>
                                <li>택배사 사정, 악천후 등으로 인해 배송이 지연될 수 있습니다.</li>
                                <li>일부 상품의 경우 평균 배송일보다 도착이 늦을 수 있습니다.</li>
                            </ol>
                            <h3>* 결제/적립 안내</h3>
                            <ol>
                                <li>
                                    <p><b>총 금액 계산식은 다음과 같습니다.</b></p>
                                    <p>(상품 금액-사용 포인트)*쿠폰 할인률=지불 금액</p>
                                </li>
                                <li>포인트 적립은 지불 금액 기준 1% 입니다.</li>
                                <li>
                                    <p>주문 정보의 적립 예정포인트는 할인률을 반영하지 않습니다</p>
                                    <p>실제 적립 예정 포인트는 아래를 참고해주세요.</p>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <div class="check_area">
                        <div class="item_price_area">
                            <div>
                                <p>상품 금액</p>
                            </div>
                            <div class="price_union">
                                <p class="total_item_price"></p>
                                <p>&nbsp;원</p>
                            </div>
                        </div>
                        <div class="item_price_area">
                            <div>
                                <p>포인트 할인 금액</p>
                            </div>
                            <div class="price_union">
                                <p class="used_point_discount_price">0</p>
                                <p>&nbsp;원</p>
                            </div>
                        </div>
                        <div class="item_price_area">
                            <div>
                                <p>쿠폰 할인 금액</p>
                            </div>
                            <div class="price_union">
                                <p class="discount_price">0</p>
                                <p>&nbsp;원</p>
                            </div>
                        </div>
                        <div class="item_price_area">
                            <div>
                                <h3>총 결제 예상 금액</h3>
                            </div>
                            <div class="price_union">
                                <h3 class="total_price">0</h3>
                                <h3>&nbsp;원</h3>
                            </div>
                        </div>
                        <div class="item_price_area">
                            <div>
                                <p>적립 예정 포인트</p>
                            </div>
                            <div class="price_union">
                                <p class="total_saving_point">0</p>
                                <p>&nbsp;P</p>
                            </div>
                        </div>
                        <div class="order_btn">
                            <button>장바구니 확인</button>
                            <button id="orderBtn" onClick="location.href='/orderend'">주문하기</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <project3-footer></project3-footer>
</body>
<script rel="javascript" type="text/javascript" src="/resources/js/product_BuyPage.js"></script>
<script src="/resources/js/project3_footer_components.js" defer></script>

</html>
