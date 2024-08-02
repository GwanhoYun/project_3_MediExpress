<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 내역 상세보기</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	line-height: 1.6;
	background-color: #f9f9f9;
	margin: 0;
	padding: 20px;
	justify-content: center;
	align-items: center;
	min-height: 100vh; /* 뷰포트의 전체 높이를 사용하여 수직 가운데 정렬을 보장합니다 */
}

.container {
	max-width: 800px;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin: 0 auto; /* 수평 가운데 정렬을 위해 margin을 자동으로 설정합니다 */
}

h1 {
	text-align: center;
	margin-bottom: 20px;
}

.order-info, .delivery-info, .product-info, .payment-info {
	margin-bottom: 20px;
}

.order-info h2, .delivery-info h2, .product-info h2, .payment-info h2 {
	font-size: 20px;
	border-bottom: 2px solid #007bff;
	padding-bottom: 5px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 10px;
}

th, td {
	border: 1px solid #ccc;
	padding: 10px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

.status {
	font-weight: bold;
	color: #007bff;
}

.print-button, .review-button, .update-button, .show-map-button{
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 20px;
	cursor: pointer;
	border-radius: 5px;
}

.print-button:hover, .review-button:hover, .update-button:hover, .show-map-button:hover{
	background-color: #0056b3;
}
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=493ebc87b266e867e0070b251a25d928&libraries=services"></script>
</head>
<body>
	<div class="container">
		<h1>구매 내역 상세보기</h1>
		<div class="order-info">
			<h2>주문 정보</h2>
			<table>
				<tbody>
					<tr>
						<th>주문 번호</th>
						<td>${board.o_no}</td>
					</tr>
					<tr>
						<th>회원 ID</th>
						<td>${loginUser.id}</td>
					</tr>
					<tr>
						<th>회원 이름</th>
						<td>${loginUser.name}</td>
					</tr>
					<tr>
						<th>주문 일자</th>
						<td>${board.o_date.year + 1900}-${board.o_date.month + 1}-${board.o_date.date}</td>
					</tr>
				</tbody>
			</table>
		</div>
		
    <div class="delivery-info">
       <h2>배송 조회</h2>
        <table>
        <thead>
            <tr>
                <th>날짜</th>
                <th>배송 진행상황</th>
            </tr>
        </thead>
        <tbody>
            <!-- 배송 추적 정보 삽입 -->
        </tbody>
        </table>
        <button class="update-button" onclick="updateDeliveryStatus()">배송 상태 업데이트</button>
        <button class="show-map-button" onclick="showMap()">현재 위치 보기</button>
        <div id="map-popup" style="display:none; position:fixed; top:50%; left:50%; transform:translate(-50%, -50%); width:400px; height:400px; background:white; border:1px solid black; z-index:1000;">
        <div id="map" style="width:100%; height:100%;"></div>
        <button onclick="closeMap()">닫기</button>
    </div>
    </div>
    
		<div class="product-info">
			<h2>제품 정보</h2>
			<table>
				<thead>
					<tr>
						<th>제품번호</th>
						<th>주문 개수</th>
						<th>총 단가</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${board.p_no}</td>
						<td>${board.o_num}</td>
						<td>${board.o_Total}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="payment-info">
			<h2>결제 정보</h2>
			<table>
				<tbody>
					<tr>
						<th>결제 수단</th>
						<td>카드</td>
					</tr>
					<tr>
						<th>결제 금액</th>
						<td>${board.o_Total}원</td>
					</tr>
					<tr>
						<th>결제 일자</th>
						<td>${board.o_date.year + 1900}-${board.o_date.month + 1}-${board.o_date.date}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<a href="/boards/ss?o_no=${board.o_no}&p_no=${board.p_no}">거래명세표</a>
		<button class="review-button" onclick="writeReview()">리뷰 작성</button>
	</div>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="/resources/js/project3_footer_components.js" defer></script>
      <script>
      
      //가져온 송장 번호
      var d_no = ${userD_no} 
      // 배송 출발 여부를 저장하는 변수
      var deliveryStarted = false; 
      // 배송 도착 여부를 저장하는 변수
      var deliveryCom = false; 
      
      //실시간 위치 조회를 위한 맵과 마커 변수를 전역 변수로 선언
      var map; 
      var marker; 
      
      function printPage() {
         window.print();
      }
  
      //배송 추적 상황 업데이트 
      function updateDeliveryStatus() {
    	    console.log("Sending data to server: ", { d_no: d_no }); // 콘솔 로그 추가
    	    $.ajax({
    	        type: "POST",
    	        url: "/UserTrac",
    	        data: JSON.stringify({ d_no: d_no }),
    	        contentType: 'application/json; charset=utf-8',
    	        dataType: 'json', // 데이터 타입을 JSON으로 설정
    	        success: function(response) {
    	            console.log("Delivery started");
    	            updateTable(response);
    	        },
    	        error: function(xhr, status, error) {
    	            console.error("Error starting delivery: " + error);
    	        }
    	    });
    	    alert("배송 상태가 업데이트되었습니다.");
    	}

    	function updateTable(data) {
    	    var tbody = $('div.delivery-info table tbody');
    	    tbody.empty(); 

    	    // 서버에서 받은 데이터 배열을 순회하면서 테이블 행을 추가
    	    data.forEach(function(usertrac) {
    	        var row = '';

    	        // 배송 상태에 따라 적절한 행을 추가
    	        if (usertrac == null) {
    	        	
    	        	alert("배송 준비중입니다.");
    	        } 	        
    	        if (usertrac.dep_time) {
    	            row = '<tr><td>' + usertrac.dep_time + '</td><td>배송 출발 하였습니다.</td></tr>';
    	            tbody.append(row);
    	            deliveryStarted = true; // 배송 출발로 상태 변경
    	        }
    	        if (usertrac.hub_arr) {
    	            row = '<tr><td>' + usertrac.hub_arr + '</td><td>' + usertrac.hub_name + '에 도착하였습니다.</td></tr>';
    	            tbody.append(row);
    	        }
    	        if (usertrac.hub_dep) {
    	            row = '<tr><td>' + usertrac.hub_dep + '</td><td>' + usertrac.hub_name + '에서 배송 출발 하였습니다.</td></tr>';
    	            tbody.append(row);
    	        }
    	        if (usertrac.del_comp) {
    	            row = '<tr><td>' + usertrac.del_comp + '</td><td>고객님께 물품을 전달하였습니다.</td></tr>';
    	            tbody.append(row);
    	            deliveryCom = true; //배송 도착 상태로 변경
    	        }
    	    });
    	}
    	
        function showMap() {
        	
            if (!deliveryStarted) {
                alert("배송 준비중입니다.");
                return;
            } else if (deliveryCom) {
            	alert("배송이 완료되었습니다.")
            	return;
            }
        	
            document.getElementById('map-popup').style.display = 'block';
            
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                mapOption = {
                    center: new kakao.maps.LatLng(35.541959171291644, 129.3382680496882), // 지도의 중심좌표
                    level: 3 // 지도의 확대 레벨
                };

            map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

            // 마커가 표시될 위치입니다 
            var markerPosition  = new kakao.maps.LatLng(35.541959171291644, 129.3382680496882); 

            // 마커를 생성합니다
            marker = new kakao.maps.Marker({
                position: markerPosition
            });

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);
            
            // 1초 마다 택배기사 위치를 업데이트
            setInterval(updateMarkerPosition, 1000);
        }
        
        //택배기사 위치 업데이트 함수 
        function updateMarkerPosition() {
            $.ajax({
                type: "POST",
                url: "/DeliGetLocation",
                data: JSON.stringify({ d_no: d_no }),
                contentType: 'application/json; charset=utf-8', 
                dataType: 'json',
                success: function(response) {
                    var newLat = response[0].x;
                    var newLng = response[0].y;
                    var newPosition = new kakao.maps.LatLng(newLat, newLng);

                    // 마커 위치를 업데이트
                    marker.setPosition(newPosition);
                    // 지도의 중심을 새로운 위치로 이동
                    map.setCenter(newPosition);
                },
                error: function(xhr, status, error) {
                    console.error("Error fetching location: " + error);
                }
            });
        }

        function closeMap() {
            document.getElementById('map-popup').style.display = 'none';
        }

   </script>
</body>
</html>
