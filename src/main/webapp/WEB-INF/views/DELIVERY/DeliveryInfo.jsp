<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>택배 시스템</title>
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

.strdeli-button {
   background-color: #007bff;
   color: white;
   border: none;
   padding: 10px 20px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 16px;
   cursor: pointer;
   border-radius: 5px;
}

.strdeli-button:hover {
   background-color: #0056b3;
}
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=40cc655b8725105eadd83e922c398a13&libraries=services"></script>
</head>
<body>
   <div class="container">
      <h1>Delivery Info</h1>
      <div class="product-info">
         <h2>배달 리스트</h2>
         <table>
            <thead>
               <tr>
                  <th>송장 번호</th>
                  <th>주문 번호</th>
                  <th>주문자ID</th>
                  <th>배달 주소</th>
                  <th>배송 상태</th>
               </tr>
            </thead>
            <tbody>
            <c:forEach var="DELIinfo" items="${DeliInfo}">
               <tr>
                  <td>${DELIinfo.d_no}</td>
                  <td>${DELIinfo.o_no}</td>
                  <td>${DELIinfo.o_id}</td>
                  <td>${DELIinfo.o_address}</td>
                  <td>
                  <c:choose>
                  <c:when test="${DELIinfo.d_complete == null}"><p style="color: red; font-weight: bold;">미승인</p></c:when>
                  <c:when test="${DELIinfo.d_complete == false}">
                     <form action="/DetailDeliInfo" method="get">
                        <input type="hidden" name="d_no" value="${DELIinfo.d_no}" />
                        <button class="strdeli-button" type="submit">배송 시작</button>
                     </form>
                  </c:when>
                  <c:when test="${DELIinfo.d_complete == true}"><p style="color: blue; font-weight: bold;">배송 완료</p></c:when>
                  </c:choose>
                 </td>
               </tr>
            </c:forEach>
            </tbody>
         </table>
      </div>

   </div>
      <script>

   </script>
</body>
</html>