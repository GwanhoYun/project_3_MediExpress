<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Medicine Products</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

    * {
	    padding: 0;
	    margin: 0;
	    box-sizing: border-box;
	    font-family: "Noto Sans KR", sans-serif;
    }

    .red-bg {
        color: red;
    }
    .warning {
        visibility: hidden;
    }
    
    main {
      width : 1440px;
      margin : 0 auto; 
    }
    
    .title{
      width : 90%;
      margin : 10px auto 30px auto; 
    }
    
    .title h2{
       color : red;
    }
    
    .products{
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      border : 1px solid #999;
    }
    
    #dataTable{
      border-collapse: collapse;
      border-spacing: 0;
      margin : 20px auto;
      width : 90%;
    }

    .date_type th{
      text-align : center;
      border-top : 1px solid #999;
      border-left : 1px solid #999;
      border-right : 1px solid #999;
      border-bottom : 2px solid #999;
      background-color : #eee;
      padding : 10px;
      width : auto;
    }
    
    tbody tr td{ 
      dispaly:block;
      text-align : center;
      border : 1px solid #999;
    }
    
    tbody tr td:nth-child(1){
      font-weight: bold;
      width : 60px;
      
    }
    
    tbody tr td:nth-child(2){
      text-align : left;
      width : 245px;
    }
    
    tbody tr td:nth-child(3){
      width : 100px;
    }
    
    tbody tr td:nth-child(4){
      width : 140px;
    }
    
    tbody tr td:nth-child(5){
      width : 120px;
    }
    
    tbody tr td:nth-child(5) p{
      width : 120px;
      display : block;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
    }
    
    tbody tr td:nth-child(6){
      width : 130px;
    }
    
    tbody tr td:nth-child(7){
      width : 60px;
    }
    
    tbody tr td:nth-child(7) button{
      width : 100%;
      height : 100%;
    }
    
    tbody tr td:nth-child(8){
      width : 440px;
    }
    tbody tr td input{
      width : 100%;
      height : auto;
    }
    
    .edit_btn_container{
      display : flex;
      justify-content: end;
      gap : 10px;
      width : 90%;
      margin : 10px auto;
    }
    
    .edit_btn_container button{
      width : 200px;
      height : 40px;
      font-size : 1.1em;
      border : none;
      border-radius : 5px;
      font-weight: bold;
    }
    
    .edit_btn_container button:nth-child(1){
      background-color : #7FBCF4;
      color : #fff
    }
    
    .edit_btn_container button:nth-child(1):hover{
      background-color : #2596fd;
    }
    
    .edit_btn_container button:nth-child(1):active{
      background-color : #5e9cd5;
    }
    
    .edit_btn_container button:nth-child(2){
      background-color : #f47f7f;
      color : #fff
    }
    
    .edit_btn_container button:nth-child(2):hover{
      background-color : #fb4343;
    }
    
    .edit_btn_container button:nth-child(2):active{
      background-color : #b74c4c;
    }
     
    
</style>
</head>
<body>
    <main>
      <div class="products">
	      <div class="title">
	        <h1>MediCode팀 물류 상태</h1>
	        <h2>*의료용품 코드 수정 불가</h2>
	      </div>
        <table id="dataTable">
            <thead>
                <tr class="date_type">
                    <th class="item_nmb">코드</th>
                    <th class="item_name">의료용품명</th>
                    <th class="total_stock">총 재고량</th>
                    <th class="manufactured_date">제조일자</th>
                    <th class="maker">제조 회사명</th>
                    <th class="buffer_stock">총 안전 재고량</th>
                    <th class="edit">수정</th>
                    <th class="note">비고</th>
                </tr> 
            </thead>
            <tbody>
                <c:forEach var="mediProduct" items="${mediProducts}">
                    <tr data-id="${mediProduct.mediNo}">
                        <td>${mediProduct.mediNo}</td>
                        <td>${mediProduct.mediName}</td>
                        <td class="${mediProduct.mediTotal < mediProduct.mediSafetyInven ? 'red-bg' : ''}">
                            ${mediProduct.mediTotal}
                        </td>
                        <td>${mediProduct.mediIndate.year + 1900}-${mediProduct.mediIndate.month + 1}-${mediProduct.mediIndate.date}</td>
                        <td><p>${mediProduct.mediCompany}</p></td>
                        <td>${mediProduct.mediSafetyInven}</td>
                        <td><button class="actionButton" onclick="editRow(this)" data-id="${mediProduct.mediNo}" data-name="${mediProduct.mediName}">수정</button></td>
                        <td class="${mediProduct.mediTotal >= mediProduct.mediSafetyInven ? 'warning' : ''}" style="color:red; font-size:12px">${mediProduct.mediName}의 안전 재고량 보다 총 재고량의 갯수가 작습니다.</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
      </div>
      <div class="edit_btn_container">
        <button id="add_button" onclick="addRow()">물건 추가</button>
        <button id="toggle_delete_mode_button" onclick="toggleDeleteMode()">삭제 모드로 전환</button>
        <!--<button id="add_button_save"onclick="saveChanges()">저장</button> -->
      </div>
    </main>

<script rel="javascript" type="text/javascript" src="/resources/js/medi_Product.js"></script>
</html>
