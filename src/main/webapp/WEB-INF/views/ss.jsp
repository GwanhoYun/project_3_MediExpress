<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래 명세서</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f7f7f7;
    }
    .print_area {  
        width: 80%;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #000;
        background-color: #fff;
    }
    .print_title {
        text-align: center;
        font-size: 24px;
        margin-bottom: 20px;
    }
    .company_info, .customer_info, .order_info {
        margin-bottom: 20px;
    }
    .company_info h4, .customer_info h4, .order_info h4 {
        margin: 0 0 5px 0;
        font-size: 18px;
    }
    .company_info p, .customer_info p, .order_info p {
        margin: 0 0 10px 0;
        font-size: 16px;
    }
    .product_table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    .product_table th, .product_table td {
        border: 1px solid #000;
        padding: 10px;
        text-align: left;
    }
    .product_table th {
        background-color: #f0f0f0;
    }
    .total_price {
        text-align: right;
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 20px;
    }
    .print_button {
        display: block;
        width: 100px;
        margin: 0 auto;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        cursor: pointer;
        text-align: center;
        font-size: 16px;
    }
    .print_button:hover {
        background-color: #0056b3;
    }
</style>
<script>
    function printPage() {
        window.print();
    }
</script>
</head>
<body>
    <div class="print_area">
        <h2 class="print_title">거래 명세서</h2>
        <div class="company_info">
            <h4>사업자 정보</h4>
            <p>사업자 등록번호: 14422-2252-10</p>
            <p>상호: 그린아카데미</p>
            <p>주소: 서울특별시 강남구 역삼동</p>
            <p>전화번호: 02-1234-5678</p>
        </div>
        <div class="customer_info">
            <h4>고객 정보</h4>
            <p>수주 번호: ${board.o_no}</p>
            <p>회원 아이디 :${loginUser.id} </p>
            <p>회원 이름: ${loginUser.name} </p>
        </div>
        <div class="order_info">
            <h4>주문 정보</h4>
            <p>제품 번호: ${board.p_no}</p>
            <p>주문 개수: ${board.o_num}</p>
            <p>총 단가: ${board.o_Total}원</p>
            <p>주문 일자: ${board.o_date.year + 1900}-${board.o_date.month + 1}-${board.o_date.date}</p>
        </div>
        <table class="product_table">
            <thead>
                <tr>
                    <th>제품 번호</th>
                    <th>주문 개수</th>
                    <th>총 단가</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${board.p_no}</td>
                    <td>${board.o_num}</td>
                    <td>${board.o_Total}원</td>
                </tr>
            </tbody>
        </table>
        <div class="total_price">
            총 결제 금액: ${board.o_Total}원
        </div>
        <button class="print_button" onclick="printPage()">인쇄</button>
    </div>
</body>
</html>
