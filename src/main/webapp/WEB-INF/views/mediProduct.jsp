<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Medicine Products</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
<style>
    .red-bg {
        color: red;
    }
    .warning {
        visibility: hidden;
    }
</style>
</head>
<body>

    <h1>MediCode팀 물류 상태</h1>
    <h2 style='color:red'>의료용품 코드 수정 불가</h2>
    <table border="1" id="dataTable">
        <thead>
            <tr>
                <th>의료용품 코드</th>
                <th>의료용품 명</th>
                <th>총 재고량</th>
                <th>재조일자</th>
                <th>재조 회사명</th>
                <th>총 안전 재고량</th>
                <th>수정</th>
                <th>비고</th>
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
                    <td>${mediProduct.mediCompany}</td>
                    <td>${mediProduct.mediSafetyInven}</td>
                    <td><button class="actionButton" onclick="editRow(this)" data-id="${mediProduct.mediNo}" data-name="${mediProduct.mediName}">수정</button></td>
                    <td class="${mediProduct.mediTotal >= mediProduct.mediSafetyInven ? 'warning' : ''}" style="color:red; font-size:12px">${mediProduct.mediName}의 안전 재고량 보다 총 재고량의 갯수가 작습니다.</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <button id="add_button" onclick="addRow()">물건 추가</button>
    <button id="toggle_delete_mode_button" onclick="toggleDeleteMode()">삭제 모드로 전환</button>
    <!--<button id="add_button_save"onclick="saveChanges()">저장</button> -->

   <script>
   // 삭제 모드 토글
   function toggleDeleteMode() {
       const buttons = document.getElementsByClassName("actionButton");
       for (let i = 0; i < buttons.length; i++) {
           if (buttons[i].innerText === "수정") {
               buttons[i].innerText = "삭제";
               buttons[i].onclick = function() {
                   var mediNo = this.getAttribute("data-id");
                   var result = confirm("코드번호\""+mediNo+"\"번을 정말로 삭제 하시겠습니까?");
                   if(result){
                       $.ajax({
                           url: '/deleteMediProducts',
                           type: 'POST',
                           contentType: 'application/json',
                           data: JSON.stringify([{ mediNo: mediNo }]),
                           success: function(data) {
                               alert('삭제성공');
                               window.location.reload();
                           },
                           error: function(jqXHR, textStatus, errorThrown) {
                               alert('삭제 실패');
                               console.error('Error:', errorThrown,mediNo);
                           }
                       });
                   } else {
                       window.location.reload();
                   }
               };
           } else {
               buttons[i].innerText = "수정";
               buttons[i].onclick = function() {
                   editRow(this);
               };
           }
       }
   }

   // 행 추가
   function addRow() {
       const table = document.getElementById("dataTable").getElementsByTagName('tbody')[0];
       const newRow = table.insertRow();
       for (let i = 0; i < 6; i++) {
           const newCell = newRow.insertCell(i); //가로로 새로운 셀 생성 변수
           const input = document.createElement("input");//input 속성 부여
           input.type = i === 3 ? "date" : "text"; // 3번째 컬럼은 날짜 입력 필드로 설정
           newCell.appendChild(input);
       }
       const actionCell = newRow.insertCell(6);
       const saveButton = document.createElement("button");
       saveButton.textContent = "저장";
       saveButton.onclick = function() {
           saveNewRow(newRow);
       };
       actionCell.appendChild(saveButton);
   }

   // 수정 버튼 함수
   function editRow(button) {
    const row = button.parentNode.parentNode;
    const cells = row.getElementsByTagName('td');
    
    for (let i = 0; i < cells.length - 2; i++) {
        const cell = cells[i];
        const input = document.createElement('input');
        input.type = i === 3 ? 'date' : 'text';
        
        // 기존 값 설정
        if (i === 3) { // 날짜 필드
            const dateValue = new Date(cells[i].innerText);
            const year = dateValue.getFullYear();
            const month = String(dateValue.getMonth() + 1).padStart(2, '0');
            const day = String(dateValue.getDate()).padStart(2, '0');
            input.value = `${year}-${month}-${day}`;
        } else {
            input.value = cells[i].innerText;
        }

        cell.innerHTML = '';
        cell.appendChild(input);
    }
    button.textContent = '저장';
    button.onclick = function() {
        saveRow(row);
    };
}

     

   // 수정된 행 저장 함수
   function saveRow(row) {
       const cells = row.getElementsByTagName('td');
       const rowData = {
           mediNo: cells[0].getElementsByTagName('input')[0].value,
           mediName: cells[1].getElementsByTagName('input')[0].value,
           mediTotal: cells[2].getElementsByTagName('input')[0].value,
           mediIndate: cells[3].getElementsByTagName('input')[0].value,
           mediCompany: cells[4].getElementsByTagName('input')[0].value,
           mediSafetyInven: cells[5].getElementsByTagName('input')[0].value
       };

       console.log('Updating data:', rowData);

       $.ajax({
           url: '/updateMediProduct',
           type: 'POST', // PUT 대신 POST 사용
           contentType: 'application/json',
           data: JSON.stringify(rowData),
           success: function(data) {
               alert('수정 성공');
               window.location.reload();
           },
           error: function(jqXHR, textStatus, errorThrown) {
               alert('수정 실패');
               console.error('Error:', textStatus, errorThrown);
           }
       });
   }

   // 추가된 행 저장 함수
   function saveNewRow(row) {
       const cells = row.getElementsByTagName('td');
       const rowData = {
           mediNo: cells[0].getElementsByTagName('input')[0].value,
           mediName: cells[1].getElementsByTagName('input')[0].value,
           mediTotal: cells[2].getElementsByTagName('input')[0].value,
           mediIndate: cells[3].getElementsByTagName('input')[0].value,
           mediCompany: cells[4].getElementsByTagName('input')[0].value,
           mediSafetyInven: cells[5].getElementsByTagName('input')[0].value
       };

       console.log('Saving new data:', rowData);

       $.ajax({
           url: '/saveMediProducts',
           type: 'POST',
           contentType: 'application/json',
           data: JSON.stringify([rowData]),
           success: function(data) {
               alert('저장 성공');
               window.location.reload();
           },
           error: function(jqXHR, textStatus, errorThrown) {
               alert('저장 실패');
               console.error('Error:', errorThrown);
           }
       });
   }
   </script>
</body>
</html>
