<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

#Startbtt, #hubStartbtt {
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

.print-button:hover, .review-button:hover, .update-button:hover {
   background-color: #0056b3;
}
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=493ebc87b266e867e0070b251a25d928&libraries=services"></script>
</head>

<body>
  <div class="container">
      <h2>delivery info</h2>
      
         <table>
            <thead>
               <tr>
                  <th>송장 번호</th>
                  <th>수주 번호</th>
                  <th>주문자 ID</th>
                  <th>배달 목적지</th>
               </tr>
            </thead>
            
            <tbody>
               <c:forEach var="DELIinfo" items="${Delivery}">
                 <tr>
                  <td id="d_noValue">${DELIinfo.d_no}</td>
                  <td>${DELIinfo.o_no}</td>
                  <td>${DELIinfo.o_id}</td>
                  <td id="o_address">${DELIinfo.o_address}</td>
                 </tr>
               </c:forEach>
            </tbody>
         </table>
         
         <div id="map" style="width:800px;height:400px;"></div>
         <div id="notification" style="color: red; font-weight: bold;"></div>
         <button id="Startbtt" onclick="getCurrentLocation()">배송시작</button>
         <button id="hubStartbtt" onclick="Hubstart()" style="display: none;">배송시작</button>
         <p id="coordinates"></p>
  </div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
