# 👨‍⚕️Project_3_MediExpress

의료 기관과 개인이 필요로하는 의료 소모품을 쉽게 찾고 구매할 수 있는 가상의 온라인 플랫폼(MediExpress)을 제공하여
주문, 실시간 배송 조회가 가능한 시스템, 물건 재고 관리 프로그램을 제작하는 목적의 프로젝트 입니다.

[🎞메디 익스프레스 웹 페이지 샘플은 여기를 참고해주세요!🎞](https://gwanhoyun.github.io/mediExpress/)

**웹 페이지 샘플은 다음과 같은 기능을 체험할 수 있습니다.**

+ 메인페이지 - 마이페이지 - 구매 내역
  
![p3 menu](https://github.com/user-attachments/assets/a3aca647-8f7a-43e2-af95-bc89ddb80966)

+ 드롭다운 전체 메뉴 - 의료소모품 - 주사기/주사침 - 일회용 주사기 구매 탭 - 바로 구매 - 쿠폰/포인트 & 주문하기

![p3 menu2](https://github.com/user-attachments/assets/a8cee4c3-d9e5-4d78-9fdc-b88908a486f1)

+ 의료소모품 메뉴 - 주사기/주사침 - 일회용 주사기 구매 탭 - 바로 구매 - 쿠폰/포인트 & 주문하기

![order](https://github.com/user-attachments/assets/e56cd25a-b8a8-410b-9cab-c11ba34ee56f)

   
💀실제 구현한 기능과 차이가 있을 수 있습니다.💀

- - - - -
## 👨‍💻MySQL - ERD
![image](https://github.com/user-attachments/assets/7ba9ec1d-4177-44f0-8eba-9106c3ec5ac8)
- - - - -
## 🛠File tree

```

PROJECT3
│  .classpath
│  .project
│  pom.xml
│  README.md
│
├─.settings
│      org.eclipse.core.resources.prefs
│      org.eclipse.jdt.core.prefs
│      org.eclipse.m2e.core.prefs
│      org.eclipse.wst.common.component
│      org.eclipse.wst.common.project.facet.core.xml
│      org.eclipse.wst.validation.prefs
│      org.springframework.ide.eclipse.beans.core.prefs
│      org.springframework.ide.eclipse.core.prefs
│
├─src
│  ├─main
│  │  ├─java
│  │  │  └─org
│  │  │      └─hj
│  │  │          ├─controller
│  │  │          │      BuyController.java
│  │  │          │      DeliveryController.java
│  │  │          │      HomeController.java
│  │  │          │      LoginController.java
│  │  │          │      MeBoardController.java
│  │  │          │      Medi_BoardController.java
│  │  │          │      ProductOrderPageController.java
│  │  │          │      Product_BuyPageController.java
│  │  │          │      Product_DetailController.java
│  │  │          │      Product_orderPageController.java
│  │  │          │
│  │  │          ├─mapper
│  │  │          │      BuyMapper.java
│  │  │          │      DeliveryMapper.java
│  │  │          │      LoginMapper.java
│  │  │          │      MeBoardMapper.java
│  │  │          │      Medi_BoardMapper.java
│  │  │          │      Product_BuyPageMapper.java
│  │  │          │      Product_DetailMapper.java
│  │  │          │      Product_indexMapper.java
│  │  │          │      Product_OrderPageMapper.java
│  │  │          │
│  │  │          ├─model
│  │  │          │      BuyVO.java
│  │  │          │      DeliTracVO.java
│  │  │          │      DeliveryVO.java
│  │  │          │      LoginVO.java
│  │  │          │      MeBoardVO.java
│  │  │          │      Medi_BoardVO.java
│  │  │          │      Product_BuypageVO.java
│  │  │          │      Product_DetailVO.java
│  │  │          │      Product_indexVO.java
│  │  │          │      Product_OrderPageVO.java
│  │  │          │
│  │  │          └─service
│  │  │                  BuyService.java
│  │  │                  BuyServiceImpl.java
│  │  │                  DeliveryService.java
│  │  │                  DeliveryServicempl.java
│  │  │                  LoginService.java
│  │  │                  LoginServiceImpl.java
│  │  │                  MeBoardService.java
│  │  │                  MeBoardServiceImpl.java
│  │  │                  Medi_BoardService.java
│  │  │                  Medi_BoardServiceImpl.java
│  │  │                  Product_BuyPageService.java
│  │  │                  Product_BuyPageServiceImpl.java
│  │  │                  Product_DetailService.java
│  │  │                  Product_DetailServiceImpl.java
│  │  │                  Product_indexService.java
│  │  │                  Product_indexServiceImpl.java
│  │  │                  Product_OrderPageService.java
│  │  │                  Product_OrderPageServiceImpl.java
│  │  │
│  │  ├─resources
│  │  │  │  log4j.xml
│  │  │  │
│  │  │  └─org
│  │  │      └─hj
│  │  │          └─mapper
│  │  │                  BuyMapper.xml
│  │  │                  LoginMapper.xml
│  │  │                  MeBoardMapper.xml
│  │  │                  Medi_BoardMapper.xml
│  │  │                  Product_BuyPageMapper.xml
│  │  │                  Product_DetailMapper.xml
│  │  │                  Product_indexMapper.xml
│  │  │                  Product_OrderPageMapper.xml
│  │  │
│  │  └─webapp
│  │      ├─resources
│  │      │  ├─css
│  │      │  │      index.css
│  │      │  │      mypage.css
│  │      │  │      ProductOrderpage.css
│  │      │  │      product_BuyPage.css
│  │      │  │      Product_detail.css
│  │      │  │      Product_orderEndPage.css
│  │      │  │      project3_header_footer.css
│  │      │  │      shop_login.css
│  │      │  │
│  │      │  ├─img
│  │      │  │      101.jpg
│  │      │  │      102.jpg
│  │      │  │      103.jpg
│  │      │  │      104.jpg
│  │      │  │      105.jpg
│  │      │  │      106.jpg
│  │      │  │      107.jpg
│  │      │  │      108.jpg
│  │      │  │      109.jpg
│  │      │  │      110.jpg
│  │      │  │      111.jpg
│  │      │  │      112.jpg
│  │      │  │      113.jpg
│  │      │  │      114.jpg
│  │      │  │      115.jpg
│  │      │  │      116.jpg
│  │      │  │      ad_banner.png
│  │      │  │      all_menu_icon.png
│  │      │  │      banner1.png
│  │      │  │      banner2.png
│  │      │  │      banner3.png
│  │      │  │      banner4.png
│  │      │  │      banner_event1.gif
│  │      │  │      banner_event2.png
│  │      │  │      banner_event3.png
│  │      │  │      banner_event4.png
│  │      │  │      banner_event5.png
│  │      │  │      benefit1.png
│  │      │  │      benefit2.png
│  │      │  │      benefit3.png
│  │      │  │      benefit4.png
│  │      │  │      imgLoading.png
│  │      │  │      logo.png
│  │      │  │      next-icon-black.png
│  │      │  │      notice.png
│  │      │  │      pexels-pixabay-40568.jpg
│  │      │  │      prev-icon-black.png
│  │      │  │      search_icon.png
│  │      │  │      titleIcon.png
│  │      │  │
│  │      │  └─js
│  │      │          index.js
│  │      │          medi_Product.js
│  │      │          mypage.js
│  │      │          product_BuyPage.js
│  │      │          Product_detail.js
│  │      │          Product_OrderPage.js
│  │      │          project3_footer_components.js
│  │      │          project3_header_components.js
│  │      │          project3_header_footer.js
│  │      │
│  │      └─WEB-INF
│  │          │  web.xml
│  │          │
│  │          ├─spring
│  │          │  │  root-context.xml
│  │          │  │
│  │          │  └─appServlet
│  │          │          servlet-context.xml
│  │          │
│  │          └─views
│  │              │  boardDetail.jsp
│  │              │  index.jsp
│  │              │  list.jsp
│  │              │  loginco.jsp
│  │              │  mediProduct.jsp
│  │              │  product_BuyPage.jsp
│  │              │  product_Detail.jsp
│  │              │  Product_orderEndPage.jsp
│  │              │  Product_OrderPage.jsp
│  │              │  shop_login.jsp
│  │              │  ss.jsp
│  │              │  Testfile.jsp
│  │              │
│  │              ├─DELIVERY
│  │              │      DeliveryInfo.jsp
│  │              │      Fordelivery.jsp
│  │              │
│  │              └─lib
│  │                      json-simple-1.1.1.jar
│  │                      mysql-connector-j-8.4.0.jar
│  │                      taglibs-standard-compat-1.2.5.jar
│  │                      taglibs-standard-impl-1.2.5.jar
│  │                      taglibs-standard-jstlel-1.2.5.jar
│  │                      taglibs-standard-spec-1.2.5.jar
│  │
│  └─test
│      ├─java
│      │  └─org
│      │      └─hj
│      │          └─dbtest
│      │                  DBCPTest.java
│      │                  JDBC.java
│      │                  MyBatisTest.java
│      │
│      └─resources
│              log4j.xml
│
└─target
    ├─classes
    │  │  log4j.xml
    │  │
    │  └─org
    │      └─hj
    │          ├─controller
    │          │      BuyController.class
    │          │      DeliveryController.class
    │          │      HomeController.class
    │          │      LoginController.class
    │          │      MeBoardController.class
    │          │      Medi_BoardController.class
    │          │      ProductOrderPageController.class
    │          │      Product_BuyPageController.class
    │          │      Product_DetailController.class
    │          │      Product_orderPageController.class
    │          │
    │          ├─mapper
    │          │      BuyMapper.class
    │          │      BuyMapper.xml
    │          │      DeliveryMapper.class
    │          │      LoginMapper.class
    │          │      LoginMapper.xml
    │          │      MeBoardMapper.class
    │          │      MeBoardMapper.xml
    │          │      Medi_BoardMapper.class
    │          │      Medi_BoardMapper.xml
    │          │      Product_BuyPageMapper.class
    │          │      Product_BuyPageMapper.xml
    │          │      Product_DetailMapper.class
    │          │      Product_DetailMapper.xml
    │          │      Product_indexMapper.class
    │          │      Product_indexMapper.xml
    │          │      Product_OrderPageMapper.class
    │          │      Product_OrderPageMapper.xml
    │          │
    │          ├─model
    │          │      BuyVO.class
    │          │      DeliTracVO.class
    │          │      DeliveryVO.class
    │          │      LoginVO.class
    │          │      MeBoardVO.class
    │          │      Medi_BoardVO.class
    │          │      Product_BuypageVO.class
    │          │      Product_DetailVO.class
    │          │      Product_indexVO.class
    │          │      Product_OrderPageVO.class
    │          │
    │          └─service
    │                  BuyService.class
    │                  BuyServiceImpl.class
    │                  DeliveryService.class
    │                  DeliveryServicempl.class
    │                  LoginService.class
    │                  LoginServiceImpl.class
    │                  MeBoardService.class
    │                  MeBoardServiceImpl.class
    │                  Medi_BoardService.class
    │                  Medi_BoardServiceImpl.class
    │                  Product_BuyPageService.class
    │                  Product_BuyPageServiceImpl.class
    │                  Product_DetailService.class
    │                  Product_DetailServiceImpl.class
    │                  Product_indexService.class
    │                  Product_indexServiceImpl.class
    │                  Product_OrderPageService.class
    │                  Product_OrderPageServiceImpl.class
    │
    ├─m2e-wtp
    │  └─web-resources
    │      └─META-INF
    │          │  MANIFEST.MF
    │          │
    │          └─maven
    │              └─org.hj
    │                  └─controller
    │                          pom.properties
    │                          pom.xml
    │
    └─test-classes
        │  log4j.xml
        │
        └─org
            └─hj
                └─dbtest
                        DBCPTest.class
                        JDBC.class
                        MyBatisTest.class

```
- - - - -

## 프로젝트 개요

  + 🕐2024년 7월 12일 ~ 2024년 7월 31일
  + 🎨[메인 페이지 디자인, UI UX 구상, 각종 배너 제작(figma)](https://www.figma.com/proto/ABf8mOFiQsLmuNjab4TIw7/Untitled?node-id=0-1&t=uRDSQF3MbhAuHNfd-1)
  + 👨‍💻html, css, javascript를 이용한 각종 페이지 마크업
  + 👨‍💻물건 발주 요청, 실시간 배송 조회 시스템, 의료 소모품 재고 현황 확인 및 관리 시스템 구현
  
- - - - -
## 개발 환경

  + window 10
  + eclipse Photon Release (4.8.0)
  + Visual Studio Code 1.90.2
  + MySQL 8.0 CE
  + JSP (Java – 1.8.0_351)

- - - - -

## 프로젝트 기획

*실제 의료 프로세스에 대한 지식이 부족함. 임의로 프로세스를 예상하여 구현함을 밝힘*

  + **실제와 유사한 형태의 가상 페이지 구현**
   
      + 실제 운영 중인 각종 의료 소모품 판매처를 참고해 페이지 디자인을 진행함.

      + 배너 등 이미지가 필요할 경우 직접 제작(photoshop, illustrator, figma) *상품 이미지는 제외*

      + javascript로 코드 유지 / 보수를 쉽도록 html에 요소가 추가 될 경우 스크립트 수정 없이 자동으로 적용 되도록 함.

      + header, footer, 사이드 편의 기능와 같은 재사용성이 높은 요소를 웹 컴포넌트(React와 유사한 컴포넌트화)로 구현하여 재사용성을 높힘(component폴더 참고).

      + DB에 저장된 회원 정보를 바탕으로 로그인 가능하도록 구현
   
  + **상품 구매**
   
      + 구매 페이지에 상품 옵션을 선택하고 삭제할 수 있도록 구현함.

      + 상품 이미지가 존재하지 않을 경우 '이미지 준비중.png'파일이 출력되도록 함.

      + 구매를 요청할 상품을 확인 할 수 있도록 구현함.

      + 사용자가 담은 상품을 기준으로 상품 금액을 계산하도록 스크립트 작성.

      + 포인트, 쿠폰 선택을 할 시, 사용자가 지불할 총 금액에 반영되도록 스크립트 작성.[(상품금액-사용할 포인트)*(할인 적용 비) = 지불 금액]

      + 상품 사진, 상품 번호, 상품명, 상품 가격은 DB의 데이터를 기반으로 출력 됨.

      + *빠진내용 있으면 추가해주세용*
      
  + **주문 내역**
   
      + 마이페이지를 통해 확인 가능.

      + 주문한 상품의 배송 추적, 구매 명세서를 확인 할 수 있음.

      + *내용 추가해주세용*
      
  + **택배기사 배송 관련**
       
      + 카카오맵 API를 기반으로 임의 위치에 배송 Hub와 배송지를 특정함.

      + 좌표를 DB에 저장함.

      + *내용 추가해주세용*

    
- - - - -

## 구현 예시 (웹 디자인, 프론트엔드)

[프론트엔드 구동 예시는 여기를 확인해주세요😊](https://gwanhoyun.github.io/mediExpress/)

[소스코드는 여기서 더 쉽게 확인 할 수 있습니다👨‍💻](https://github.com/GwanhoYun/mediExpress)

[figma 웹디자인은 여기에서 확인해주세요🎨](https://www.figma.com/proto/ABf8mOFiQsLmuNjab4TIw7/Untitled?node-id=0-1&t=uRDSQF3MbhAuHNfd-1)

  + **웹 디자인**
  
    + 1440px 기준 12colums, gutter 20px, margin 60px 기준 적응형 웹으로 디자인 함.

    + 배너 이미지는 직접 제작 (글로벌메디컬대학병원 배너는 이미지 가공함)

   ![p3Figma](https://github.com/user-attachments/assets/462b7270-3c4d-490b-937d-94b1d49b45a7)

    
  + **메인 페이지 (index.html)**

    + for 반복문을 사용해 이미지 슬라이드(캐러셀)에 이미지 추가를 위한 li 태그 추가 시, 스크립트 수정 없이도 작동 할 수 있도록 구현함.

    ```
    
    const slides = document.querySelectorAll(".slider-container li");
    const lastSlide = slides.length; // 전체 슬라이드 개수를 계산합니다.
    const slideCount2Container = document.querySelector(".slide_count_2"); // 페이지네이션 도트 관련된 요소입니다.
    
    for (let i = 0; i < lastSlide; i++) {
        const createSlideCount2 = document.createElement('div'); // 페이지네이션 도트 태그(<div>)를 생성합니다.
        createSlideCount2.className = 'count_' + (i + 1); // 페이지네이션 도트 div의 className을 지정합니다.
        slideCount2Container.appendChild(createSlideCount2); // 위에서 생성한 요소를 추가합니다. 예: <div class="count_[index]">
        createSlideCount2.addEventListener('click', selectSlide); // click 이벤트를 추가합니다.
    }
    
    ```
        
    + 페이지네이션 도트(인디케이터)를 통해 수동으로 원하는 배너를 출력할 수 있도록 함.
    
    ```
    
    let showSlideIndex = 1;
    
    function selectSlide(event) {
        const className = event.target.className; // 예: 'count_1'
        const slideIndex = parseInt(className.split('_')[1]); // '1'을 추출하여 숫자로 변환합니다.
        showSlideIndex = slideIndex; // showSlideIndex를 현재 슬라이드 인덱스로 설정합니다.
        showSlide(slideIndex); // 슬라이드를 표시합니다.
        resetAutoSlide(); // clearInterval로 "autoSlideInterval"의 setInterval(nextSlide, 5000)을 초기화하고 다시 생성합니다.
    }                    // 캐러셀 슬라이드를 수동으로 넘길 때 5초 쿨타임을 초기화하여 슬라이드가 두 번 넘어가지 않도록 합니다.
        
    ```
    
    + clearInterval()함수를 사용해 배너 정지/시작 기능
    
    ```
    
    function resetAutoSlide() { // 5초마다 넘기는 setInterval을 초기화합니다.
        clearInterval(autoSlideInterval);
        autoSlideInterval = setInterval(nextSlide, 5000);
        if (!slideTrigger) { // 슬라이드를 정지한 상태로 수동 이동하면 정지가 풀리도록 합니다.
            slideTrigger = true; // 재생 상태로 변경합니다.
            document.querySelector('.stop_slide_btn div:nth-child(1)').style.display = 'block'; // 정지 아이콘을 재생 아이콘으로 변경합니다.
            document.querySelector('.stop_slide_btn div:nth-child(2)').style.display = 'block';
            document.querySelector('.stop_slide_btn div:nth-child(3)').style.display = 'none';
        }
    }
    
    function slideOnOff() {
        if (slideTrigger) {
            clearInterval(autoSlideInterval); // 자동 슬라이드를 끕니다.
            slideTrigger = false; // 자동 슬라이드 상태를 변경합니다.
            document.querySelector('.stop_slide_btn div:nth-child(1)').style.display = 'none'; // 재생 아이콘을 정지 아이콘으로 변경합니다.
            document.querySelector('.stop_slide_btn div:nth-child(2)').style.display = 'none';
            document.querySelector('.stop_slide_btn div:nth-child(3)').style.display = 'block';
        } else {
            resetAutoSlide();
            slideTrigger = true;
            document.querySelector('.stop_slide_btn div:nth-child(1)').style.display = 'block';
            document.querySelector('.stop_slide_btn div:nth-child(2)').style.display = 'block';
            document.querySelector('.stop_slide_btn div:nth-child(3)').style.display = 'none';
        }
    }
    
    ```
       
    + 재사용 가능성이 높은 부분은 컴포넌트화하여 재사용성을 높힘.(component폴더 참고)


+ **상품 페이지 (view_item.html)**

+ 상품 옵션을 선택, 삭제하고 중복된 옵션을 선택할 경우 상품 구매 개수가 늘어나도록 함.

```

function listOnOff(){
    const itemList = document.querySelector('.option_list');
    itemList.style.display = (itemList.style.display === "none" || itemList.style.display === "") ? "block" : "none";
}

let cart = [];
let totalPrice = 0;

function selectOption(option) {
    const itemName = option.getAttribute('data-name');
    const itemPrice = parseInt(option.getAttribute('data-price'), 10);

    // 중복 아이템 확인
    const existingItem = cart.find(item => item.name === itemName);
    if (existingItem) {
        // 수량 증가
        existingItem.count += 1;
        // 총 가격 갱신
        totalPrice += itemPrice;
    } else {
        // 새 아이템 추가
        cart.push({
            name: itemName,
            price: itemPrice,
            count: 1
        });
        // 총 가격 갱신
        totalPrice += itemPrice;
    }

    // 옵션 목록 토글
    listOnOff();
    
    // 장바구니와 총 가격 업데이트
    updateCart();
    updateTotalPrice();
}

function updateCart() {
    const cartContainer = document.querySelector('.cart_container');
    cartContainer.innerHTML = '';

    cart.forEach((item, index) => {
        const itemDiv = document.createElement('div');
        itemDiv.classList.add('cart_item');
        itemDiv.innerHTML = `
            <div>
                <p>${item.name}</p>
                <label for="item_count_${index}"></label>
            </div>
            <div>
                <input type="number" id="item_count_${index}" value="${item.count}" min="1" max="99" onchange="updateItemCount(${index}, this.value)">
            </div>
            <div>
                <p>${item.price * item.count}원</p>
                <button onclick="removeItem(${index})">
                    <div></div>
                    <div></div>
                </button>
            </div>
        `;
        cartContainer.appendChild(itemDiv);
    });
}

function updateItemCount(index, newCount) {
    const item = cart[index];
    const oldCount = item.count;
    item.count = parseInt(newCount, 10);

    // 총 가격 갱신
    totalPrice += (item.count - oldCount) * item.price;

    // 장바구니와 총 가격 업데이트
    updateCart();
    updateTotalPrice();
}

function removeItem(index) {
    const item = cart[index];
    totalPrice -= item.price * item.count;
    cart.splice(index, 1);

    // 장바구니와 총 가격 업데이트
    updateCart();
    updateTotalPrice();
}

function updateTotalPrice() {
    const totalPriceElement = document.getElementById('total_price');
    totalPriceElement.textContent = totalPrice;
}

document.addEventListener('click', function(event) {
    const listOnOff = document.querySelector('.option_list');
    const selectBtn = document.querySelector('.select_btn');

    if (listOnOff.style.display === 'block' && !listOnOff.contains(event.target) && !selectBtn.contains(event.target)) {
        listOnOff.style.display = 'none';
    }
});

```
  + **주문 페이지 (order_page.html)**

    + 주문 정보의 가격으로 상품 금액이 계산되도록 함.

    + 쿠폰/ 포인트가 총 결제 예상금액에 반영됨.((상품 금액-사용 포인트)*쿠폰 할인률=지불 금액)

    + 포인트는 총 결제 예상금액의 1% 만큼 계산되도록 함.
```
    
// 숫자에 천 단위 구분 기호를 추가하는 함수
function formatNumber(number) {
    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

// 포인트와 총 금액을 비교하고 오류 메시지를 표시하는 함수
function validatePoints() {
    const totalItemPriceElement = document.querySelector('.total_item_price');
    const totalItemPrice = parseFloat(totalItemPriceElement.textContent.replace(/,/g, '')) || 0;
    
    const pointInput = document.querySelector('.point_input');
    const inputPoint = parseFloat(pointInput.value) || 0;
    
    const errorMessage = document.querySelector('.error_message');

    if (inputPoint > totalItemPrice) {
        // 포인트가 총 금액을 초과하는 경우
        errorMessage.style.display = 'block';
        pointInput.value = totalItemPrice; // 입력값을 총 금액으로 설정
    } else {
        // 포인트가 총 금액을 초과하지 않는 경우
        errorMessage.style.display = 'none';
    }

    // 포인트가 초과된 경우 자동으로 포인트 재계산
    updatePricesAndPoints();
}

// 포인트 입력 필드의 값이 변경될 때마다 검증
document.querySelector('.point_input').addEventListener('input', function() {
    // 음수 입력 방지
    this.value = this.value.replace(/[^0-9]/g, ''); // 숫자 외의 모든 문자 제거
    validatePoints();
});

// 쿠폰 선택 시 호출되는 함수
document.querySelector('.select_coupon').addEventListener('change', function() {
    updatePricesAndPoints();
});

// 페이지 로드 시 총 물건 가격, 할인, 결제 금액 및 적립 포인트를 초기화합니다
document.addEventListener("DOMContentLoaded", function () {
    let sum = 0;

    // index는 1부터 시작하므로 1부터 시작하는 루프를 작성
    for (let i = 1; ; i++) {
        // price_[index] 요소를 찾음
        const priceElement = document.querySelector(`.price_${i}`);
        if (!priceElement) break; // 더 이상 요소가 없으면 루프를 종료

        // saving_point_[index] 요소를 찾음
        const savingPointElement = document.querySelector(`.saving_point_${i}`);
        if (!savingPointElement) break;

        // price 값을 가져와서 총 가격을 계산
        const priceValue = parseFloat(priceElement.textContent.replace(/,/g, ''));
        if (!isNaN(priceValue)) {
            sum += priceValue;
        }

        // 포인트 계산 (가격의 1%로 가정)
        const savingPointValue = Math.ceil(priceValue / 100);

        // 총 물건 가격 요소에 총 가격을 설정
        const totalItemPriceElement = document.querySelector('.total_item_price');
        if (totalItemPriceElement) {
            totalItemPriceElement.textContent = formatNumber(sum);
        }

        // saving_point 요소에 포인트 값을 설정
        savingPointElement.textContent = formatNumber(savingPointValue);
    }

    // 할인 가격 및 결제 금액을 계산 및 업데이트
    updatePricesAndPoints();
});

// 가격과 포인트를 업데이트하는 함수
function updatePricesAndPoints() {
    // 총 물건 가격을 숫자로 가져옵니다
    const totalItemPriceText = document.querySelector('.total_item_price').textContent;
    const totalItemPrice = parseFloat(totalItemPriceText.replace(/,/g, '')) || 0;

    // 쿠폰 선택 요소를 가져오고 선택된 값을 숫자로 변환합니다
    const selectedCouponElement = document.querySelector('.select_coupon');
    const selectedCouponValue = parseFloat(selectedCouponElement.value) || 0;

    // 사용자의 포인트를 가져오고 숫자로 변환합니다
    const inputPoint = parseFloat(document.querySelector('.point_input').value) || 0;

    // 포인트 할인 금액을 설정합니다
    const usedPointDiscountPriceElement = document.querySelector('.used_point_discount_price');
    const usedPointDiscountPrice = Math.min(inputPoint, totalItemPrice);
    if (usedPointDiscountPriceElement) {
        usedPointDiscountPriceElement.textContent = formatNumber(usedPointDiscountPrice.toFixed(0));
    }

    // 쿠폰 할인 금액을 계산합니다
    const discountPriceElement = document.querySelector('.discount_price');
    let couponDiscountPrice = 0;

    if (selectedCouponValue > 0) {
        // 쿠폰이 선택된 경우: (총 가격 - 포인트) * 쿠폰 할인율
        couponDiscountPrice = (totalItemPrice - usedPointDiscountPrice) * selectedCouponValue;
    }
    if (discountPriceElement) {
        discountPriceElement.textContent = formatNumber(couponDiscountPrice.toFixed(0));
    }

    // 결제 금액 계산 및 업데이트
    const paymentAmountElement = document.querySelector('.total_price');
    const discountAmountValue = parseFloat(discountPriceElement.textContent.replace(/,/g, '')) || 0;
    const finalPrice = totalItemPrice - usedPointDiscountPrice - discountAmountValue;
    if (paymentAmountElement) {
        paymentAmountElement.textContent = formatNumber(finalPrice.toFixed(0));
    }

    // 총 적립 포인트 계산 및 업데이트
    const totalSavingPointElement = document.querySelector('.total_saving_point');
    if (totalSavingPointElement) {
        const savingPointValue = (finalPrice * 0.01).toFixed(0); // 결제 금액의 1%를 적립 포인트로 계산
        totalSavingPointElement.textContent = formatNumber(savingPointValue);
    }
}

```

  + **구매 완료 페이지 (buy.html)**

    + 로딩 후 구매가 완료되는 것처럼 보이게 함.

![p3 buy1](https://github.com/user-attachments/assets/a336a5aa-0eeb-4bd8-8e99-1d2cb7cd4178)
![p3 buy2](https://github.com/user-attachments/assets/ba5df46e-16dc-4058-9fb0-fa7855acc62e)


    + 이미지 파일 없이 div요소로 아이콘 제작.

    + keyframes로 애니메이션 추가.

- - - - -
## 구현 예시 (백엔드)

**장종민** 

- - - - -
## 구현 예시 (백엔드)

**주진성** 


- - - - -
  ## 구현 예시 (백엔드)

**강동현** 


- - - - - 

- - - - -

## 🤸‍♂️팀원 소개

  **윤관호(프로젝트 팀장)**
  
    + UX, UI, 웹페이지 디자인 담당
    + HTML, CSS, JAVASCRIPT 프론트엔드 총괄
    + 디지털 리소스 제작, 관리
      
  **장종민**
  
    + 데이터 베이스 설계 및 최적화 담당
    + 로그인, 소셜 로그인 기능 구현
      
  **강동현**
  
    + 데이터 베이스 설계 및 최적화 담당
    + 회원가입 기능 구현
    + 아이디 / 비밀번호 찾기 구현
    + ppt 제작 및 발표
 
  **주진성**
  
    + 증명서 출력, 자동화 기능 구현
    + 차트 페이지 구현
    
