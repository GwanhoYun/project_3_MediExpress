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
    <link rel="stylesheet" href="/resources/css/project3_header_footer.css" type="text/css">
    <script rel="component" src="component/side_bar_components.js" defer></script>
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
                        <img src="img/search_icon.png">
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
    <side-bar></side-bar>
    <main>
        <section class="order_list_container">
            <h1 class="main_title">주문 정보</h1>
            <!-- status를 활용하여 forEach문이 반복 될때 마다 index가 1식 증가 NO에 주문 번호 표시 -->
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
						                            <p class="product-count">${product.productCount}</p>
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
                        <div>
                                   총 수량: <span id="total-count"></span>개
                         </div>
                           <span id=month></span>
                            <span id=today></span>
                            <div>
                                 
                         </div>
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
                            <button id="submitOrder">주문하기</button>
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