//가져온 송장 번호값을 쓰기위한 변수
var d_no = document.getElementById('d_noValue').textContent || document.getElementById('d_noValue').innerText;
var o_address = document.getElementById('o_address').textContent || document.getElementById('o_address').innerText;  


    var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
    var mapOption = {
        center: new kakao.maps.LatLng(35.54214650936864, 129.33813292732705), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

    //지도를 생성
    var map = new kakao.maps.Map(mapContainer, mapOption),
        customOverlay = new kakao.maps.CustomOverlay({}),
        infowindow = new kakao.maps.InfoWindow({removable: true});

    //다각형 폴리곤을 만들어주는 좌표를 담을 배열
    var areas = [
       {
           name: '공영HUB', //임의로 만든 허브(중간거점)위치
           path: [
                new kakao.maps.LatLng(35.541601944829665, 129.33729027758326),
                new kakao.maps.LatLng(35.54157102872942, 129.3374905767359),
                new kakao.maps.LatLng(35.54140222893703, 129.33748292011376),
                new kakao.maps.LatLng(35.54141582840343, 129.33724628922548)
           ]
       }
    ];
    
    // 지도에 영역데이터를 폴리곤으로 표시
    for (var i = 0, len = areas.length; i < len; i++) {
        displayArea(areas[i]);
    }

    // 다각형을 생성하고 이벤트를 등록하는 함수
    function displayArea(area) {
        // 다각형을 생성
            var polygon = new kakao.maps.Polygon({
            map: map, // 다각형을 표시할 지도 객체
            path: area.path, // 다각형을 그릴 경로
            strokeWeight: 2, // 선의 두께
            strokeColor: '#004c80', // 선의 색깔
            strokeOpacity: 0.8, // 선의 불투명도
            fillColor: '#fff', // 채우기 색깔
            fillOpacity: 0.7 // 채우기 불투명도
        });

        // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름을 인포윈도우에 표시
        kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
            var content = '<div class="info">' +
                '   <div class="title">' + area.name + '</div>' +
                '</div>';

            infowindow.setContent(content);
            infowindow.setPosition(mouseEvent.latLng);
            infowindow.setMap(map);
        });

        // 다각형 객체를 areas 배열에 추가하여 나중에 사용
        area.polygon = polygon;
    }

        
    // 도착지의 마커 이미지 설정
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png'; // 마커이미지의 주소    
    var imageSize = new kakao.maps.Size(50, 50); // 마커이미지의 크기
    var imageOption = {offset: new kakao.maps.Point(15, 50)}; // 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정

    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

    // 주소-좌표 변환 객체를 생성
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색 (주문자가 입력한 주소가 검색값으로 들어감)
    geocoder.addressSearch(o_address, function(result, status) {
        // 정상적으로 검색이 완료됐으면 
        if (status === kakao.maps.services.Status.OK) {
            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords,
                image: markerImage
            });

            // 인포윈도우로 장소에 대한 설명을 표시
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">'+ o_address +'</div>'
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동
            map.setCenter(coords);
            
            // 도착 마커를 중심으로 다각형 영역 생성
            createDestinationPolygon(coords);
        }
    });
    
    //주문자의 주소로 검색한 도착지 마커 좌표를 기준으로 "도착지점" 폴리곤 영역을 생성하는 함수
    function createDestinationPolygon(center) {
        var radius = 0.00010; // 반경 11.1미터에 해당하는 좌표 값 (약 11.1미터, 실제로는 더 정확하게 계산 가능)

        //도착지점의 다각형 좌표 
        var polygonPath = [
            new kakao.maps.LatLng(center.getLat() + radius, center.getLng() + radius),
            new kakao.maps.LatLng(center.getLat() + radius, center.getLng() - radius),
            new kakao.maps.LatLng(center.getLat() - radius, center.getLng() - radius),
            new kakao.maps.LatLng(center.getLat() - radius, center.getLng() + radius)
        ];

        //도착지점 다각형 생성
        var polygon = new kakao.maps.Polygon({
            map: map,
            path: polygonPath,
            strokeWeight: 2,
            strokeColor: '#FF0000',
            strokeOpacity: 0.8,
            fillColor: '#FF0000',
            fillOpacity: 0.35
        });

        // 생성된 다각형을 areas 배열에 추가
        areas.push({ name: '도착지점', path: polygonPath, polygon: polygon });
    }
    
    
    
    
    var watchID;
    
    // 배송 시작(허브도착전)
    function getCurrentLocation() {
        // 송장 번호를 서버로 전송하는 함수
        updateStartDelivery(d_no);
        
        // 실행되면 버튼을 배송시작 버튼을 숨김
        document.getElementById('Startbtt').style.display = 'none';
    
        // HTML5의 Geolocation API를 통해 현재 위치를 가져오기
        if (navigator.geolocation) {
            watchID = navigator.geolocation.watchPosition(function (position) {
                var lat = position.coords.latitude; // 위도
                var lon = position.coords.longitude; // 경도

                var locPosition = new kakao.maps.LatLng(lat, lon);

                // 현재 위치 마커 생성
                displayMarker(locPosition);

                // 지도 중심을 현재 위치로 이동
                map.setCenter(locPosition);

                // 함수 호출 현재 위치가 지정한 폴리곤 내에 있는지 확인
                checkMarkerPosition(lat, lon);
                // 함수 호출 배달GPS 테이블에 x,y 값을 보냄
                updateLocationToServer(lat, lon);
            }, function (error) {
                console.error("Error Code = " + error.code + " - " + error.message);
            }, {
                enableHighAccuracy: true,
                timeout: 5000,
                maximumAge: 0
            });
        } else {
            console.error("Geolocation is not supported by this browser.");
        }
    }
    
    // 허브에서 다시 출발 
    function Hubstart() {
        updateHubTime('none', 1);
        
        // HTML5의 Geolocation API를 통해 현재 위치를 가져오기
        if (navigator.geolocation) {
            watchID = navigator.geolocation.watchPosition(function (position) {
                var lat = position.coords.latitude; // 위도
                var lon = position.coords.longitude; // 경도

                var locPosition = new kakao.maps.LatLng(lat, lon);

                // 현재 위치 마커 생성
                displayMarker(locPosition);

                // 지도 중심을 현재 위치로 이동
                map.setCenter(locPosition);

                // 함수 호출 현재 위치가 지정한 폴리곤 내에 있는지 확인
                checkMarkerPosition(lat, lon);
                // 함수 호출 배달GPS 테이블에 x,y 값을 보냄(주문자가 위치를 볼 때 사용)
                updateLocationToServer(lat, lon);
            }, function (error) {
                console.error("Error Code = " + error.code + " - " + error.message);
            }, {
                enableHighAccuracy: true,
                timeout: 5000,
                maximumAge: 0
            });
        } else {
            console.error("Geolocation is not supported by this browser.");
        }
    }

    function displayMarker(locPosition) {
        // 기존 마커가 있으면 제거
        if (window.currentMarker) {
            window.currentMarker.setMap(null);
        }

        var marker = new kakao.maps.Marker({
            map: map,
            draggable: true, // 마커를 드래그 가능하도록 설정
            position: locPosition
        });

        window.currentMarker = marker;

        map.setCenter(locPosition);

        // 마커 드래그 이벤트 핸들러 등록
        kakao.maps.event.addListener(marker, 'dragend', function () {
            var lat = marker.getPosition().getLat();
            var lon = marker.getPosition().getLng();
            document.getElementById('coordinates').innerText = '위도: ' + lat + ', 경도: ' + lon;
            checkMarkerPosition(lat, lon);
            updateLocationToServer(lat, lon);
        });
    }

    //택배기사 전용 기능 
    function checkMarkerPosition(lat, lon) {
        var point = new kakao.maps.LatLng(lat, lon);
        var notification = document.getElementById('notification');
        notification.innerText = '운송중입니다';

        for (var i = 0; i < areas.length; i++) {
            var polygon = areas[i].polygon;

            if (isPointInPolygon(point, polygon)) { //마커가 맵의 폴리곤 영역에 있으면 작동
                notification.innerText = areas[i].name + '입니다.';
                
                if (areas[i].name === '공영HUB') {
                    // 허브에 도착한 경우
                    updateHubTime(areas[i].name, 0); //허브 도착시간을 기록
                    navigator.geolocation.clearWatch(watchID); //위치 추적을 종료
                    watchID = null;
                    console.log("Geolocation watch stopped");
                    break;
                }
                
                if (areas[i].name === '도착지점') {
                    // 배달목적지에 도착한 경우
                    updateDeliveryCompletion(d_no); //배송 완료시간을 기록
                    navigator.geolocation.clearWatch(watchID); //위치 추적을 종료
                    watchID = null;
                    console.log("Geolocation watch stopped");
                    break;
                }
            }
        }
    }

    // 현재 마커 위치가 폴리곤 영역 안에 있는지 없는지 확인하는 함수(범위 안을 스캔한다고 생각하면 편함)
    function isPointInPolygon(point, polygon) {
        var path = polygon.getPath();
        var inside = false;
        for (var i = 0, j = path.length - 1; i < path.length; j = i++) {
            var xi = path[i].getLng(), yi = path[i].getLat();
            var xj = path[j].getLng(), yj = path[j].getLat();

            var intersect = ((yi > point.getLat()) != (yj > point.getLat()))
                && (point.getLng() < (xj - xi) * (point.getLat() - yi) / (yj - yi) + xi);
            if (intersect) inside = !inside;
        }
        return inside;
    }

    // 송장 번호를 서버로 전송하고 배송출발 시간을 기록하는 함수 (택배추적 기능을 위함)
    function updateStartDelivery(d_no) {
        console.log("Sending data to server: ", { d_no: d_no }); // 콘솔 로그 추가
        $.ajax({
            type: "POST",
            url: "/Startdate",
            data: JSON.stringify({ d_no: d_no }),
            contentType: 'application/json; charset=utf-8',
            success: function(response) {
                console.log("Delivery started");
            },
            error: function(xhr, status, error) {
                console.error("Error starting delivery: " + error);
            }
        });
    }

    // 공용 테이블 배달GPS에 좌표값을 실시간으로 전달하는 함수 (주문자가 택배기사의 실시간 위치를 맵으로 보고싶을때 사용)
    function updateLocationToServer(lat, lon) {
        $.ajax({
            type: "POST",
            url: "/UserdeliMap", 
            data: JSON.stringify({ d_no: d_no, x: lat, y: lon }),
            contentType: 'application/json; charset=utf-8',
            success: function(response) {
                console.log("Location updated");
            },
            error: function(xhr, status, error) {
                console.error("Error updating location: " + error);
            }
        });
    }

    // 허브에 도착, 허브에서 출발 시간을 업데이트하는 함수
    function updateHubTime(hub_name, IFNUM) {
        if (IFNUM === 0) {
            // 실행되면 버튼을 (허브)배송시작 버튼을 보이게 바꿈
            document.getElementById('hubStartbtt').style.display = 'block';            
            $.ajax({
                type: "POST",
                url: "/UpdateHubArrivalTime",
                data: JSON.stringify({ d_no: d_no, hub_name: hub_name }),
                contentType: 'application/json; charset=utf-8',
                success: function(response) {
                    console.log("Hub arrival time updated");
                },
                error: function(xhr, status, error) {
                    console.error("Error updating hub arrival time: " + error);
                }
            });
        } else if (IFNUM === 1) {
            // 실행되면 버튼을 (허브)배송시작 버튼을 숨김
            document.getElementById('hubStartbtt').style.display = 'none';            
            $.ajax({
                type: "POST",
                url: "/UpdateHubStartTime",
                data: JSON.stringify({ d_no: d_no }),
                contentType: 'application/json; charset=utf-8',
                success: function(response) {
                    console.log("Hub start time updated");
                },
                error: function(xhr, status, error) {
                    console.error("Error updating hub start time: " + error);
                }
            });
        }
    }

    // 목적지에 도착, 추적 테이블에 배송 완료 시간을 기록하고 배달GPS 테이블에도 배송 완료를 기록
    function updateDeliveryCompletion(d_no) {
        $.ajax({
            type: "POST",
            url: "/DeliveryComTime",
            data: JSON.stringify({ d_no: d_no }),
            contentType: 'application/json; charset=utf-8',
            success: function(response) {
                console.log("Delivery completion time updated");
            },
            error: function(xhr, status, error) {
                console.error("Error updating delivery completion time: " + error);
            }
        });

        $.ajax({
            type: "POST",
            url: "/DeliveryCompletion",
            data: JSON.stringify({ d_no: d_no }),
            contentType: 'application/json; charset=utf-8',
            success: function(response) {
                console.log("Delivery completed");
            },
            error: function(xhr, status, error) {
                console.error("Error updating delivery completion: " + error);
            }
        });
    }
</script>
</body>
</html>