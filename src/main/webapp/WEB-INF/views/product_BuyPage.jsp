<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medi Express - 빠른 배송 안전한 의료용품</title>
    <link href="img/titleIcon.png" rel="shortcut icon" type="image/x-icon">
    <link rel="stylesheet" href="/resources/css/cart_page.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/project3_header_footer.css" type="text/css">
    <script src="component\side_bar_components.js" defer></script>
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
        <section class="cart_item_list_container">
            <div class="cart_title">
                <h1 class="title">장바구니</h1>
            </div>
            <div>
                <div class="cart_top">
                    <div class="item_all_select">
                        <input type="checkbox">
                    </div>
                    <div class="item_name">
                        <h3>상품 이름</h3>
                    </div>
                    <div class="price_title">
                        <h3>가격</h3>
                    </div>
                    <div class="item_count_title">
                        <h3>구매 개수</h3>
                    </div>
                </div>

         <c:forEach var="product" items="${productList}" varStatus="status">
                <div class="cart_main">
                    <div class="item_info">
                        <div class="item_select">
                            <input type="checkbox">
                        </div>
                        <div class="item_photo">
                            <img src="/resources/img/${product.productId}.jpg" alt="주문 제품 이미지" onerror="this.onerror=null; this.src='img/이미지준비중.png';">
                        </div>
                        <div class="item_info_container">
                            <div class="serial_number_container">
                                <div>
                                    <p>NO.</p>
                                    <p class="serial_number">${status.index + 1}</p>
                                </div>
                                <div>
                                    <a href="view_item.html" class="item_name">${product.productName}</a>
                                </div>
                            </div>
                            <div class="selected_option">
                                <p>옵션 :&nbsp;</p>
                                <p>${product.productCount}개 상자</p>
                            </div>
                        </div>
                        <div class="item_price">
                            <div>
                                <p class="price">${product.productPrice}</p>
                                <p>&nbsp;원</p>
                            </div>
                            <button type="button">바로 구매</button>
                        </div>
                        <div class="item_numbers">
                            <div>
                                <p class="numbers">${product.productCount}</p>
                                <p>&nbsp;개</p>
                            </div>
                            <button type="button">옵션 수정</button>
                        </div>
                        <div class="delete_item">
                            <button type="button">
                                <div></div>
                                <div></div>
                            </button>
                        </div>
                    </div>
                </c:forEach>
 
                </div>
                <div class="cart_footer">
                    <button>선택 삭제</button>
                </div>
            </div>
            <div class="total_price_containder">
                <div class="total_item_price_container">
                    <p>상품 가격</p>
                    <div class="total_item_price">
                        <h2>${product.productPrice}</h2>
                        <h2>&nbsp;원</h2>
                    </div>
                </div>
                <div class="plus">
                    <p>+</p>
                </div>
                <div class="delivery_price_container">
                    <p>배송비</p>
                    <div class="delivery_price">
                        <h2>3000</h2>
                        <h2>&nbsp;원</h2>
                    </div>
                </div>
                <div class="equals_sign">
                    <p>=</p>
                </div>
                <div class="total_price_container">
                    <p>총 결제 예상 금액</p>
                    <div class="total_price">
                        <h2>#</h2>
                        <h2>&nbsp;원</h2>
                    </div>
                </div>
            </div>
            <div class="buy_btn">
                <button>쇼핑 계속하기</button>
                <button onclick="GoPaymentPage()">구매하기</button>
            </div>
        </section>
        
    </main>
    <project3-footer></project3-footer>
</body>
<script rel="javascript" type="text/javascript" src="/resources/js/cart_page.js"></script>
<script>
function GoPaymentPage() {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/changebasket', true);
    xhr.setRequestHeader('Content-Type', 'application/json');

    xhr.onload = function() {
        if (xhr.status >= 200 && xhr.status < 300) {
            window.location.href = '/productpayment';
        } else {
            console.error('요청 실패: ' + xhr.status);
            alert('구매 처리 중 오류가 발생했습니다.');
        }
    };

    xhr.onerror = function() {
        console.error('네트워크 오류');
        alert('네트워크 오류가 발생했습니다.');
    };

    xhr.send();
}
</script>

</html>