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

+ 장바구니 메뉴
  
![cart](https://github.com/user-attachments/assets/41cbc4c1-5129-4b17-b483-ccee59cfd211)

   
💀실제 구현한 기능과 차이가 있을 수 있습니다.💀

- - - - -
## 👨‍💻MySQL - ERD
![image](https://github.com/user-attachments/assets/2f0146c0-3eb1-482a-856c-2ff2f706490c)

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

      + javascript로 코드 유지 / 보수가 쉽도록 html에 요소가 추가 될 경우 스크립트 수정 없이 자동으로 적용 되도록 함.

      + header, footer, 사이드 편의 기능와 같은 재사용성이 높은 요소를 웹 컴포넌트(React와 유사한 컴포넌트화)로 구현하여 재사용성을 높힘(component폴더 참고).

      + DB에 저장된 회원 정보를 바탕으로 로그인 가능하도록 구현
   
  + **상품 구매**
   
      + 구매 페이지에 상품 옵션을 선택하고 삭제할 수 있도록 구현함.

      + 상품 이미지가 존재하지 않을 경우 '이미지 준비중.png'파일이 출력되도록 함.

      + 구매를 요청할 상품을 확인 할 수 있도록 구현함.

      + 사용자가 담은 상품을 기준으로 상품 금액을 계산하도록 스크립트 작성.

      + 포인트, 쿠폰 선택을 할 시, 사용자가 지불할 총 금액에 반영되도록 스크립트 작성.[(상품금액-사용할 포인트)*(할인 적용 비) = 지불 금액]

      + 상품 사진, 상품 번호, 상품명, 상품 가격은 DB의 데이터를 기반으로 출력 됨.
        

      
  + **주문 내역**
   
      + 마이페이지를 통해 확인 가능.

      + 주문한 상품의 배송 추적, 구매 명세서를 확인 할 수 있음.

      
  + **택배기사 배송 관련**
       
      + 카카오맵 API를 기반으로 임의 위치에 배송 Hub와 배송지를 특정함.

      + 좌표를 DB에 저장함.

    
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

    + 이미지 파일 없이 div요소로 아이콘 제작.

    + keyframes로 애니메이션 추가.

    ![p3 buy1](https://github.com/user-attachments/assets/a336a5aa-0eeb-4bd8-8e99-1d2cb7cd4178)
    ![p3 buy2](https://github.com/user-attachments/assets/ba5df46e-16dc-4058-9fb0-fa7855acc62e)

- - - - -
## 구현 예시 (백엔드)

**장종민** 

- - - - -
## 구현 예시 (백엔드)

**주진성** 

+ **택배기사 전용 페이지**
  + 배송할 내용의 데이터를 가져와 리스트화
  + 배송 상태는 데이터베이스의 d_complete(배달 완료 여부)의 값이 null이면 미승인, false면 배송 시작 버튼, true일때는 배송완료가 출력.
  + 배송 시작 버튼을 누르면 해당 송장번호의 데이터를 가지고 배송 시작 페이지 이동

    d_complete 값을 가져오는 모델 boolean타입이 아닌 Boolean 타입으로 가져온다. (boolean타입은 null값 허용x)
    https://github.com/GwanhoYun/project_3_MediExpress/blob/a8c2281561c6188f2cc7e3eeb34ddc8d35568d85/src/main/java/org/hj/model/DeliveryVO.java#L1-L12
    
    배송 상태 출력 jsp 코드
    https://github.com/GwanhoYun/project_3_MediExpress/blob/fceb3bbb37b8a8359cf2e547fac15c422dfdd1e6/src/main/webapp/WEB-INF/views/DELIVERY/DeliveryInfo.jsp#L109-L118
 
     **택배기사 전용 페이지 예시이미지**
    ![배달 리스트 페이지](https://github.com/user-attachments/assets/b4dd7498-dfdc-453d-99e5-e621f019935e)

    
+ **배송시작 페이지**
  + 송장번호를 데이터 베이스에 가져가서 해당 송장번호의 배송 데이터를 검색(select) , 수주 번호 주문자ID 목적지(주소)를 가져와서 페이지에 출력
  + 카카오API 라이브러리를 활용해 배송을 도와주는 맵 생성. 임의로 만든 공영HUB 폴리곤 영역, 목적지의 좌표를 검색하고 좌표 검색결과를 지도 위에 마커로 표시, 해당 마커 주위에 작은 폴리곤 영역을 자동으로 생성
  + 배송 시작을 누르면 HTML5 GeoLocation 를 활용해 실시간으로 접속 위치를 마커로 표시하고 택배기사 위치확인을 위해 해당 마커의 좌표를 배달GPS 데이터베이스에 최신화(update)함 
  + 배송 시작 버튼을 누르거나 택배기사의 위치(마커)가 중간지점hub나 목적지에 도착하면 ajax를 사용해 배송 추적 데이터베이스에 배송을 시작한 시간, 허브 도착시간, 허브 이름 , 허브에서 출발 시간, 목적지 도착시간을 전송

     카카오API 맵 생성, 공용hub, 목적지 주소 폴리곤 영역 생성
     https://github.com/GwanhoYun/project_3_MediExpress/blob/043fd27d5c5c06e662b3538e78936258c275f7ee/src/main/webapp/WEB-INF/views/DELIVERY/Fordelivery.jsp#L129-L250
    
     배송 시작 버튼을 누르면 접속 위치를 실시간으로 표시
     https://github.com/GwanhoYun/project_3_MediExpress/blob/043fd27d5c5c06e662b3538e78936258c275f7ee/src/main/webapp/WEB-INF/views/DELIVERY/Fordelivery.jsp#L257-L328
    
     배송을 시작한 시간, 허브 도착시간, 허브 이름 , 허브에서 출발 시간, 목적지 도착시간을 전송
     https://github.com/GwanhoYun/project_3_MediExpress/blob/043fd27d5c5c06e662b3538e78936258c275f7ee/src/main/webapp/WEB-INF/views/DELIVERY/Fordelivery.jsp#L406-L501
     https://github.com/GwanhoYun/project_3_MediExpress/blob/043fd27d5c5c06e662b3538e78936258c275f7ee/src/main/java/org/hj/controller/DeliveryController.java#L75-L122
 
     **배송시작 페이지 예시이미지**
     ![출발](https://github.com/user-attachments/assets/ebc6087b-1eea-474c-96e5-2da724489fc4)
     ![허브](https://github.com/user-attachments/assets/f96ab3ee-10cb-494d-8ab5-b52124cf7c32)
     ![배달 완](https://github.com/user-attachments/assets/c3b79f19-f0da-42c2-91e2-6b687f3e1b5c)


+ **주문 상세보기 페이지 - 배송 추적현황, 실시간 위치확인 기능**
  + 출발시간, 도착시간 등 해당 주문의 배송 현황을 확인 가능 
  + 택배기사의 좌표값을 가져와 실시간 위치 확인 가능

     ajax를 사용해 해당 송장 번호의 출발, 도착 기록의 데이터를 가져와서 배송 현황 출력
     https://github.com/GwanhoYun/project_3_MediExpress/blob/26801f48c981862afd961f093d6a6537d20242e6/src/main/webapp/WEB-INF/views/boardDetail.jsp#L180-L247
     https://github.com/GwanhoYun/project_3_MediExpress/blob/26801f48c981862afd961f093d6a6537d20242e6/src/main/java/org/hj/controller/DeliveryController.java#L45-L53

     도착 기록이없고 배송중인 상태라면, 택배기사의 좌표값을 가져와 실시간 위치 확인 가능
     https://github.com/GwanhoYun/project_3_MediExpress/blob/26801f48c981862afd961f093d6a6537d20242e6/src/main/webapp/WEB-INF/views/boardDetail.jsp#L249-L310
     https://github.com/GwanhoYun/project_3_MediExpress/blob/26801f48c981862afd961f093d6a6537d20242e6/src/main/java/org/hj/controller/DeliveryController.java#L55-L63
 
    **주문 상세보기 페이지 예시이미지**
     ![배송 현황 추적](https://github.com/user-attachments/assets/c2bdeb9e-8516-4991-8c5f-304e6122278d)
     ![택배기사 실시간 위치 확인](https://github.com/user-attachments/assets/e67de507-f65e-4a6b-ab33-cd7c6b662b57)

          

- - - - -
  ## 구현 예시

🌹 강동현 🌹
   **병원 물류 페이지**
https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/java/org/hj/controller/Medi_BoardController.java#L30-L35
물류 db에서 값을 들고 오기 위한 컨트롤러 리스트로 표현하기 위해 List 타입의 변수로 받음
![image](https://github.com/user-attachments/assets/c56045c7-917d-4065-9a43-8d5c17455296)

    🌹병원 물류 관리 - 삭제🌹
     https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/webapp/resources/js/medi_Product.js#L2-L38
     삭제 버튼을 누르면 onclick 으로 인하여 toggleDeleteMode() 이름의 함수 실행
     -> 이 함수는 수정이라는 행을 찾아서 만약 "수정" 이라는 텍스트를 띄우고 있다면 "삭제" 라는 텍스트로 변경 후 삭제모드로 전환
      삭제는 ajax를 이용하여 성공 및 삭제 여부를 판단 -> 삭제모드에서 한번 더 버튼을 누르게 되면 수정모드로 변경
       
       🌹병원 물류 관리 - 리스트 추가🌹
https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/java/org/hj/controller/Medi_BoardController.java#L53-L66
       추가된 리스트 함수 저장 컨트롤러
        🌹병원 물류 관리 - 리스트 수정🌹
 버튼을 누르면 버튼을 누른 행에 대해서 모든 text창을 input 창으로 변경. 이때 날짜를 기입하는 날짜 칸은 date로 수정, 수정 버튼은 저장버튼으로 변경
  https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/webapp/resources/js/medi_Product.js#L68-L97

 버튼을 눌러 모든 text -> input으로 변경 하였고 저장 버튼을 누르게 되면 Controller에 /saveMediProducts 라는 이름으로 값 전달
https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/webapp/resources/js/medi_Product.js#L131-L159

 saveMediProduct는 try-catch문을 사용하여 값이 옳바르게 이동되면 Service로 값을 보내고 아니면 애러 메세지를 출력함
 https://github.com/GwanhoYun/project_3_MediExpress/blob/7d12b797c8de3a799f992f3785aaf83088a69548/src/main/java/org/hj/controller/Medi_BoardController.java#L53-L67

 값이 Service 문을 타고 Mapper로 이동 하여 SQL문을 활용하여 저장
 https://github.com/GwanhoYun/project_3_MediExpress/blob/7d12b797c8de3a799f992f3785aaf83088a69548/src/main/resources/org/hj/mapper/Medi_BoardMapper.xml#L40-L49
  🌹물품 주문 페이지 🌹
  이미지를 데이터베이스에 저장하여 값을 가져오는건 라즈베리파이에 무리가 있다고 판단 -> 컴퓨터에 저장되어있는 이미지 이름을 제품 번호로 통일 시킨 후 이미지 출력
 또 제품 상세 페이지 이동은 get방식으로 제품 번호를 전송하여 해당 제품이 있는 url에 접근 (이때 제품 각각의 페이지를 제작 한것이 아닌 데이터 베이스에 있는 값들을 url에 맞게 불러오는 형식)
https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/webapp/WEB-INF/views/index.jsp#L314-L324

세션에 아이디 값이 있으면 장바구니로 이동 가능한 함수 실행 만약 세선에 아이디 값이 없으면 애러 표시를 통해 로그인 유도
https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/webapp/WEB-INF/views/product_Detail.jsp#L279-L298
 ![image](https://github.com/user-attachments/assets/0d4700b9-38c7-423e-a70d-2685969bc4d9)
    

 옵션은 제품 상세 페이지에 맞는 제품 코드를 들고와 다른 데이터 베이스에 저장되어있는 추가옵션을 부름
https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/webapp/WEB-INF/views/product_Detail.jsp#L254-L262

만약 세션에 로그인 값이 있으면 선택한 제품,갯수,상세정보 등을 장바구니 페이지로 이동
이때 장바구니는 Product_shoppingBasket이름의 db에 Product_Basket = 0 으로 저장됨
https://github.com/GwanhoYun/project_3_MediExpress/blob/cff23f89576071d1455465af9b75816690029333/src/main/webapp/WEB-INF/views/product_Detail.jsp#L284-L298
이렇게 되면 장바구니를 누르면 값이 나오지만 결제 페이지로 넘어가게 되면 값이 나오지 않음
![image](https://github.com/user-attachments/assets/d12b3809-eb7b-4b3f-8a7e-2da82be25f79)
위 사진은 장바구니 페이지

    

또 장바구니에서 장바구니에 담은 제품들을 결제페이지로 넘기면  Product_Basket = 1 로 변하면서  Product_Basket=1 인 값들을 전부 불러옴
 ![image](https://github.com/user-attachments/assets/b0756ec3-c3d9-482c-b429-d7f3c5604bcb)

이렇게 결제가 완료 되면 orderList라는 공용 db로 값이 넘어가 다른 팀에서 작업 하는 페이지로 결제한 제품들이 넘어가게 됨.
    
- - - - - 

- - - - -

## 🤸‍♂️팀원 소개

  **윤관호(프로젝트 팀장)**
  
    + UX, UI, 웹페이지 디자인 담당
    + HTML, CSS, JAVASCRIPT 프론트엔드 총괄
    + 디지털 리소스 제작, 관리
      
  **장종민**
  
    + 로그인 구현 
    + 공급사 페이지 주문내역, 주문 상세보기 구현
    + 데이터베이스 설계 


      
  **강동현**
  
    + 데이터 베이스 설계 및 최적화
    + 병원 물류 관리 구현 
    + 공급사 페이지 주문 구현

 
  **주진성**
  
    + 실시간 배송GPS 구현 
    + 데이터 베이스 설계 및 최적화
    + 택배기사 전용 페이지 구현
    + 배송 추적기능 구현

    
