<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.net.URLEncoder, java.security.SecureRandom, java.math.BigInteger" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/shop_login.css"><!-- 외부 CSS 파일 링크 -->
<style>
    /* 네이버 로그인 버튼 크기 조정 */
    #naverIdLogin img {
        width: 100px;  /* 원하는 너비로 설정 */
        height: auto;  /* 자동 높이 설정 */
    }
</style>
</head>
<body>
    <header>
        <div class="header_top">
            <div class="header_top_width">
                <div class="logo">
                    <a href="#"><img src="img/logo.png" alt="logo"></a>
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
                <div class="all_menu_container" onclick="activateAllMenu()">
                    <div class="menu_icon">
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                    <p>전체 메뉴</p>
                </div>
                <div class="all_menu_list">
                    <div class="all_menu_list_top_width">
                        <div class="all_menu_controler" onclick="activateAllMenu()">
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
        <div class="login_form_1">
            <h2>로그인</h2>
            <div class="login_form_2">
                <form action="${pageContext.request.contextPath}/login" method="post"><!-- 로그인 처리를 위한 폼 -->
                    <h4>회원 로그인</h4>
                    <input type="text" name="id" placeholder="아이디" class="input_id" maxlength="20"> <!-- 아이디 입력 필드 -->
                    <input type="password" name="password" placeholder="비밀번호" class="input_password" maxlength="20"> <!-- 비밀번호 입력 필드 -->
                    <div class="radio">
                        <input type="checkbox"> <span>아이디 저장</span>
                    </div>
                    <div class="login_button"><button type="submit">로그인</button></div> <!-- 로그인 버튼 -->
                    <div class="find_button">
                        <div>
                            <a href="#" class="find_button">아이디 찾기</a> <!-- 아이디 찾기 링크 -->
                            <span>|</span>
                            <a href="#" class="find_button">비밀번호 찾기</a> <!-- 비밀번호 찾기 링크 -->
                        </div>
                        <div>
                            <a href="#" class="join_button">회원가입</a> <!-- 회원가입 링크 -->
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <footer>
        <div class="footer_width">
            <div class="company_tel">
                <div>
                    <span>고객센터</span>
                    <span>1600 - 0000</span>
                </div>
                <div>
                    <span>운영시간 :</span>
                    <span> 평일 08:00 ~ 18:00</span>
                </div>
                <div>
                    <span>점심시간 :</span>
                    <span> 12:00 ~ 13:00</span>
                </div>
                <div>
                    <span>휴무일자 :</span>
                    <span> 토요일, 일요일, 법정공휴일</span>
                </div>
            </div>
            <div class="company_info">
                <div>
                    <a href="#">홈</a>
                    <a href="#">회사 소개</a>
                    <a href="#">이용 약관</a>
                    <a href="#"><b>개인정보처리방침</b></a>
                    <a href="#">이용안내</a>
                    <a href="#">광고/제휴 문의</a>
                </div>
                <div>
                    <p>상호명 : MEDI EXPRESS | 대표 : 곽두팔 | 주소 : 사랑시 고백구 행복1길 12-1</p>
                    <p>대표번호 : 1600 - 0000 | 실제 존재하는 사이트가 아닙니다. | 통신판매업신고 : 제 2024-사랑시 고백구청-1호</p>
                    <p>COPYRIGHT 2024 MEDI EXPRESS ALL RIGHT RESERVED</p>
                </div>
            </div>
        </div>
    </footer>
</body>
<script rel="javascript" type="text/javascript" src="/resources/js/project3_header_footer.js"></script>
</html>
