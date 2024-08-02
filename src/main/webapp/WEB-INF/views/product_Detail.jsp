<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medi Express - 빠른 배송 안전한 의료용품</title>
    <link rel="stylesheet" href="/resources/css/Product_detail.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/project3_header_footer.css" type="text/css">

    <script src="component\project3_footer_components.js" defer></script>
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
        <nav>
            <div class="location_area">
                <div><a href="index.html">HOME</a></div>
                <span>&gt;</span>
                <div><a>의료소모품</a></div>
                <span>&gt;</span>
                <div><a>주사기/주사침</a></div>
            </div>
        </nav>
        <section class="order_container">
         <div id="product-info" data-id="${id}">
            <div class="show_item_image">
            
                <img src="/resources/img/${id}.jpg" alt="mainImageArea" onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
            </div>
             </div>
            <div class="item_detail">
                <div class="item_name">
                    <h1>${product.name}</h1>
                </div>
                <div class="item_price">
                    <p>판매가</p>
                    <h3>${product.price}원</h3>
                </div>
                <div class="delivery_price">
                    <p>배송비</p>
                    <span>2500원/도서,산간지역 5000원<br>10만원 이상 구매 시 무료</span>
                </div>
                <div class="maker">
                    <p>제조사</p>
                    <span>${product.company}</span>
                </div>
                <div class="item_option">
                    <p>옵션선택</p> 
                     <div class="select_box">
								        <button class="select_btn" onclick="listOnOff()">옵션을 선택해주세요.</button>
								        <ul class="option_list" style="display: none;">
								            <c:forEach var="detail" items="${productDetails}">
								                <li class="option_item" data-name="${detail.nameDetail}" data-price="${detail.priceDetail}" data-id="${id}" onclick="selectOption(this)">
								                    ${detail.nameDetail} - ${detail.priceDetail}원 -번호 ${id}
								                </li>
								            </c:forEach>
								        </ul>
                    </div>
                  
                </div>
                <div class="total_price_containder">
                    <div class="cart_container"></div>
                    <div class="total_price">
                        <div>
                            <p>총 가격</p>
                        </div>
                        <div>
                            <p id="total_price">0</p>
                            <p>&ensp;원</p>
                         
                        </div>
                    </div>
                </div>
                
                <script type="text/javascript">
							    // 세션에서 loginUser.id 값을 가져와 JavaScript 변수에 할당
							    var loginUserId = "${sessionScope.loginUser.id}";
							  </script>
							  
                <div class="order">
                    <c:choose>
                     <c:when test="${not empty sessionScope.loginUser.id}">
                            <button class="btn_insert_cart" onclick="shoppingBasket()">장바구니</button>
                            <button class="btn_order" onclick="payment()">바로구매</button>
             
                      </c:when>
                        <c:otherwise>
                        <button class="btn_insert_cart" onclick="loginplz()">장바구니</button>
				                    <button class="btn_order" onclick="loginplz()" >바로구매</button>
				                    
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
           
        </section>
        <section id="recommend_item_container">
            <div class="item_infomation_option">
                <a href="#recommend_item_container" class="emphasize">관련상품</a>
                <a href="#item_infomation_container">상품상세정보</a>
                <a href="#delivery_container">배송/교환/반품</a>
                <a href="#review">상품후기</a>
                <a href="#recommend_item_container">상품문의</a>
            </div>
            <h3 class="section_title">이런 상품은 어때요?</h3>
            <div class="items">
                <div class="recommend_item">
                    <a href="#">
                        <div>
                            <img src="/resources/img/101.jpg"  alt="관련상품" onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                        </div>
                        <div>
                            <p>거즈</p>
                        </div>
                        <div>
                            <p>0</p>
                            <p>원</p>
                        </div>
                    </a>
                </div>
                <div class="recommend_item">
                    <a href="#">
                        <div>
                            <img src="#" alt="관련상품" onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                        </div>
                        <div>
                            <p>상품명</p>
                        </div>
                        <div>
                            <p>0</p>
                            <p>원</p>
                        </div>
                    </a>
                </div>
                <div class="recommend_item">
                    <a href="#">
                        <div>
                            <img src="#" alt="관련상품" onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                        </div>
                        <div>
                            <p>상품명</p>
                        </div>
                        <div>
                            <p>0</p>
                            <p>원</p>
                        </div>
                    </a>
                </div>
                <div class="recommend_item">
                    <a href="#">
                        <div>
                            <img src="#" alt="관련상품" onerror="this.onerror=null; this.src='/resources/img/imgLoading.png';">
                        </div>
                        <div>
                            <p>상품명</p>
                        </div>
                        <div>
                            <p>0</p>
                            <p>원</p>
                        </div>
                    </a>
                </div>

            </div>
        </section>
        <section id="item_infomation_container">
            <div class="item_infomation_option">
                <a href="#recommend_item_container">관련상품</a>
                <a href="#item_infomation_container" class="emphasize">상품상세정보</a>
                <a href="#delivery_container">배송/교환/반품</a>
                <a href="#review">상품후기</a>
                <a href="#recommend_item_container">상품문의</a>
            </div>
            <h3 class="section_title">상품상세정보</h3>
            <h3 style="margin-bottom: 10px;">일회용주사기(D/Syringe) 유침</h3>

            <h3 style="margin-bottom: 10px;">제품 설명</h3>
            <p>최고 품질의 일회용 주사기 100개 세트는 의료 전문가와 환자의 안전을 최우선으로 고려하여 설계되었습니다. 이 제품은 다양한 의료 절차와 처치에 적합하며, 각 주사기는 개별 멸균 포장되어
                있어 감염의 위험을 최소화합니다.</p>

            <h3 style="margin-bottom: 10px;">제품 특징</h3>
            <ul style="margin-bottom: 10px;">
                <li><strong>안전한 멸균 포장:</strong> 각 주사기는 개별적으로 멸균 처리되어 있어 사용 전까지 무균 상태를 유지합니다.</li>
                <li><strong>정확한 용량 표시:</strong> 주사기 몸체에 선명하게 표시된 용량 눈금은 정확한 약물 투여를 보장합니다.</li>
                <li><strong>매끄러운 주입:</strong> 고품질 피스톤 설계로 주입 시 매끄럽고 일관된 압력을 제공합니다.</li>
                <li><strong>다양한 용량:</strong> 1cc, 3cc, 5cc, 10cc 등의 다양한 용량 옵션을 제공합니다.</li>
                <li><strong>인체 공학적 디자인:</strong> 사용자 편의성을 고려한 인체 공학적 디자인으로 장시간 사용 시에도 피로를 최소화합니다.</li>
            </ul>

            <h3 style="margin-bottom: 10px;">제품 사양</h3>
            <ul style="margin-bottom: 10px;">
                <li><strong>포장 단위:</strong> 100개 세트</li>
                <li><strong>재질:</strong> 고품질 의료용 플라스틱</li>
                <li><strong>멸균 방식:</strong> EO 가스 멸균</li>
                <li><strong>유통 기한:</strong> 제조일로부터 5년</li>
                <li><strong>제조국:</strong> 대한민국</li>
            </ul>

            <h3 style="margin-bottom: 10px;">사용 방법</h3>
            <ol style="margin-bottom: 10px;">
                <li>주사기 포장을 개봉하기 전에 손을 깨끗이 씻으십시오.</li>
                <li>포장을 개봉하고 주사기를 꺼내십시오.</li>
                <li>약물을 주사기에 채운 후, 공기를 제거합니다.</li>
                <li>피부를 소독한 후, 주사부위에 주사기를 삽입합니다.</li>
                <li>주입을 완료한 후, 주사기를 안전하게 폐기합니다.</li>
            </ol>

            <h3 style="margin-bottom: 10px;">주의 사항</h3>
            <ul style="margin-bottom: 10px;">
                <li>일회용 제품으로, 재사용하지 마십시오.</li>
                <li>포장이 손상된 경우 사용하지 마십시오.</li>
                <li>유효기간이 지난 제품은 사용하지 마십시오.</li>
                <li>어린이의 손이 닿지 않는 곳에 보관하십시오.</li>
                <li>사용 후 적절한 방법으로 폐기하십시오.</li>
            </ul>
        </section>
        <section id="delivery_container">
            <div class="item_infomation_option">
                <a href="#recommend_item_container">관련상품</a>
                <a href="#item_infomation_container">상품상세정보</a>
                <a href="#delivery_container" class="emphasize">배송/교환/반품</a>
                <a href="#review">상품후기</a>
                <a href="#recommend_item_container">상품문의</a>
            </div>
            <h3 class="section_title">결제/배송/교환/반품</h3>
            <div>
                <h3>결제</h3>
                <p>한 번에 고액을 결제하는 경우, 안전을 위해 카드사에서 확인 전화가 올 수 있습니다.</p>
                <p>
                    확인 과정에서
                    <b style="color: red;">도난이 의심되는 카드</b>이거나,
                    <b style="color: red;">타인 명의 카드를 무단으로 사용이 의심</b>되는 등
                    정상적인 주문이 아니라고 판단되는 경우 주문이 보류되거나 관리자 임의로 취소 할 수 있습니다.
                </p>
            </div>
            <div>
                <h3>배송</h3>
                <p>배송 방법: 택배</p>
                <p>배송 지역: 전국</p>
                <p>배송 요금: 2,500원 (산간지역, 도서지방은 추가요금이 발생합니다.)</p>
                <p>평균 배송 기간: 1 ~ 3일 (주말, 공휴일은 배송하지 않습니다.)</p>
            </div>
            <div>
                <h3>교환/반품</h3>
                <p>교환/반품 방법: 택배 반송</p>
                <h3>*교환이 가능한 경우</h3>
                <p>상품이 훼손되지 않은 경우, 배송 후 7일 이내.</p>
                <p>공급받은 상품이 상품페이지의 내용, 광고와 다를 경우 사실을 알게 된 날로부터 30일 이내.</p>
                <h3>*교환이 불가한 경우</h3>
                <p>고객님의 과실로 인한 상품이 훼손(상품 내용 확인을 위한 일부 제품 포장 훼손은 제외)되거나, 소실한 경우.</p>
                <p>소모품의 포장을 훼손한 경우.</p>
                <p>복제가 가능한 상품의 포장을 훼손한 경우.</p>
                <p>재판매가 불가할 정도로 상품 가치가 현저히 감소한 경우.</p>
                <p>※단순 변심에 의한 반품의 경우 반송 비용은 고객님이 지불하셔야 합니다.</p>
            </div>
        </section>
        <section id="review">
            <div>
                <div class="item_infomation_option">
                    <a href="#recommend_item_container">관련상품</a>
                    <a href="#item_infomation_container">상품상세정보</a>
                    <a href="#delivery_container">배송/교환/반품</a>
                    <a href="#review" class="emphasize">상품후기</a>
                    <a href="#recommend_item_container">상품문의</a>
                </div>
                <h3 class="section_title">상품 후기(10+)</h3>
                <div class="review_post">
                    <div>
                        <p>★★★★★</p>
                        <p>사장님이 맛있고 상품이 친절해요!</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="review_post">
                    <div>
                        <p>★★★★★</p>
                        <p>잘 쓰고 있습니다</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="review_post">
                    <div>
                        <p>★★★★★</p>
                        <p>최고에요</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="review_post">
                    <div>
                        <p>★★★★★</p>
                        <p>주문한 지 하루 만에 도착했습니다. 상품도 잘 포장되어 있어 만족스럽습니다.</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="review_post">
                    <div>
                        <p>★★★★☆</p>
                        <p>상품 상태는 좋습니다. 다음 번에는 조금 더 빠르게 받으면 좋겠어요.</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="review_post">
                    <div>
                        <p>★★★★★</p>
                        <p>포장이 꼼꼼하고 배송도 빠릅니다</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="review_post">
                    <div>
                        <p>★★★★★</p>
                        <p>배송도 빠르고, 상품도 잘 포장되어 있어 무사히 도착했습니다. 매우 만족합니다.</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="review_post">
                    <div>
                        <p>★★★★★</p>
                        <p>배송이 정말 빠르고, 제품도 기대 이상입니다. 다음에도 여기서 구매할 것 같아요.</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="review_post">
                    <div>
                        <p>★★★★☆</p>
                        <p>배송은 이틀 걸렸고, 상품은 훌륭합니다. 다만 포장이 약간 헐거워서 개선이 필요할 것 같습니다.</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>

                <div class="review_post">
                    <div>
                        <p>★★★★★</p>
                        <p>배송이 빠르고 상품도 아주 만족스럽습니다. 포장도 안전하게 잘 되어 있었습니다.</p>
                    </div>
                    <div>
                        <p>비회원주문</p>
                        <p>2024-07-23</p>
                    </div>
                </div>
                <div class="posting">
                    <button>상품후기 작성</button>
                </div>
            </div>
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
<script rel="javascript" type="text/javascript" src="/resources/js/Product_detail.js"></script>
<script src="/resources/js/project3_footer_components.js" defer></script>
</html>